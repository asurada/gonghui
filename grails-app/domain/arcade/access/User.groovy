package arcade.access

/**
 * User model.
 */
class User {

    String email
    String password
    String nickname
    Date createDate

    static constraints = {
        email(email:true, blank:false, nullable:false, unique:true)
        password(blank:false, nullable:false, length:6..20)
        nickname(blank:false, nullable:false, length:2..20, unique:true)
        createDate(nullable:false)
    }
}
