
#!/usr/bin/env bash
#
# This stack ELK startup
#
set -e

# Start ELK
echo "starting ELK..."
su - vagrant -c "cd /vagrant/bin;elasticsearch-2.2.1/bin/elasticsearch -d"
echo "elasticsearch started on localhost:9200"
su - vagrant -c "cd /vagrant/bin;kibana-4.4.2-linux-x64/bin/kibana >/vagrant/logs/kibana.log &"
echo "kibana started on localhost:5601"
#su - vagrant -c "cd /vagrant/bin;logstash-2.2.2/bin/logstash -f /vagrant/conf/logstash.conf"
su - vagrant -c "cd /vagrant/bin;logstash-2.2.2/bin/logstash -f /vagrant/conf/apache_log.conf >/vagrant/logs/logstash.log &"
#stdout logstash :
#Settings: Default pipeline workers: 2
#Logstash startup completed
echo "logstash started on apache_log"
echo "##"
echo "WARNING : parsing apache_log take time ..."
echo "##"
echo ""
echo "just GET localhost:8092 and watch kibana dashboard !!!!"
