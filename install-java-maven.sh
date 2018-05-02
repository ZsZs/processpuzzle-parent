sudo apt-get autoremove
sudo apt-get update

echo "Checking git version"
git --version

cd ~/ && mkdir tools && cd tools

echo "Installing Java 8"
wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.tar.gz
tar -xzf jdk-8u101-linux-x64.tar.gz
export JAVA_HOME=/home/ubuntu/tools/jdk1.8.0_101
export PATH=$JAVA_HOME/bin:$PATH
rm jdk-8u101-linux-x64.tar.gz
java -version

echo "Installing Maven 3"
sudo apt-get remove maven2
wget http://apache.mirror.anlx.net/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.zip
unzip apache-maven-3.5.0-bin.zip
export MVN_HOME=/home/ubuntu/tools/apache-maven-3.5.0
export PATH=$MVN_HOME/bin:$PATH
rm apache-maven-3.5.0-bin.zip
mvn -version

echo "Happy coding!"