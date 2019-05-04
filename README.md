### serposcope container for raspberrypi(arm platform)

```
docker clone https://github.com/TakashiAihara/serposcope-rpi-docker.git
cd serposcope-rpi-docker
docker build -t yourname/serposcope .
docker run -d -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro --restart=always -p 7134:7134 --name my_serposcope yourname/serposcope
```

Origin(and other platform) : https://github.com/serphacker/serposcope/tree/master/docker

If you want to check How to use, Please visit the above page.
