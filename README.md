# Automated MongoDB Backup & Disaster Recovery Pipeline

A production-grade automated database backup, compression, and cloud synchronization pipeline built for Linux environments with automated CloudWatch monitoring.

## 🎥 Project Demo
[Watch the Demo Video Here](https://drive.google.com/file/d/1c2CZ-cyzv2hc3mpyJG9naOPB-xpsTCQh/view?usp=drive_link)

## 🚀 Key Features
- **Automated Backups:** Executes scheduled `mongodump` snapshots.
- **Compression & Cleanup:** Bundles backups into compressed tarballs and safely purges local temporary instances to prevent disk overflow.
- **Cloud Object Storage:** Directly syncs encrypted archives to an AWS S3 bucket.
- **System Monitoring:** Integrates CloudWatch metrics and log shipping (`config.json`) tracking backup execution logs (`backup.log`).

## 📂 Project Structure
- `backup.sh`: Main automated Bash script handling dump, compression, S3 upload, and cleanup.
- `crontab.example`: Cron schedule configuration (runs daily at 2:00 AM).
- `config.json`: AWS CloudWatch Agent configuration tracking CPU, Memory, and log streams.
