

***************
Multiple Origin
***************
    - Route to different kinds of origin based on the content type 
    - Based on path pattern 
        ./images/*
        ./api/*
        ./*
    - We can send request to CF to multiple back-end origin like EC2 or S3 bucket based on the 
      path defined in the request header.
************
Origin group
************
    - To increase high availability and to do failover 
    - Origin group: One primary and one secondary 
    - If primary fails, secondary takes over request handling 