import React from 'react';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            fullname: '',
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
            const demo = {email: "demouser@gmail.com", password: "noneed"};
            (this.props.formType === 'Log In' ? 
            this.props.processForm(demo) : this.props.login(demo))
                .then(this.props.closeModal);
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
        let fullnameField;
        if (this.props.formType === 'Sign Up') {
            fullnameField = (
                <div>
                    <label className="session-form-label">Full Name
                        <input type="text"
                                value={this.state.fullname}
                                onChange={this.update('fullname')}
                        />
                    </label>
                </div>
            )
        } else {
            fullnameField = <div></div>
        }
        return (
            <div className="session-form-container">
                <button className="session-close" onClick={this.props.closeModal}>&amp;times</button>
                    {this.renderErrors()}
                    <form className="session-form" onSubmit={this.handleSubmit()}>
                                    <label className="session-form-lbl">Email:
                                            <input type="text"
                                                    value={this.state.email}
                                                    onChange={this.update('email')}
                                            
                                            />
                                    </label>

                                    <label className="session-form-lbl">Password:
                                        <input type="password"
                                                value={this.state.password}
                                                onChange={this.update('password')}
                                        />
                                    </label>

                                    <input className="session-submit" type="submit" value={this.props.formType} />
                                
                    </form>
                    <button className="demo-button" onClick={this.demoLogin()}>Demo Login</button>
                    <footer className="session-footer">
                        {this.props.footer}
                        {this.props.otherForm}
                    </footer>
            </div>
        );
    }
}

export default SessionForm;