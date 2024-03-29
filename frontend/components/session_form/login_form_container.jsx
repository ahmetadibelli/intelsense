import React from 'react';
import { connect } from 'react-redux';
import { openModal, closeModal } from '../../actions/modal_actions';
import { login } from '../../actions/sessions_actions';
import SessionForm from './session_form';

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.sessions,
    formType: 'Log in',
    formHeading: "Welcome back.",
    formDescription: "Sign in to get personalized story recommendations, follow authors and topics you love, and interact with stories.",
    formFooter: "No account?",
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: (user) => dispatch(login(user)),
    otherForm: (
      <button className="small-footer-link" onClick={() => dispatch(openModal('Sign up'))}>
        Create one
      </button>
    ),
    closeModal: () => dispatch(closeModal()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
