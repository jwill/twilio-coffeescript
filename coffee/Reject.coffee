include("twilio/Verb")
include("twilio/VerbConstants")

class Reject extends Verb
  constructor: ->
    v = new VerbConstants()
    super(v.REJECT, null)
    
  setReason: (reason) ->
    @setAttribute("reason", reason)
    
exports.Reject = Reject