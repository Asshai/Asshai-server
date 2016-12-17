#!/usr/bin/env python
import os
import sys

from asshai.settings import BASE_DIR, INSTALLED_APPS

if __name__ == "__main__":
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "asshai.settings")
    try:
        from django.core.management import execute_from_command_line
    except ImportError:
        # The above import may fail for some other reason. Ensure that the
        # issue is really that Django is missing to avoid masking other
        # exceptions on Python 2.
        try:
            import django
        except ImportError:
            raise ImportError(
                "Couldn't import Django. Are you sure it's installed and "
                "available on your PYTHONPATH environment variable? Did you "
                "forget to activate a virtual environment?"
            )
        raise

    if len(sys.argv) == 1:
        execute_from_command_line(sys.argv)
        pass
    if sys.argv[1] == 'clearmigrations':
        for app in INSTALLED_APPS:
            app_path = os.path.join(BASE_DIR, *app.split('.'))
            migrations = os.path.join(app_path, 'migrations')
            if os.path.exists(migrations):
                for mg in os.listdir(migrations):
                    os.remove(os.path.join(migrations, mg))
                open(os.path.join(migrations, '__init__.py'), 'w+').close()
    elif sys.argv[1] == 'initmigrations':
        # some hack by liangzi
        argv = sys.argv[:1]
        argv.append('makemigrations')
        for app in INSTALLED_APPS:
            argv.append(app.split('.')[-1])
        execute_from_command_line(argv)
    else:
        execute_from_command_line(sys.argv)
