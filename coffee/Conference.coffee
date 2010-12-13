include("twilio/Verb")
include("twilio/VerbConstants")

class Conference extends Verb
  constructor: (name) ->
    @name = name
    v = new VerbConstants()
    super(v.CONFERENCE, name)
    @allowedVerbs = null
	
  setBoolean: (attr, bool) ->
    @set(attr, ""+bool)
    
  setMuted: (bool) ->
    @setBoolean("muted", bool)
    
  setBeep: (bool) ->
    @setBoolean("beep", bool)
    
  setStartConferenceOnEnter: (bool) ->
    @setBoolean("endConferenceOnEnter", bool)

  setStartConferenceOnExit: (bool) ->
    @setBoolean("endConferenceOnExit", bool)
    
  setWaitMethod: (method) ->
    @set("waitMethod", method)
    
  setWaitUrl: (url) ->
    @set("waitUrl", url)
    
exports.Conference = Conference