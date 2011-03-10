package arcade.access

class UserController {

    static allowedMethods = [
        login:['GET', 'POST']
    ]

    def scaffold = true

    /**
     * Process using login requests.
     */
    def login = {
        // handle login request
        log.debug params['email']
        log.debug params['password']
        def user = User.findByEmailAndPassword(params['email'], params['password'])
        if(user) {
            log.debug "login: " + user.email
            session['user'] = user
            redirect(controller:'home', action:'index')
        } else {
            render('登录失败请重试')
        }
    }

    def loginForm = {
        // show login form
        render(view:'loginForm')
    }

    def logout = {
        session.invalidate()
        redirect(action:'loginForm')
    }
   
}
