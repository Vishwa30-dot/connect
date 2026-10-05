PROJECTS:

# Flask Web App in Docker on AWS

Project Flow :

Local Project Setup → Create Flask App → Dockerize it → Push Image to 
Docker Hub 

→ Launch EC2 → Install Docker → Pull Image → Run Container → Expose to 
Internet

# Deploy Flask App to AWS EC2 using Ansible

(Control Node) 
      |
      V
 SSH + Ansible 
      |
      V
AWS EC2 Instance (Target Node) → installs Python3, pip, Flask → deploys app → runs as systemd service 
