sync:
	virtualenv venv;
	. venv/bin/activate;\
	pip install -r pip-req.txt;\

serve:
	. venv/bin/activate;\
	python ./manage.py runserver 0.0.0.0:8080

deploy:
	. venv/bin/activate;\
	python ./manage.py runserver --settings=asshai.settings_deploy 0.0.0.0:9000

clean:
	find -type f -name '*.pyc' -delete
	rm -rf venv/

