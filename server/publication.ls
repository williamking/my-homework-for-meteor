Meteor.publish 'Homeworks', -> Homework.find!

Meteor.publish 'Contents', -> Content.find!

# Meteor.publish 'userData', ->
#     if this.user-id
#         Meteor.users.find {_id: this.user-id}, {fields: {'identity' : 1}}
#     else
#         this.ready!

# Accounts.on-create-user (options, user)->
#     console.log options.identity
#     if (options.identity)
#         user.identity = options.identity