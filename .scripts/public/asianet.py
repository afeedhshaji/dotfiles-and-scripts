import requests
import json
import re

SUBSCRIBER_CODE = "TV169574"
PASSWORD = "15931593"

s = requests.Session()
data = {"DUser": SUBSCRIBER_CODE, "Pwd": PASSWORD}
s.post("https://myabb.in/loginVal?userId=TV169574", data)
data2 = {"subscriberCode": "TV169574"}
url2 = "https://myabb.in/totalBalance"
res = s.post(url2, data2, cookies=s.cookies)
response = res.json()
x = json.loads(response[0]["usage"])
print("Subsciber Code  :  TV169574")
print("Plan type  : ", response[0]["packageName"])
print(
    "Connection Type  : ", response[0]["connType"],
)

try:
    print("Current usage  : ", round(float(x[0]["curretUsage"]["totalOctets"]) / 1000, 2), " GB")
except:
    print("Current usage  : ", round(float(0) / 1000, 2), " GB")
print("Remaining data left  : ", round(float(x[0]["balance"]["totalOctets"]) / 1000, 2), " GB")
print(
    "Total data  : ", round(float(x[0]["HSQLimit"]["totalOctets"]) / 1000, 2), " GB",
)

url3 = "https://myabb.in/getCurrentSession"
res = s.post(url3, data2, cookies=s.cookies)
response = res.json()
print("Gateway Address  : ", response[0]["CS_GatewayAddress"])
print("Last Updated  : ",response[0]["LAST_UPDATE_TIME"])
print("Gateway Name  : ",response[0]["CS_GatewayName"])
print("PCC Rule Names  : ",response[0]["ACTIVE_PCC_RULE_NAMES"])
print("Session IPV4  : ", response[0]["CS_SessionIPv4"])
