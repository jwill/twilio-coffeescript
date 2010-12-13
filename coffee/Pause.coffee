include("twilio/Verb")
include("twilio/VerbConstants")

class Pause extends Verb

  constructor: ->
    v = new VerbConstants()
    super(v.PAUSE, null)
    @allowedVerbs = null
    
  setLength: (i) ->
    @setAttribute("length", new String(i))
    
exports.Pause = Pause