
******************
CloudFront Caching
******************
    - We can cache based on 
        - Headers
        - Cookie
        - Query string parameter
    - Cache lives in Cloud-Front Edge location
    - Maximise Cache Hit rate
    - Control or set TTL in the headers
    - We can invalidate part of the cache using the CreateInvalidation API. This will remove the cache and fetch 
      new data
    - We need to seperate cache for static and dynamic requests
