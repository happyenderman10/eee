import requests
from requests import get
code = get('ok').text
webhook = input("Enter the webhook url : ")
check = requests.post(webhook,json={"content" : f"__**Webhook Checker : **__ ```{code}```"})
print(check)
if check.status_code == 204:
    print("The webhook is good!")
if check.status_code == 401:
    print("The webhook is bad!")
