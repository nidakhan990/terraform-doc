



terraform {
  backend "s3" {
    bucket = "my-buck-88"
    key    = "Module/Open_Vpn/terraform.tfstate"
    region = "us-east-2"
    //dynamodb_table = "my_tool_dynamo"
  }
}
