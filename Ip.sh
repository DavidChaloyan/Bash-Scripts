details () {
clear
echo "********************************************************************************"
echo "Your IP address"
echo "********************************************************************************"
hostname -I
echo $ "\n\n********************************************************************************"
echo "Your public IP address"
echo "********************************************************************************"
dig +short myip.opendns.com @resolver1.opendns.com
echo $ "\n\n********************************************************************************"
echo "Kernel IP routing table"
echo "********************************************************************************"
netstat -rn | tail -4
echo $ "\n\n********************************************************************************"
echo "Your memory details in GB"
echo "********************************************************************************"
free -g
echo $ "\n\n********************************************************************************"
echo "Your cpu details"
echo "********************************************************************************"
lscpu | head -19
}
details
