import os
from twilio.rest import Client 
import time

account_sid = 'AC3cb48a8a05d6af9cd001d5152d7db635' 
auth_token = 'e1e91cc682ba077204885cded94c85b1' 
client = Client(account_sid, auth_token) 
link = "https://1c85-216-165-95-154.ngrok.io"
 
message = client.messages.create(messaging_service_sid='MG93a51a2a0182b1eb2c4d60c0affbc46a', body='It is time to write down your ToDo, then you can ... Zzz: '+ link, to='+19084006476') 
print(message.sid)


# Steps to run to ngrok
# flutter build web
# cd build/web
# python3 -m http.server 8000
# OPEN NEW TERMINAL WINDOW
# ngrok http 8000
# USE GENERATED NGROK LINK AS HOST
# DONE
