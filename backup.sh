# Backup_script.sh
# Foe automation of MongoDB Backup
# 1. Define Variables
TIMESTAMP=$(date +%F_%H-%M-%S)
BACKUP_NAME="mongodb_backup_$TIMESTAMP"
S3_BUCKET="mongodbbackup12345"

# 2. Run mongodump
mongodump --out ./$BACKUP_NAME

# 3. Zip backup folder
tar -cvzf $BACKUP_NAME.tar.gz ./$BACKUP_NAME

# 4. Upload to S3
aws s3 cp $BACKUP_NAME.tar.gz s3://$S3_BUCKET/

# 5. Cleanup local files
rm -rf ./$BACKUP_NAME
rm $BACKUP_NAME.tar.gz

echo "Backup $BACKUP_NAME uploaded successfully!"
