# CapCut Automation (n8n + FFmpeg)

Automated video production workflow using n8n and FFmpeg, deployed on DigitalOcean via Docker Compose.

## 🚀 Deployment on DigitalOcean Droplet

### 1. Prerequisites
- A DigitalOcean Droplet (Ubuntu 22.04+, 1GB+ RAM).
- A domain name pointing to your Droplet's IP (e.g., `n8n.yourdomain.com`).

### 2. Quick Setup

SSH into your Droplet and run the following commands:

```bash
# 1. Clone the repository
git clone https://github.com/AlfredChan-tech/CapCut-for-DO-for-test-.git capcut-automation
cd capcut-automation

# 2. Configure Environment
cp .env.example .env
nano .env
# -> Edit DOMAIN_NAME to your actual domain
# -> Edit POSTGRES_PASSWORD to a secure password
# -> Edit SSL_EMAIL

# 3. Install Docker & Start
# (If Docker is not installed, run: snap install docker)
docker compose up -d
```

### 3. Access n8n
Open `https://your-domain.com` in your browser.

## 🛠 Features
- **n8n**: Workflow automation.
- **FFmpeg**: Pre-installed for video processing.
- **Traefik**: Automatic HTTPS (Let's Encrypt).
- **PostgreSQL**: Robust database backend.
