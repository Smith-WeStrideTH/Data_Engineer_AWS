
import boto3
import os 
import json

print('Loading function')
region_name = os.environ["REGION_NAME"]
dynamodb = boto3.client('dynamodb', region_name=region_name)
table_name = os.environ["TABLE_NAME"]

def lambda_handler(event, context):
  scan_result = dynamodb.scan(TableName=table_name)
  return {
      'statusCode': 200,
      'body': json.dumps(scan_result),
      'headers': {
          'Content-Type': 'application/json'
      }
  }   
