include("twilio/Verb")
include("twilio/VerbConstants")

class Say extends Verb
  constructor: (body) ->
    v = new VerbConstants()
    super(v.SAY, body)
    @allowedVerbs = null
    
  setLoop: (i) ->
    @setAttribute("loop", new String(i))
    
  setLanguage: (str) ->
    @setAttribute("language", str)
    
  setVoice: (str) ->
    @setAttribute("voice", str)
    
exports.Say = Say