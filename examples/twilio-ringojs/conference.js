var {Verb} = require("twilio/Verb")
var {Dial} = require("twilio/Dial")
var {Conference} = require("twilio/Conference")
var {Gather} = require("twilio/Gather")
var {Hangup} = require("twilio/Hangup")
var num = require("twilio/Number")
var {Pause} = require("twilio/Pause")
var {Play} = require("twilio/Play")
var {Record} = require("twilio/Record")
var {Redirect} = require("twilio/Redirect")
var {Reject} = require("twilio/Reject")
var {Say} = require("twilio/Say")
var {Sms} = require("twilio/Sms")

var dial = new Dial("16505551212")
dial.append(new Conference("Test Conference"));
print(dial.toXML());

