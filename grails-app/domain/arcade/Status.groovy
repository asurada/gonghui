package arcade

import arcade.access.User

class Status {

    String content
    Date createDate
    User user

    static constraints = {
        content(blank:false, nullable:false, length:2..400)
        createDate(nullable:false)
        user(nullable:false)
    }
}
