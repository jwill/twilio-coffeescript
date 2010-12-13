include("twilio/Verb")
include("twilio/VerbConstants")

class Gather extends Verb
  constructor: ->
    v = new VerbConstants()
    super(v.GATHER, null)
    @allowedVerbs = [ ]
    @allowedVerbs.push(v.SAY)
    @allowedVerbs.push (v.PLAY)
    @allowedVerbs.push (v.PAUSE)
    
  setMethod: (method) ->
    @setAttribute("method", method)
    
  setAction: (url) ->
    @setAttribute("action", url)
    
  setTimeout: (i) ->
    @setAttribute("timeout", new String(i))
	
    
  setFinishOnKey: (key) ->
    @setAttribute("finishOnKey", key)
    
  set: (i) ->
    @setAttribute("numDigits", new String(i))
    
exports.Gather = Gather