# GitOps
Handy GitOps practices and workflows

# Slack setup (via Incoming Webhook)
In Slack, create an Incoming Webhook → it gives you a URL.
Save it in GitHub Secrets as SLACK_WEBHOOK_URL.

# Sftp matrix defines a list of transfers (upload/download)
For Each entry define:
direction → upload or download
localPath → local file/folder path
remotePath → remote path on SFTP
GitHub Actions will fan out into parallel jobs (1 per transfer).
You can add as many SFTP jobs as you need without duplicating YAML.


