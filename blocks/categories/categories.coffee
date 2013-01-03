if Meteor.isClient
    Template.categories.categories = Categories.find()
    
    Template.categories.active = (slug) ->
        if document.location.pathname == "/categories/#{slug}"
            " class=active"
        else
            ""
