# docker-python-plexlibrary
Dockerized python-plexlibrary

```
docker run --rm \
	--user=1000:1000
	--name=python-plexlibrary \
	-v <path to config>:/python-plexlibrary/config.yml \
	-v <path to recipes>:/python-plexlibrary/recipes \
	-v <path to data>:/data \
	-v /tmp:/tmp \
	danqbudz/python-plexlibrary plexlibrary <recipe>
```

