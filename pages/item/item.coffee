if Meteor.isClient
    Meteor.Router.add "/items/:slug", (slug) ->
        Session.set "item", Items.findOne {slug: slug}
        "itemPage"

    Template.itemPage.item = ->
        Session.get "item"

    Template.itemPage.events
        "click [data-action=addToCart]": (event) ->
            id = event.target.attributes['data-id'].value
            cart = Meteor.BrowserStore.get("cart") || {}

            if cart[id]
                cart[id]++
            else
                cart[id] = 1

            Meteor.BrowserStore.set "cart", cart
