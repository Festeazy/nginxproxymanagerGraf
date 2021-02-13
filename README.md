# nginxproxymanagerGraf

create influxdb nginxproxymangergraf

some good readme is needed :)

```
docker run --name npmgraf -it --entrypoint "/bin/bash" \
-v /home/docker/nginx-proxy-manager/data/logs:/logs \
-v /home/docker/nginx-proxy-manager/GeoLite2-City.mmdb:/GeoLite2-City.mmdb \
-e INFLUX_USER=admin -e INFLUX_PW=password \
-e INFLUX_DB=nginxproxymanagergraf \
-e INFLUX_HOST=192.168.0.189 \
-e INFLUX_PORT=8086 \
makarai/nginx-proxy-manager-graf
```


https://github.com/jc21/nginx-proxy-manager
![nginx](https://user-images.githubusercontent.com/65983438/83474489-c43f2400-a451-11ea-98a3-67ea772a17c3.png)
