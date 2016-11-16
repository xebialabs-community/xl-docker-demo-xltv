# xl-docker-demo-xltv #

Docker image that has XLTV installed.


# Supported tags #

* `latest`, `v1.4.4`

# Starting #

```
docker run -v ~/xl-license:/license -p 6516:6516 xebialabs/xl-docker-demo-xltv
```

The license volume mount is needed to provide a valid license, or store a license when logging in the first time. To access the UI, browse to http://[docker_ip]:6516
