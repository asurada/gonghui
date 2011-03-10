import arcade.access.User

class BootStrap {

    def init = { servletContext ->
        def user = new User(email:"test@test.com", password:"111111", createDate:new Date(), nickname:'玛丽奥')
        if(!user.save())
            System.err.println("Can't create user.");
    }
    def destroy = {
    }
}
