

***********
Lambda@Edge
***********
        - Lambda@Edge lets you run Lambda functions to customize content that CloudFront delivers, executing the functions
          in AWS locations closer to the viewer.
        - The functions run in response to CloudFront events, without provisioning or managing servers.
        - You can use Lambda functions to change CloudFront requests and responses at the following points:
            - After CloudFront receives a request from a viewer (viewer request)
            - Before CloudFront forwards the request to the origin (origin request)
            - After CloudFront receives the response from the origin (origin response)
            - Before CloudFront forwards the response to the viewer (viewer response)