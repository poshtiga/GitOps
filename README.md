# GitOps
Handy GitOps practices and workflows

# Slack setup (via Incoming Webhook)
- In Slack, create an Incoming Webhook → it gives you a URL.
- Save it in GitHub Secrets as SLACK_WEBHOOK_URL.

# Sftp matrix defines a list of transfers (upload/download)
- For Each entry define:
  direction → upload or download
  localPath → local file/folder path
  remotePath → remote path on SFTP
- GitHub Actions will fan out into parallel jobs (1 per transfer).
- You can add as many SFTP jobs as you need without duplicating YAML.

# GitHub repo Secrets setup
- Generate an SSH keypair for GitHub Actions (on your machine or a secure VM):
  ssh-keygen -t ed25519 -C "github-actions-sftp" -f sftp_gh_key
- This gives you:
  sftp_gh_key → private key (goes into GitHub Secret SFTP_PRIVATE_KEY)
  sftp_gh_key.pub → public key (install on your SFTP server’s ~/.ssh/authorized_keys for your SFTP user)
- Store this in GitHub repo Secrets:
  SFTP_HOST → your SFTP host
  SFTP_USER → username
  SFTP_PRIVATE_KEY → contents of private key (sftp_gh_key)


