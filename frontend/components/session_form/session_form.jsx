import React from 'react';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            email: '',
            password: '',
        };
        this.handleSubmit = this.handleSubmit.bind(this);
        this.demoLogin= this.demoLogin.bind(this);
        
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    demoLogin() {
        return (e) => {
            e.preventDefault();
            // const demo = {user: {username: 'demouser', email: "demouser@gmail.com", password: "noneed"}};
            if (this.props.formType === 'Log In') 
                {this.props.processForm(demo) 
                    .then(this.props.closeModal)
                }

            } 
    }
    


    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user)
        .then(this.props.closeModal);
    }

    renderErrors() {
        const errors = this.props.errors.map((error, idx) => (
            <li key={`error-${idx}`}>
                {error}
            </li>
        ));
        return (
            <div>
                <ul className="session-errors">
                    {errors}
                </ul>
            </div>
        )
    }

    render() {
        let usernameField;
        if (this.props.formType === 'Sign Up') {
            usernameField = (
                <div>
                    <label className="session-form-lbl">Username
                        <input type="text"
                                value={this.state.username}
                                onChange={this.update('username')}
                        />
                    </label>
                </div>
            )
        } else {
            usernameField = <div></div>
        }
        //  debugger
        return (
            <div className="session-form-container">
                <button className="session-close" onClick={this.props.closeModal}>X</button>
                    {this.renderErrors()}
                    <form className="session-form" onSubmit={this.handleSubmit}>
                        {
                            this.props.formType === 'Sign Up' && 
                                    <label className="session-form-lbl">Email
                                            <input type="text"
                                                    value={this.state.email}
                                                    onChange={this.update('email')}
                                            
                                            />
                                    </label>
                        }

                                    <label className="session-form-lbl">Username
                                                            <input type="text"
                                            value={this.state.username}
                                            onChange={this.update('username')}

                                        />
                                    </label>

                                    <label className="session-form-lbl">Password
                                        <input type="password"
                                                value={this.state.password}
                                                onChange={this.update('password')}
                                        />
                                    </label>

                                    <input className="session-submit" type="submit" value={this.props.formType} />
                                
                    </form>
                    {/* <button className="demo-button" onClick={this.demoLogin}>Demo Login</button> */}
                    <footer className="session-footer">
                        {this.props.footer}
                        {this.props.otherForm}
                    </footer>
            </div>
        );
    }
}

export default SessionForm;