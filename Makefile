PY=python3
PELICAN=pelican
CONTENT=content
OUTPUT=output
CONFIG=pelicanconf.py
PUBLISHCONF=publishconf.py

html:
    $(PELICAN) $(CONTENT) -o $(OUTPUT) -s $(CONFIG)

publish:
    $(PELICAN) $(CONTENT) -o $(OUTPUT) -s $(PUBLISHCONF)

clean:
    rm -rf $(OUTPUT)

serve:
    cd $(OUTPUT) && $(PY) -m http.server

regenerate:
    $(PELICAN) -r $(CONTENT) -o $(OUTPUT) -s $(CONFIG)

devserver:
    $(PELICAN) -lr $(CONTENT) -o $(OUTPUT) -s $(CONFIG)
