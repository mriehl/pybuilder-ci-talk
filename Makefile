OUTPUT=avalanche/talk/talk.html
clean:
	rm -f $(OUTPUT)

init:
	virtualenv virtualenv
	. virtualenv/bin/activate
	pip install jinja2 pygments landslide

html:
	. virtualenv/bin/activate
	( cd avalanche/talk && landslide presentation.cfg )

deploy:
	chromium-browser $(OUTPUT)
