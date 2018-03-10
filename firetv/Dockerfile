ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache \
	python \
	libssl1.0 \
	libcrypto1.0 \
	swig \
	openssl-dev \
	python-dev \
	libusb \
	py-yaml \
	py-pip \
	gcc \
	musl-dev \
	&& pip --no-cache-dir install flask \ 
	&& pip --no-cache-dir install M2Crypto==0.24.0 \ 
	&& pip --no-cache-dir install firetv[firetv-server] \
	&& apk del --no-cache gcc musl-dev openssl-dev python-dev

# Copy root filesystem
COPY rootfs /

# Build arugments
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="FireTV Server" \
    io.hass.description="Hosts an Instance of FireTV Server to allow controll of firetv devices" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Ryan McLean <ryanm101@addons.community>" \
    org.label-schema.description="Hosts an Instance of FireTV Server to allow controll of firetv devices" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="FireTV Server" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://community.home-assistant.io/t/community-hass-io-add-on-firetv/33820?u=frenck" \
    org.label-schema.usage="https://github.com/hassio-addons/addon-firetv/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/hassio-addons/addon-firetv" \
    org.label-schema.vendor="Community Hass.io Add-ons"