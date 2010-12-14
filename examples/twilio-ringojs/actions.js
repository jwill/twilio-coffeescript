var twilio = require("twilio/TwilioRestClient")
var {Response} = require('ringo/webapp/response');

// Requires for Verbs
var {Verb} = require("twilio/Verb");
var {Conference} = require("twilio/Conference");
var {Dial} = require("twilio/Dial");
var {Gather} = require("twilio/Gather");
var {Hangup} = require("twilio/Hangup");
var num = require("twilio/Number");
var {Pause} = require("twilio/Pause");
var {Play} = require("twilio/Play");
var {Record} = require("twilio/Record");
var {Redirect} = require("twilio/Redirect");
var {Reject} = require("twilio/Reject");
var {Say} = require("twilio/Say");
var {Sms} = require("twilio/Sms");


exports.index = function (req) {
    return Response.skin(module.resolve('skins/index.html'), {
        title: "Twilio with RingoJS and CoffeeScript"
    });
};

exports.makeCall = function(req) {
  print(req.isPOST);
  var number = req.postParams.phone;
  var client = new twilio.TwilioRestClient(
    "<accountSid>", 
    "<authToken>",
    null
  )
  
  var response = client.request(
    "/Calls",
    "POST",
    {
      To: number,
      From:"<phone number>",
      Url:"http://demo.twilio.com/welcome"
    }
  )
  
  return Response.skin('skins/results.html', {
    title:"Attempted call from <phone number> to "+number,
    results: response.content
  })
}

exports.makeTwiML = function(req) {
  var code = req.postParams.code;
  
  var result = eval(code);
  
  return Response.skin('skins/results.html', {
    title:"TwiML Result",
    results: result
  })
}