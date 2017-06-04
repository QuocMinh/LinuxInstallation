sudo mkdir /opt/jvm;
cd /opt/jvm/;

sudo tar -xzvf '/media/cqm/DATA/Developer'\''s_Tools/jdk-8u60-linux-x64.tar.gz';

sudo update-alternatives --install "/usr/bin/java" "java" "/opt/jvm/jdk1.8.0_60/bin/java" 1;
sudo update-alternatives --install "/usr/bin/javac" "javac" "/opt/jvm/jdk1.8.0_60/bin/javac" 1;
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/opt/jvm/jdk1.8.0_60/bin/javaws" 1;
sudo update-alternatives --install "/usr/bin/jar" "jar" "/opt/jvm/jdk1.8.0_60/bin/jar" 1;

sudo update-alternatives --set java /opt/jvm/jdk1.8.0_60/bin/java;
sudo update-alternatives --set javac /opt/jvm/jdk1.8.0_60/bin/javac;
sudo update-alternatives --set javaws /opt/jvm/jdk1.8.0_60/bin/javaws;
sudo update-alternatives --set jar /opt/jvm/jdk1.8.0_60/bin/jar;
