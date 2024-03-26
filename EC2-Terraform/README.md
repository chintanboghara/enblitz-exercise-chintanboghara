sudo apt update <br />
sudo apt install  software-properties-common gnupg2 curl <br />
curl https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg <br />
sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/ <br />
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main" <br />
sudo apt install terraform <br />
terraform --version <br />

sudo snap install aws-cli --classic <br />

aws --version <br />
aws configure <br />

nano main.tf <br />

terraform fmt <br />
terraform init <br />
terraform validate <br />
terraform plan <br />
terraform apply <br />
