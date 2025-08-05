#!/usr/bin/env bash
# exit on error
set -o errexit

# pip install -r requirements.txt

python dipbackend/manage.py collectstatic --no-input

python dipbackend/manage.py migrate 

python dipbackend/manage.py runserver 0.0.0.0:$PORT