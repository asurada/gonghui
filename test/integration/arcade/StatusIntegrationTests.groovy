package arcade

import grails.test.*
import arcade.access.User

class StatusIntegrationTests extends GroovyTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testSomething() {
        def user = new User(email:"t@test.com", password:"111111", createDate:new Date(), nickname:'ttt').save()
        user.addToStatus(content: 'message 1', createDate: new Date())

        user = User.findByEmail('t@test.com')
        assertEquals 1, User.get(user.id).status.size()
    }
}
