include("twilio/Verb")
include("twilio/VerbConstants")

class Play extends Verb
  constructor: (body) ->
    v = new VerbConstants()
    super(v.PLAY, null)
    @allowedVerbs = null
    
  setLoop: (i) ->
    @setAttribute("loop", new String(i))
    
exports.Play = Play