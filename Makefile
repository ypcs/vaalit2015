

VAALIESITE_DIR ?= vaaliesite
VAALIESITE_PDF ?= $(VAALIESITE_DIR)/vaaliesite.pdf
VAALIESITE_NEXT ?= $(VAALIESITE_DIR)/vaaliesite_$(shell git describe)_$(shell date +%Y%m%d%H%M%S).pdf

# ls vaaliesite*.pdf |head -n1 

test:	
	echo "N: $(VAALIESITE_NEXT)"

$(VAALIESITE_NEXT):	$(VAALIESITE_PDF)
	mv $(VAALIESITE_PDF) $(VAALIESITE_NEXT)

publish-vaaliesite: $(VAALIESITE_NEXT) 
	#s3cmd sync $(VAALIESITE_NEXT)
	publish $(VAALIESITE_NEXT)
