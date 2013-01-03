if Meteor.isClient
    Meteor.Router.add
        "/": "main-page"
        "/category": "category-page"
        "/item": "item-page"
