aws cloudformation create-stack --stack-name "Capstone-Network" --template-body file://"./capstone-network.yml"  --parameters file://"./network-parameters.json" --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-2
