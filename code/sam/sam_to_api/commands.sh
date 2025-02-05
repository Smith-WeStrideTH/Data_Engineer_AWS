# create an s3 bucket
aws s3 mb s3://smith-code-sam-id1234a

# package cloudformation
aws cloudformation package  --s3-bucket smith-code-sam-id1234a --template-file template.yaml --output-template-file gen/template-generated.yaml
# sam package ... 

# deploy 
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM