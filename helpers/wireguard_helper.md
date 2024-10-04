# Place .conf file to /etc/wireguard/

## 1) start
sudo wg-quick up wg0

### where is wg0 is name of .conf file

## 2) check status
sudo wg

## 3) stop
sudo wg-quick down wg0
