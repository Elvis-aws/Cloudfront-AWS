
   
    *************
    CF Signed Url
    *************
        - This can access only a single file
        - Allow access to a path no matter the origin
        - Can filter by IP, Path, date, expiration
        - Can leverage caching features
    *****************
    S3 pre-Signed Url
    *****************
        - issue a request as the person who pre-signed the URL 
        - Uses the IAM key of the signing IAM principle
        - Limited lifetime
    *************
    Signed cookie
    *************
        - This can be used to access many files
    ************
    Trusted Keys
    ************
        To use signed URLs or signed cookies, you need a signer. A signer is either a trusted key group that you 
        create in CloudFront, or an AWS account that contains a CloudFront key pair. We recommend that you use 
        trusted key groups, for the following reasons
        - With CloudFront key groups, you don’t need to use the AWS account root user to manage the public keys 
        for CloudFront signed URLs and signed cookies.
        - With CloudFront key groups, you can manage public keys, key groups, and trusted signers using the 
        CloudFront API. You can use the API to automate key creation and key rotation. When you use the AWS root 
        user, you have to use the AWS Management Console to manage CloudFront key pairs, so you can’t automate the 
        process.
        - You can use AWS Identity and Access Management (IAM) permissions policies to limit what different users 
        are allowed to do. 
        - When you use the AWS account root user to manage CloudFront key pairs, you can’t restrict what the root 
        user can do or the conditions in which it can do them. 
        - You can’t apply IAM permissions policies to the root user, which is one reason why AWS best practices 
        recommend against using the root user.
        - With CloudFront key groups, you can associate a higher number of public keys with your CloudFront 
        distribution, giving you more flexibility in how you use and manage the public keys.
