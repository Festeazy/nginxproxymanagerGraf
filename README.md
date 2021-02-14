# nginxproxymanagerGraf

some good readme is needed :)

required things you do beforehand

create influxdb nginxproxymangergraf  
get your GeoLite2-City.mmdb  google is your friend

start docker on the same host where npm runs

```
docker run --name npmgraf -it
-v /home/docker/nginx-proxy-manager/data/logs:/logs \
-v /home/docker/nginx-proxy-manager/GeoLite2-City.mmdb:/GeoLite2-City.mmdb \
-e INFLUX_USER=admin -e INFLUX_PW=password \
-e INFLUX_DB=nginxproxymanagergraf \
-e INFLUX_HOST=192.168.0.189 \
-e INFLUX_PORT=8086 \
makarai/nginx-proxy-manager-graf
```


https://github.com/jc21/nginx-proxy-manager
![nginx](https://github.com/ma-karai/nginxproxymanagerGraf/blob/master/Screenshot%202021-02-14%20105157.png)
