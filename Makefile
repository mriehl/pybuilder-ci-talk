clean:
	rm -f avalanche/talk/talk.html

init:
	virtualenv virtualenv
	. virtualenv/bin/activate
	pip install jinja2 pygments landslide

html:
	. virtualenv/bin/activate
	( cd avalanche/talk && landslide presentation.cfg )

deploy:
	chromium-browser avalanche/talk/talk.html
