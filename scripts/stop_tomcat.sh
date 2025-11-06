#!/bin/bash
set -e
systemctl is-active --quiet tomcat && sudo systemctl stop tomcat || true
