#RingoJS/CommonJS require
httpclient = require "ringo/httpclient"

class TwilioRestClient
    constructor: (accountSid, authToken, endpoint) ->
        @accountSid = accountSid
        @authToken = authToken
        @endpoint = "https://api.twilio.com/2010-04-01/Accounts/#{@accountSid}"
 
    
    request: (path, method, vars) ->
        try 
            response = httpclient.request({
                method: method,
                username: @accountSid,
                password: @authToken,
                data: vars
                url: @endpoint + path + ".json"
            })
        catch error
            print error
            #   catch error
            # do something with the error
      
exports.TwilioRestClient = TwilioRestClient  