Categories = new Meteor.Collection "categories"
Items = new Meteor.Collection "items"

if Meteor.isServer
    if Categories.find().count() == 0
        Categories.insert
            slug: "cosmetics"
            name: "Косметика"

    if Items.find().count() == 0
        category = Categories.findOne()
        description = "Lorem ipsum dolor sit amet, consectetur adipisicing elit.
            Itaque rem quos iusto laudantium reprehenderit modi enim at deserunt
            rerum dolor officiis sit aliquid tempora minima inventore pariatur
            praesentium qui fugiat."

        Items.insert
            slug: "soap"
            name: "Мыло для проблемной кожи"
            price: 550
            image: "http://lorempixel.com/160/95/nature/1/"
            category: category._id
            description: description
            sold: 0

        Items.insert
            slug: "mask"
            name: "Маска Peau Grasse"
            price: 850
            image: "http://lorempixel.com/160/95/nature/2/"
            category: category._id
            description: description
            sold: 1

        Items.insert
            slug: "oil"
            name: "Масло Huile De massage Amincissante"
            price: 720
            image: "http://lorempixel.com/160/95/nature/3/"
            category: category._id
            description: description
            sold: 2

        Items.insert
            slug: "creme"
            name: "Creme anti Rides на основе водорослей"
            price: 1200
            image: "http://lorempixel.com/160/95/nature/4/"
            category: category._id
            description: description
            sold: 3

        Items.insert
            slug: "sachets"
            name: "Пакетики для ванны"
            price: 250
            image: "http://lorempixel.com/160/95/nature/5/"
            category: category._id
            description: description
            sold: 4

        Items.insert
            slug: "salt"
            name: "Соль для ванн Лаванда"
            price: 990
            image: "http://lorempixel.com/160/95/nature/6/"
            category: category._id
            description: description
            sold: 5
