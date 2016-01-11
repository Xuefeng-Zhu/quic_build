sudo apt-get update
sudo apt-get install libnss3 -y
sudo apt-get install libnss3-tools
certutil -d sql:$HOME/.pki/nssdb -A -t "C,," -n quic -i cert/out/2048-sha256-root.pem

sudo sysctl -w net.core.rmem_max=8388608
sudo sysctl -w net.core.wmem_max=8388608
sudo sysctl -w net.core.rmem_default=65536
sudo sysctl -w net.core.wmem_default=65536
