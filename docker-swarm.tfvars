aws_region    = "us-east-2"
ami           = "ami-05c1fa8df71875112"
instance_type = "t2.xlarge"
key_name      = "docker-key" #be aware of that key should exist in your specifing region
env           = "Tools"
userdata      = "userdata.sh"
