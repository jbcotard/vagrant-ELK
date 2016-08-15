# vagrant-ELK

test de la stack ELK dans une box vagrant.

Note : construit à partir du tuto : http://blog.netapsys.fr/vos-logs-passent-la-seconde-avec-elk-elasticsearch-logstash-kibana/

## pre-requis

[VirtualBox](https://www.virtualbox.org/) et [Vagrant](http://www.vagrantup.com/) (minimum version 1.6)

## download ELK

-> download des tar dans le repertoire bin

 * [Elasticsearch 2.2.1](https://www.elastic.co/downloads/past-releases/elasticsearch-2-2-1)
 * [Logstash 2.2.2](https://www.elastic.co/downloads/past-releases/logstash-2-2-2)
 * [Kibana 4.4.2](https://www.elastic.co/downloads/past-releases/kibana-4-4-2)

## start

```bash
  vagrant up
```

note : le demarrage peut prendre du temps...

## visualisation

Elasticsearch at [http://localhost:9200/](http://localhost:9200/)
Kibana at [http://localhost:5601/](http://localhost:5601/)

apres qq requetes http://localhost:8092/ , visualisation sur dashboard kibana "my_apache_Dashboard"
