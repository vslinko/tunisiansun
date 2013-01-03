if Meteor.isClient
    Template.popularProducts.items = ->
        Items.find({}, {sort: {sold: -1}}).fetch().slice(0, 4)
