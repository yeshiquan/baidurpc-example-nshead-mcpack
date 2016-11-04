import json
import urllib2
 
data = { "a" : 5, "b" : 6}
request_json = json.dumps(data)
 
req = urllib2.Request("http://127.0.0.1:8002/EchoService/Echo")
req.add_header('Content-Type', 'application/json') # ????server??????r31987????????????????????
try:
    response = urllib2.urlopen(req, request_json, 1)
    print response.read()
except urllib2.HTTPError as e:
    print e
