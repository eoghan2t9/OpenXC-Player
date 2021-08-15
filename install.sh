apt update && apt install apache2 php7.3 wget curl git -y
curl -s https://raw.githubusercontent.com/eoghan2t9/OpenXC-Player/master/php7.3-ext.sh | bash
rm -rf /var/www/html
git clone https://github.com/eoghan2t9/OpenXC-Player /var/www/html
rm -rf !$/.git
rm -rf /var/www/html/.gitattributes
rm -rf /var/www/html/install.sh
rm -rf /var/www/html/README.md
rm -rf /var/www/html/php7.3-ext.sh
wget -q https://raw.githubusercontent.com/eoghan2t9/OpenXC-Player/master/000-default.conf -O /etc/apache2/sites-available/000-default.conf
service apache2 restart
