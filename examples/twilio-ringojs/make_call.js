var twilio = require("twilio/TwilioRestClient")

// Makes a call
var client = new twilio.TwilioRestClient(
  "<accountSid>", 
  "<authToken>",
  null
);

var response = client.request(
  "/Calls",
  "POST",
  {
    To:"<phone number 1>",
    From:"<phone number 2>",
    Url:"http://demo.twilio.com/welcome"
  }
)

print(response.content)
