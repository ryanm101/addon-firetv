#!/usr/bin/with-contenv bash
# ==============================================================================
# Community Hass.io Add-ons: FireTV
# Creates initial FireTV configuration in case it is non-existing
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

if ! hass.file_exists '/config/aftv.yaml'; then
    touch /config/aftv.yaml \
        || hass.die 'Failed to create initial FireTV configuration'
fi