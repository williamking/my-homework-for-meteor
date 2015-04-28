Template.content-page.helpers {
    author: ->
        content-id = Session.get 'contentId'
        content = Content.find-one {_id: content-id}
        author-id = content.author-id
        return Meteor.users.find-one {_id: author-id}.username

    content: ->
        content-id = Session.get 'contentId'
        content = Content.find-one {_id: content-id}
        return content.content
}

Template.content-page.events {
    'submit form#edit': (e)->
        e.prevent-default!

        content-id = Session.get 'contentId'

        post = {
            content : $(e.target).find '[name=content]' .val!
        }

        Content.update content-id, {$set: post}, (error)->
            if error
                alert(error.reason)


    'submit form#enscore': (e)->
        e.prevent-default!

        content-id = Session.get 'content-id'

        post =
            score: $(e.target).find '[name=score]' .val!

        Content.update content-id, {$set: post}, (error)->
            if error
                alert(error.reason)

}