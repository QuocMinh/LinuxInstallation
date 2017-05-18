sudo mkdir /opt/tomcat;
sudo tar xzvf '/media/cqm/DATA/Developer'\''s_Tools/apache-tomcat-8.0.43.tar.gz' -C /opt/tomcat --strip-components=1;
cd /opt/tomcat;
sudo chgrp -R cqm /opt/tomcat;
sudo chmod -R g+r conf;
sudo chmod g+x conf;
sudo chown -R cqm webapps/ work/ temp/ logs/;
sudo gedit /etc/systemd/system/tomcat.service;
sudo systemctl daemon-reload;
sudo systemctl start tomcat;
sudo systemctl status tomcat
