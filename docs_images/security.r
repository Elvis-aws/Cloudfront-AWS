

***********************
Viewer Protocol policy
***********************
    Make sure all request going into Cloud front are secured by doing the below
        - Redirect HTTP to HTTPS
        - Use HTTPS only
    Origin Protocol Policy (HTTP or S3)
        - HTTPS only
        - Match viewer (HTTP => HTTP & HTTPS => HTTPS)

**** S3 websites do not support HTTPS

**********************
Field level encryption
**********************
    - Protect user sensitive information 
    - Edge location encrypts sensitive information using asymmetric encryption
    - User sends credit card information to edge location
    - We ask edge location to do field encryption using public key 
    - The webservers will decrypt the fields using the private key 


