sudo apt-get autoremove
sudo apt-get update

echo "Checking git version"
git --version

cd ~/ && mkdir tools && cd tools

echo "Installing Java 8"
wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u172-b11/a58eab1ec242421181065cdc37240b08/jdk-8u172-linux-x64.tar.gz -O jdk-8u172-linux-x64.tar.gz
tar -xzf jdk-8u172-linux-x64.tar.gz
rm jdk-8u172-linux-x64.tar.gz
export JAVA_HOME=/home/ubuntu/tools/jdk1.8.0_172
export PATH=$JAVA_HOME/bin:$PATH
java -version

echo "Installing Maven 3"
sudo apt-get remove maven2
wget http://mirrors.ae-online.de/apache/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.zip
unzip apache-maven-3.5.3-bin.zip
rm apache-maven-3.5.3-bin.zip
export MAVEN_HOME=/home/ubuntu/tools/apache-maven-3.5.3
export PATH=$MAVEN_HOME/bin:$PATH
mvn -version

echo "Update NodeJS and NPM"
nvm install v10.1.0
nvm use v10.1.0
npm install -g npm
node --version
npm --version

echo "Install headless Chrome"
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:canonical-chromium-builds/stage
sudo apt-get update
sudo apt-get install chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser

echo "Happy coding!"