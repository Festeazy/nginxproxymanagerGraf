# nginxproxymanagerGraf

some good readme is needed :)

required things you do beforehand

1) create influxdb nginxproxymanagergraf
2) Create username and password for nginxproxymanagergraf  
3) get your GeoLite2-City.mmdb google is your friend upload it somewhere where you'll find it
4) Start the docker container
5) Add data source into grafana
6) Import the dashboard file and set the new data source

start docker on the same host where nginx proxy manger runs

```
docker run --name npmgraf -it
-v /home/docker/nginx-proxy-manager/data/logs:/logs \
-v /home/docker/nginx-proxy-manager/GeoLite2-City.mmdb:/GeoLite2-City.mmdb \
-e HOME_IPS="192.168.0.*\|192.168.10.*" \
-e INFLUX_USER=admin -e INFLUX_PW=password \
-e INFLUX_DB=nginxproxymanagergraf \
-e INFLUX_HOST=192.168.0.189 \
-e INFLUX_PORT=8086 \
makarai/nginx-proxy-manager-graf
```

world map
```
SELECT count("IP") AS "counts" FROM "ReverseProxyConnections" WHERE $timeFilter GROUP BY "latitude", "longitude", "IP"
```




Obviously I'd appreciate a grafana Wiz to add some things here :) first time i worked with grafana.



https://github.com/jc21/nginx-proxy-manager  

![nginx](https://github.com/ma-karai/nginxproxymanagerGraf/blob/master/Screenshot%202021-02-14%20142221.png?raw=true)
