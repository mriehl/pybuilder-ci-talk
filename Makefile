OUTPUT=avalanche/talk/talk.html
clean:
	rm -f $(OUTPUT)

init:
	virtualenv virtualenv --clear
	. virtualenv/bin/activate
	pip install jinja2 pygments landslide

html: init
	. virtualenv/bin/activate
	( cd avalanche/talk && landslide presentation.cfg )

deploy: html
	chromium-browser $(OUTPUT)

rebuild-graph:
	dot -Tpng deps.dot -o deps.png

