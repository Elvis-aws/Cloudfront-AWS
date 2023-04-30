
# Stack deploys a statick s3 bucket being served by a cloudfront distribution with an OAI

# Stack must be deployed in us-east-1
#STEPS#
# Set region to us-east-1
- aws configure
- cd cdn-app
- validate template
  - aws cloudformation validate-template --template-body file://template.yaml
- create stack using either sam or cloudformation
- upload index and 404.html files to S3 bucket
- Test website with cloudfronturl
- delete stack

# Create stack cloudformation
# Create stack
- aws cloudformation create-stack --stack-name s3cloudfront --template-body file://template.yaml
# Update stack
- aws cloudformation update-stack --stack-name mystack --template-body file://template.yaml


# Deploy using sam
- sam build --use-container
- sam deploy --guided




