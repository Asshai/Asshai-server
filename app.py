import os
import sys
import traceback
from django.core.wsgi import get_wsgi_application
from django.core.signals import got_request_exception
from django.core.management import call_command

import django

sys.path.append(os.path.join(os.path.dirname(os.path.realpath(__file__)), 'asshai'))
os.environ['DJANGO_SETTINGS_MODULE'] = 'asshai.settings'
django.setup()


def exception_printer(sender, **kwargs):
    traceback.print_exc()

got_request_exception.connect(exception_printer)
call_command('migrate', interactive=False)


app = get_wsgi_application()