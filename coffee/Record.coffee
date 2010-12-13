include("twilio/Verb")
include("twilio/VerbConstants")

class Record extends Verb
  constructor: ->
    v = new VerbConstants()
    super(v.RECORD, null)
    @allowedVerbs = null
    
  setMethod: (method) ->
    @setAttribute("method", method)
    
  setAction: (url) ->
    @setAttribute("action", url)
    
  setTimeout: (i) ->
    @setAttribute("timeout", new String(i))
    
  setFinishOnKey: (key) ->
    @setAttribute("finishOnKey", key)
    
  setMaxLength: (i) ->
    @setAttribute("maxLength", new String(i))
    
  setTranscribe: (f) ->
    @setAttribute("transcribe", new String(f))
    
  setTranscribeCallback: (url) ->
    @setAttribute("transcribeCallback", url)
    
exports.Record = Record