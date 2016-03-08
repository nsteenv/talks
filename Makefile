talk:
	cp -R reveal.js ${name}

update:
	git submodule foreach git pull
