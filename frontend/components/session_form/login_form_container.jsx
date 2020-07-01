import { connect } from 'react-redux';
import React from 'react';
import { login } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions'
import SessionForm from './session_form';

const mapStateToProps = ({ errors }) => {
    // debugger
    return {
        
        errors: errors.session,
        formType: 'Log In',
        header: <h2 className="header-session">Welcome Back</h2>,
        // description: <p className="header-description">Sign in to get personalized story recommendations, follow authors and topics you love, and interact with stories.</p>,
        footer: <p>No Account?</p>,
    };
};

const mapDispatchToProps = dispatch => {
    // debugger
    return {
        processForm: (user) => dispatch(login(user)),
        otherForm: (
            <button className="small-footer-btn" onClick={() => dispatch(openModal('Sign Up'))}>Create One</button>
        ),
        closeModal: () => dispatch(closeModal()),
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);