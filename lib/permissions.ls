root = exports ? @

root.owns-document = (user-id, doc)->
    doc and doc.user-id is user-id
