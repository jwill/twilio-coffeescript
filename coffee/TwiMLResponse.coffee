class TwiMLResponse extends Verb
  constructor: ->
    super(V_RESPONSE, null)
    @allowedVerbs = new Set()
    @allowedVerbs.add(V_GATHER)
    @allowedVerbs.add(V_RECORD)
    @allowedVerbs.add(V_DIAL)
    @allowedVerbs.add(V_SAY)
    @allowedVerbs.add(V_PLAY)
    @allowedVerbs.add(V_REDIRECT)
    @allowedVerbs.add(V_REJECT)
    @allowedVerbs.add(V_HANGUP)
    @allowedVerbs.add(V_SMS)
    
exports.TwiMLResponse = TwiMLResponse