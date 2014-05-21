if (Meteor.isClient)
    Template.hello.greeting = -> "Welcome to peakbagger."
    
    Template.hello.events(
        'click input' : ->
            if console?
                console.log("You pressed the button")
    )

    Template.your_hikes.greeting = -> "this other greeding."
    Template.your_hikes.hikes = -> 
        if Meteor.user()
            ['hike a', 'hike b', 'hike c!']

if (Meteor.isServer)
    # code to run on server at startup
    Meteor.startup( -> null
    )
