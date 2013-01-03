if Meteor.isClient
    Meteor.Router.add "/items/:slug", (slug) ->
        Session.set "item", Items.findOne {slug: slug}
        "itemPage"

    Template.itemPage.item = ->
        Session.get "item"
