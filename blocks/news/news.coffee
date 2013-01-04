if Meteor.isClient
    Template.news.news = ->
        News.find({}, {sort: {date: -1}}).fetch().slice(0, 3)
