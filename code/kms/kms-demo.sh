# 1) encryption
aws kms encrypt --key-id alias/Demokey --plaintext fileb://ExampleSecretFile.txt --output text --query CiphertextBlob --region us-east-1 > ExampleSecretFileEncrypted.base64

# base64 decode for Linux or Mac OS
cat ExampleSecretFileEncrypted.base64 | base64 --decode > ExampleSecretFileEncrypted

# base64 decode for Windows
certutil -decode .\ExampleSecretFileEncrypted.base64 .\ExampleSecretFileEncrypted

# 2)decrypted
aws kms decrypt --ciphertext-blob fileb://ExampleSecretFileEncrypted --output text --query Plaintext > ExampleSecretFileDecrypted.base64 --region us-east-1

# base64 decode for Linux or Mac OS
cat ExampleSecretFileDecrypted.base64 | base64 --decode > ExampleSecretFileDecrypted.txt

# base64 decode for Windows
certutil -decode .\ExampleSecretFileDecrypted.base64 .\ExampleSecretFileDecrypted.txt











