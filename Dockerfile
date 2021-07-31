FROM python:3-alpine

RUN \
	apk add --update --no-cache --virtual .build-deps \
		gcc \
		git \
		libc-dev \
	&& \
	apk add --update --no-cache \
		libxml2-dev \
		libxslt-dev

RUN \
        git clone https://github.com/adamgot/python-plexlibrary.git && \
        cd python-plexlibrary && \
        pip install --no-cache-dir --upgrade pip && \
        pip install --no-cache-dir -r requirements.txt && \
        pip install --no-cache-dir 'plexapi<4.2.0' && \
        ln -s /python-plexlibrary/plexlibrary/plexlibrary.py /usr/local/bin/plexlibrary && \
        chmod +x /usr/local/bin/plexlibrary && \
	apk del .build-deps

