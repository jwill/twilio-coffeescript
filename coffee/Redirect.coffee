include("twilio/Verb")
include("twilio/VerbConstants")

class Redirect extends Verb
  constructor: (url) ->
    v = new VerbConstants()
    super(v.REDIRECT, url)
    @allowedVerbs = null
    
  setMethod: (method) ->
    @setAttribute("method", method)
    
exports.Redirect = Redirect
    
  