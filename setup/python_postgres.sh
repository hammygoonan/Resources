sudo apt-get update -y
sudo apt-get upgrade -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install -y fail2ban git nginx python3.5 nodejs build-essential postgresql postgresql-contrib python3-pip python3-dev

sudo adduser falconry
sudo mkdir /home/falconry/.ssh
sudo chmod 700 /home/falconry/.ssh

sudo wget https://github.com/hammygoonan.keys -O /home/falconry/.ssh/authorized_keys

sudo chmod 400 /home/falconry/.ssh/authorized_keys
sudo chown falconry:falconry /home/falconry -R

sudo usermod -aG sudo falconry
sudo service ssh restart

sudo npm install foundation-cli -g
sudo npm install bower -g

sudo pip3 install virtualenv
