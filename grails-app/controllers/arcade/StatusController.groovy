package arcade

import grails.converters.*
import arcade.access.User

class StatusController {

    static allowedMethods = [
    ]

    def list = {
        def user = session['user']
        if(user) {
            if(params['max'] == null)
                params['max'] = 10
            def result = Status.findAllByUser(user, [sort:'createDate', order:'desc', max: params['max']])
            if('json' == params['format']) {
                render result as JSON
            } else {
                render result as XML
            }
        } else {
            render(status:401, text:'请先登录')
        }
    }

    def create = {
        def sessionUser = session['user']
        if(sessionUser) {
            def user = User.get(sessionUser.id)
            user.addToStatus(
                content: params['content'],
                createDate: new Date())
            render('ok')
        } else {
            render(status:401, text:'请先登录')
        }
    }
}
