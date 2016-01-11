sudo cp temp/index.html /local
sudo chown xzhu15 /local/index.html

sudo touch /local/data
sudo chown xzhu15 /local/data
sudo touch /local/data0
sudo chown xzhu15 /local/data0
echo "asdasdasdasd" >> /local/data

for i in $(seq 2 20) 
do
  cat /local/data >> /local/data0
  cat /local/data0 >> /local/data 
done

sudo rm /local/data0
cat /local/data >> /local/index.html
sudo rm /local/data
