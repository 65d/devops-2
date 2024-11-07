# AWS EC2 Instance Management Scripts

## Setup

1. Place `create-instance.sh`, `terminate.sh`, and `user_data.sh` in one directory.
2. Make scripts executable:
   ```bash
   chmod +x create-instance.sh terminate.sh user_data.sh
   ```
3. Edit `create-instance.sh`:
   - Set `KEY_NAME`, `SECURITY_GROUP_ID`, and `SUBNET_ID`

## Usage

### Create Instance

```bash
./create-instance.sh my-ec2-instance
```

This will display instance ID and public IP. You can open public IP in the browser.

### Terminate Instance

```bash
./terminate.sh <instance-id>
```

## Notes
- Security group should allow SSH (22) and HTTP (80) traffic
