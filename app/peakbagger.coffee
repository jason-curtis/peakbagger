if (Meteor.isClient)
    Template.hello.greeting = -> "Welcome to peakbagger."
    
    Template.hello.events(
        'click input' : ->
            if console?
                console.log("You pressed the button")
    )

if (Meteor.isServer)
    # code to run on server at startup
    Meteor.startup( -> null
    )
