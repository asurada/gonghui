

<%@ page import="arcade.Status" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'status.label', default: 'Status')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${statusInstance}">
            <div class="errors">
                <g:renderErrors bean="${statusInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="createDate"><g:message code="status.createDate.label" default="Create Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: statusInstance, field: 'createDate', 'errors')}">
                                    <g:datePicker name="createDate" precision="day" value="${statusInstance?.createDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="content"><g:message code="status.content.label" default="Content" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: statusInstance, field: 'content', 'errors')}">
                                    <g:textField name="content" value="${statusInstance?.content}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="user"><g:message code="status.user.label" default="User" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: statusInstance, field: 'user', 'errors')}">
                                    <g:select name="user.id" from="${arcade.access.User.list()}" optionKey="id" value="${statusInstance?.user?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
