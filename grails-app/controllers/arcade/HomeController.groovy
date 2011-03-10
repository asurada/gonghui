package arcade

import arcade.access.User

class HomeController {

    static allowedMethods = [
        login:['POST'],
        index:['GET']
    ]

    def index = {
        def sessionUser = session['user']
        if(sessionUser) {
            log.debug sessionUser
            render(view:'index', model:[user:sessionUser])
        } else {
            redirect(controller:'user', action:'loginForm')
        }
    }
}
