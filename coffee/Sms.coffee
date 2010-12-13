include("twilio/Verb")
include("twilio/VerbConstants")

class Sms extends Verb
  constructor: (message) ->
    v = new VerbConstants()
    super(v.SMS, message)
    @allowedVerbs = undefined
    
  setTo: (str) ->
    @setAttribute("to", str)
    
  setFrom: (str) ->
    @setAttribute("from", str)
    
  setMethod: (method) ->
    @setAttribute("method", method)
    
  setAction: (url) ->
    @setAttribute("action", url)
    
  setStatusCallback: (url) ->
    @setAttribute("statusCallback", url)
    
exports.Sms = Sms