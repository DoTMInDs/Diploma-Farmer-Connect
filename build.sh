#!/usr/bin/env bash
# exit on error
set -o errexit

# pip install -r requirements.txt

python Diploma-Farmer-Connect/manage.py collectstatic --no-input

python Diploma-Farmer-Connect/manage.py migrate 

python Diploma-Farmer-Connect/manage.py runserver 0.0.0.0:$PORT