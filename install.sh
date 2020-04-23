#!/bin/bash
#sudo apt-get -y update && sudo apt-get -y -o Dpkg::Options::="--force-confnew" dist-upgrade
apt -y update && apt -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade


apt install -y libcurl4-openssl-dev
ap install -y libssl-dev
apt install -y jq
apt install -y ruby-full
ap install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
apt install -y build-essential libssl-dev libffi-dev python-dev
apt install -y python-setuptools
apt install -y libldns-dev
apt install -y python3-pip
apt install -y python-pip
apt install -y python-dnspython
apt install -y git
apt install -y rename
apt install -y xargs
apt install -y golang-go
apt install -y dnsutils
apt install -y nmap
apt install -y git
apt install -y curl
apt install -y wget
apt install -y ruby
apt install -y make



#set path
#echo "Setting path values"
#echo "Old paths:"
#echo ' '
#echo $PATH
#export GOROOT=~/go
#export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
#export PATH=$PATH:/snap/bin
#echo "New paths:"
#echo ' '
#echo $PATH


#Don't forget to set up AWS credentials!
echo "Don't forget to set up AWS credentials!"
sudo apt install -y awscli
echo "Don't forget to set up AWS credentials!"



#create a tools folder in ~/
mkdir ~/tools
mkdir ~/tools/wordlists
cd ~/tools/


#install aquatone
echo "Installing Aquatone"
go get github.com/michenriksen/aquatone
echo "done"

#install chromium
echo "Installing Chromium"
sudo snap install chromium
echo "done"

echo "installing JSParser"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser*
sudo python setup.py install
cd ~/tools/
echo "done"

echo "installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
#pip3 install -r requirements.txt  <-- pip3 or no?
pip install -r requirements.txt
cd ~/tools/
echo "done"


echo "installing teh_s3_bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/tools/
echo "done"


echo "installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ~/tools/
echo "done"

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "done"


echo "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git
cd ~/tools/
echo "done"

echo "installing virtual host discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd ~/tools/
echo "done"


echo "installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/
echo "done"

echo "installing knock.py"
git clone https://github.com/guelfoweb/knock.git
cd ~/tools/
echo "done"

echo "installing lazyrecon"
git clone https://github.com/nahamsec/lazyrecon.git
cd ~/tools/
echo "done"

echo "installing nmap"
sudo apt-get install -y nmap
echo "done"

echo "installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns
make
cd ~/tools/
echo "done"

echo "installing asnlookup"
git clone https://github.com/yassineaboukir/asnlookup.git
cd ~/tools/asnlookup
pip install -r requirements.txt
cd ~/tools/
echo "done"

echo "installing httprobe"
cd ~/tools/
go get -u github.com/tomnomnom/httprobe 
echo "done"

echo "installing unfurl"
cd ~/tools/
go get -u github.com/tomnomnom/unfurl 
echo "done"

echo "installing waybackurls"
cd ~/tools/
go get github.com/tomnomnom/waybackurls
echo "done"

echo "installing crtndstry"
cd ~/tools/
git clone https://github.com/nahamsec/crtndstry.git
echo "done"

echo "installing ffuf"
cd ~/tools/
go get github.com/ffuf/ffuf
echo "done"

echo "installing Amass"
cd ~/tools/
snap install amass
echo "done"


echo "installing subfinder"
cd ~/tools/
mkdir subfinder
cd subfinder
wget https://github.com/projectdiscovery/subfinder/releases/download/v2.3.2/subfinder-linux-amd64.tar
tar -xzvf subfinder-linux-amd64.tar
rm subfinder-linux-amd64.tar
mv subfinder-linux-amd64 subfinder
./subfinder
echo "done"

echo "installing subbrute"
cd ~/tools/
apt install -y python-dnspython
git clone https://github.com/TheRook/subbrute.git
echo "done"


echo "installing gobuster"
cd ~/tools/
go get github.com/OJ/gobuster
echo "done"


echo "installing sslScrape"
cd ~/tools/
git clone https://github.com/cheetz/sslScrape.git
cd ~/tools/sslScrape
pip install ndg-httpsclient
pip install python-masscan
cd ~/tools/
echo "done"


echo "installing assets-from-spf"
git clone https://github.com/0xbharath/assets-from-spf.git
cd ~/tools/assets-from-spf
pipenv install
cd ~/tools/
echo "done"


echo "downloading Seclists"
cd ~/tools/wordlists
git clone https://github.com/danielmiessler/SecLists.git
cd ~/tools/wordlists/SecLists/Discovery/DNS/
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd ~/tools/
echo "done"

echo "downloading commonspeak2"
cd ~/tools/wordlists/
git clone https://github.com/assetnote/commonspeak2.git
cd ~/tools/
echo "done"


echo "downloading commonspeak2-wordlists"
cd ~/tools/wordlists/
git clone https://github.com/assetnote/commonspeak2-wordlists.git
cd ~/tools/
echo "done"

echo "downloading 86a06c5dc309d08580a018c66354a056"
cd ~/tools/
cd ~/tools/wordlists
wget https://gist.github.com/jhaddix/86a06c5dc309d08580a018c66354a056/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt
cd ~/tools/
echo "done"

echo "downloading CT_subdomains"
cd ~/tools/
git clone https://github.com/internetwache/CT_subdomains.git
echo "done"


echo "Installing masscan"
cd ~/tools/
apt install -y git gcc make libpcap-dev
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make -j
cd ~/tools/
echo " " >> tools.txt
echo "Masscan:" >> tools.txt
echo "~/tools/masscan/bin/masscan"  >> tools.txt
echo "done"


echo "installing subjack"
cd ~/tools/
go get github.com/haccer/subjack
echo "done"


echo "installing gitrob"
cd ~/tools/
go get github.com/michenriksen/gitrob
echo "done"


echo "installing aquatone"
cd ~/tools/
mkdir aquatone
cd aquatone
add-apt-repository ppa:canonical-chromium-builds/stage
apt update && apt -y install chromium-browser
rm aquatone_linux_*.zip
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone_linux_*.zip
rm aquatone_linux_*.zip
./aquatone -h
echo "done"



echo "installing shodan cli"
cd ~/tools/
pip3 install shodan
echo "done"


echo "installing EyeWitness"
cd ~/tools/
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd ~/tools/EyeWitness/Python/setup
./setup.sh
pip3 install attrs --upgrade
sudo apt install -y xvfb
~/tools/EyeWitness/Python/EyeWitness.py -h
echo "done"


echo "installing xxeserv"
cd ~/tools/
git clone https://github.com/staaldraad/xxeserv.git
cd xxeserv
go build
./xxeserv -h
echo "done"


echo "installing CMSeeK"
cd ~/tools/
git clone https://github.com/Tuhinshubhra/CMSeeK
cd CMSeeK
pip3 install -r requirements.txt
echo "done"




echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools/"
ls -la
echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! And in ~/go/bin/"
ls -la ~/go/bin/
echo ' '
echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"
