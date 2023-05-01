import os


def lambda_handler(event, context):

    request = event['Records'][0]['cf']['request']
    headers = request['headers']

    newVersion = 'version=new'
    oldVersion = 'version=old'

    newSiteDomain = os.getenv('NEW_BUCKET_DOMAIN_NAME')
    oldSiteDomain = os.getenv('OLD_BUCKET_DOMAIN_NAME')

    domain = ""

    if 'cookie' not in request['headers']:
        request['headers']['cookie'] = []

    if 'cookie' in request['headers']:
        for cookie in headers.get('cookie', []):
            if newVersion in cookie['value']:
                print(f"{newVersion} A cookie found")
                domain = newSiteDomain
                break
            elif oldVersion in cookie['value']:
                print(f"{oldVersion} B cookie found")
                domain = oldSiteDomain
                break


    # Set S3 origin fields
    request['origin'] = {
        's3': {
            'domainName': domain,
            'port': 80,
            'protocol': "http",
            'region': 'us-east-1',
            'authMethod': 'none',
            'path': '',
            'sslProtocols': ["TLSv1", "TLSv1.1"],
            'readTimeout': 5,
            'keepaliveTimeout': 5,
            'customHeaders': {}
        }
    }

    request['headers']['host'] = [{'key': 'host', 'value': domain}]
    return request
