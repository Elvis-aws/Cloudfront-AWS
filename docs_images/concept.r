

*****************
Amazon CloudFront
*****************
    - It is a fast content delivery network (CDN) service that securely delivers data, videos, applications, and 
      APIs to customers globally with low latency, high transfer speeds, all within a developer-friendly environment
    - CloudFront China has Edge locations in Beijing, Shanghai, Zhongwei, and Shenzhen. These four Edge locations 
      are connected by private network directly to Amazon Web Services China.
    - CloudFront works seamlessly with services, including Amazon Shield Standard for DDoS mitigation, and Amazon S3, 
      Elastic Load Balancing, or Amazon EC2 as origins for your applications.
    - 216 edge locations
    *****************
    CloudFront Origin
    *****************
        **************
        S3 Cloud Front
        **************
            - Can expose external HTTPS endpoint and internal HTTPS 
            - Distribute reads traffic with low latency with S3 buckets
            - Enhanced security using OAI (Origin access identity). Your S3 bucket will only communicate with 
            Cloud Front and nothing else.
        ************************************
        Custom Origin (HTTP) Any WWW.HTTP://
        ************************************
            - Aplication Load Balancer (Security group of ELB must allow cloud-front IP to get data)
            - EC2 Instance (Security group of EC2 must allow cloud-front IP to get data)
            - S3 website
    ***************************
    Cloud-Front Geo Restriction
    ****************************
        You can blacklist or whitelist a country using this attribute. E.G for copy-right restriction
