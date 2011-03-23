import arcade.access.User

class BootStrap {

    def init = { servletContext ->
        new User(email:"test@test.com", password:"111111", createDate:new Date(), nickname:'玛丽奥').save()
        new User(email:"test1@test.com", password:"111111", createDate:new Date(), nickname:'一片葉子').save()
        new User(email:"test2@test.com", password:"111111", createDate:new Date(), nickname:'Britney Spears').save()
        new User(email:"test3@test.com", password:"111111", createDate:new Date(), nickname:'大天使').save()
        new User(email:"test4@test.com", password:"111111", createDate:new Date(), nickname:'魔鬼管家').save()
        new User(email:"test5@test.com", password:"111111", createDate:new Date(), nickname:'小踢').save()
        new User(email:"test6@test.com", password:"111111", createDate:new Date(), nickname:'史蒂夫').save()
        new User(email:"test7@test.com", password:"111111", createDate:new Date(), nickname:'微老板').save()
        new User(email:"test8@test.com", password:"111111", createDate:new Date(), nickname:'无名').save()
        new User(email:"test9@test.com", password:"111111", createDate:new Date(), nickname:'n0n0').save()
        new User(email:"test10@test.com", password:"111111", createDate:new Date(), nickname:'87879900').save()
    }
    def destroy = {
    }
}
