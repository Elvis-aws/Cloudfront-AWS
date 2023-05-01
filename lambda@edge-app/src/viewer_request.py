
def lambda_handler(event, context):

    request = event['Records'][0]['cf']['request']
    headers = request['headers']

    newVersion = 'version=new'
    oldVersion = 'version=old'

    for cookie in headers.get('cookie', []):
        if newVersion in cookie['value']:
            print(f"User selected {newVersion} cookie")
            break
        elif oldVersion in cookie['value']:
            print(f"User selected {oldVersion} cookie")
            break
        else:
            print("No cookie was selected by user")
            break
