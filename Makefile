sync:
	virtualenv venv;
	. venv/bin/activate;\
	pip install -r pip-req.txt;\

serve:
	. venv/bin/activate;\
	python ./manage.py runserver 0.0.0.0:8080

deploy:
	. venv/bin/activate;\
	python ./manage.py runserver 0.0.0.0:80

clean:
	find -type f -name '*.pyc' -delete
	rm -rf venv/

