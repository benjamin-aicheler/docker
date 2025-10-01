curl -s https://install.crowdsec.net | sudo sh

iptables -->
sudo apt update && sudo apt install crowdsec-firewall-bouncer-iptables
#or
sudo apt update && sudo apt install crowdsec-firewall-bouncer-nftables

sudo docker exec -t crowdsec-crowdsec-1 cscli bouncers add HostFirewallBouncer
#remember api key -->
sudo nano /etc/crowdsec/bouncers/crowdsec-firewall-bouncer.yaml
#api_url: http://127.0.0.1:8080/
#api_key: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX