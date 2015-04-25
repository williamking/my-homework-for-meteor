Router.configure {
    layoutTemplate: 'main',
    loadingTemplate: 'loading',
    waitOn: ->
        Meteor.subscribe 'Homeworks'
        return Meteor.subscribe 'Contents'
}

Router.route '/', {name: 'homeworkList'}

Router.route '/register', {name: 'register'}

Router.route '/homework/:id', {name: 'homework-page', homework: -> homework.find-one this.params.id }

Router.route '/content/:id', {name: 'content-page', content: -> contents.find-one this.params.id}

require-login = !->
    console.log 'hehe'
    if not Meteor.user-id()
        this.render 'login'
        console.log 'hehe'
    else
        this.next!

Router.on-before-action require-login, {only: 'homeworkList', 'content-page', 'homework-page'}

