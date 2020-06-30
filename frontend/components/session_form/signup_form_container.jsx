import { connect } from 'react-redux';
import React from 'react';
import { signup } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions'
import SessionForm from './session_form';

const mapStateToProps = ({ errors }) => {
    
    return {
        errors: errors.session,
        formType: 'Sign Up',
        header: <h2 className="header-session">Join Intelsense</h2>,
        footer: <p>Already have an account?</p>,
    };
};

const mapDispatchToProps = dispatch => {
    return {
        processForm: (user) => dispatch(signup(user)),
        otherForm: (
            <button className="small-footer-btn" onClick={() => dispatch(openModal('Log In'))}>Log In</button>
        ),
        closeModal: () => dispatch(closeModal()),
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);