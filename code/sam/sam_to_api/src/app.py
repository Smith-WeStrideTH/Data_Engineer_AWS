

print('Loading function')

def lambda_handler(event, context):
  return {
      'statusCode': 200,
      'body': 'Hello, World!',
      'headers': {
          'Content-Type': 'application/json'
      }
  }


   
