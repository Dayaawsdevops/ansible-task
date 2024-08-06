#!/bin/bash

export INSTANCE_PATH={{ instance_path }}
source {{ deployment_folder }}/venv/bin/activate
exec gunicorn --workers 3 --bind 0.0.0.0:{{ port }} app:app 