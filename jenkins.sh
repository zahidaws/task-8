# install git and maven
yum install git maven -y

# jenkins.io -- download -- redhad
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# download java11 and jenkins
sudo yum install java-17-amazon-corretto -y
yum install jenkins -y

# start jenkins and status
systemctl start jenkins.service
systemctl status jenkins.service

# Auto-start jenkins
chkconfig jenkins on
