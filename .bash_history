ll -lrt
cd .ssh
ll -lrt
cd
sudo apt update && sudo apt install -y docker.io ansible
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
sudo apt install -y openjdk-17-jre
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update && sudo apt install -y jenkins
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] 
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
sudo apt install openjdk-21-jdk -y
sudo update-alternatives --config java
curl -fsSL https://pkg.origin.jenkins.io/debian-stable/jenkins.io-2026.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.origin.jenkins.io/debian-stable/ binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
logout
exit
