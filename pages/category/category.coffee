if Meteor.isClient
    Meteor.Router.add "/categories/:slug", (slug) ->
        Template.categoryPage.category = category = Categories.findOne {slug: slug}
        Template.categoryPage.items = Items.find {category: category._id}
        "categoryPage"
