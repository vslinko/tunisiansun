if Meteor.isClient
    Template.cart.count = ->
        cart = Meteor.BrowserStore.get("cart") || {}

        count = 0
        _(cart).forEach (itemCount) ->
            count += itemCount
        
        "#{count} " + russianPlural count, "наименование", "наименования", "наименований"
