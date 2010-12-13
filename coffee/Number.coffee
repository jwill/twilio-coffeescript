include("twilio/Verb")
include("twilio/VerbConstants")

class Number extends Verb
  constructor: (number) ->
    v = new VerbConstants()
    super(v.NUMBER, number)
    @allowedVerbs = null
    
  setSendDigits: (digits) ->
    @setAttribute("sendDigits", digits)
    
  setUrl: (url) ->
    @setAttribute("url", url)
    
exports.Number = Number