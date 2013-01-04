if Meteor.isClient
    Handlebars.registerHelper "dateFormat", (time) ->
        leadZero = (n) ->
            if n < 10
                "0#{n}"
            else
                String n

        date = new Date time
        day = leadZero date.getDate()
        month = leadZero date.getMonth() + 1
        year = leadZero date.getYear() + 1900

        "#{day}.#{month}.#{year}"
