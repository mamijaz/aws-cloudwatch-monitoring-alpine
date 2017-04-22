# AWS Cloudwatch Monitoring Using Alpine Image

The sollution is used to moniter the disk space and memory of an aws instance in a dockerized environment in every 5 Min.

Simply add you aws IAM keys(AWSAccessKeyId and AWSSecretKey) in the "aws-scripts-mon/awscreds.conf" file.

Build the image using the command 
- docker build -t ImageName 

Run the Image using 
- docker run -dit  --name ContainerName ImageName
