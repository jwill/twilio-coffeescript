include("twilio/Verb")
include("twilio/VerbConstants")

class Hangup extends Verb
  constructor: ->
    v = new VerbConstants()
    super(v.HANGUP, null)
    @allowedVerbs = null
    
exports.Hangup = Hangup