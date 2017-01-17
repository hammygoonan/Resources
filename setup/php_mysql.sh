# To get started:
# sudo wget https://raw.githubusercontent.com/hammygoonan/Resources/master/setup/php_mysql.sh -O setup.sh && sh setup.sh
#

sudo apt-get update -y
sudo apt-get upgrade -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install -y fail2ban git nginx mysql-server php7.1-fpm php7.1-mysql

sudo adduser falconry
sudo mkdir /home/falconry/.ssh
sudo chmod 700 /home/falconry/.ssh

sudo wget https://github.com/hammygoonan.keys -O /home/falconry/.ssh/authorized_keys

sudo chmod 400 /home/falconry/.ssh/authorized_keys
sudo chown falconry:falconry /home/falconry -R

sudo mysql_secure_installation

sudo usermod -aG sudo falconry
sudo service ssh restart

sudo npm install foundation-cli -g
sudo npm install bower -g


# chown webroot to <username>:www-data
# check permissions:
#     find < directory > -type d -exec chmod 755 {} \;
#     find < directory > -type f -exec chmod 644 {} \;
#     find < media/upload directory > -type d -exec chmod 775 {} \;
