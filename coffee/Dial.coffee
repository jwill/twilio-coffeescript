include("twilio/Verb")
include("twilio/VerbConstants")

class Dial extends Verb
  constructor: (number) ->
    v = new VerbConstants()
    super(v.DIAL, number) if number isnt undefined
    super(v.DIAL, null) if number is undefined
    @allowedVerbs = [ ]
    @allowedVerbs.push(v.NUMBER)
    @allowedVerbs.push(v.CONFERENCE)
    
  setMethod: (method) ->
    @setAttribute("method", method)
    
  setAction: (url) ->
    @setAttribute("action", url)
    
  setTimeout: (i) ->
    @setAttribute("timeout", ""+i)
    
  setHangupOnStar: (f) ->
    @setAttribute("hangupOnStar", new String(f)) 
      
  setTimeLimit: (i) ->
    @setAttribute("timeLimit", new String(i))
    
  setCallerid: (callerid) ->
    @setAttribute("callerId", callerid)
    
exports.Dial = Dial