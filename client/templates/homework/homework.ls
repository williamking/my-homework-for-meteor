Template.homework-list.helpers {
    homework: ->
        user = Meteor.user!
        if user.identity == 'teacher'
            return Homework.find {teacher-id: user._id}
        else
            return Homework.find!
}

Template.homework-page.helpers {
}

Template.homework-list.events {
}

