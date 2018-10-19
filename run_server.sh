#!/bin/bash

python manage.py collectstatic --noinput

python manage.py syncdb --noinput
python manage.py migrate --noinput

echo "from django.contrib.auth.models import User; User.objects.create_superuser('test-admin', 'admin@example.com', 'pass')" | python manage.py shell

/usr/bin/supervisord --nodaemon