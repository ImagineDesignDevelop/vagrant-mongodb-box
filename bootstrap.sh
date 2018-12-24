# Mongodb public key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list

#update package list
sudo apt-get update

#install mongodb package
sudo apt-get install -y mongodb-org

#copy over custom mongodb.conf file
cp /vagrant/mongod.conf /etc/mongod.conf

#restart mongodb
sudo service mongod restart

#show mongodb status
sudo service mongod status