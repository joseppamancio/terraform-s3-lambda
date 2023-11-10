region                             = "us-east-1"
bucket_name                        = "raw-bucket-proinsight-tech"
environment                        = "test"
execution_timeout                  = 60
lambda_role_name                   = "LambdaRole"
lambda_function_filename           = "../../aws_lambda/aws_lambda.zip"
lambda_function_handler            = "main.lambda_handler"
lambda_function_name               = "LambdaFunctionExample"
lambda_function_runtime            = "python3.8"