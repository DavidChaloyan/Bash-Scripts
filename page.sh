site () {
sudo systemctl start apache2
cd /var/www/html
sudo mv index.html _index.html
sudo rm index.html
cd ~/
sudo wget rate.am
sudo mv index.html /var/www/html
}
site
