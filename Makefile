
DOCUMENT ?= vaaliesite
DOCUMENT_PDF ?= $(DOCUMENT)/$(DOCUMENT).pdf
DOCUMENT_NEXT ?= $(DOCUMENT)/$(DOCUMENT)_$(shell git describe)_$(shell date +%Y%m%d%H%M%S).pdf

# ls vaaliesite*.pdf |head -n1 

test:	
	echo "N: $(DOCUMENT_NEXT)"

$(DOCUMENT_NEXT):	$(DOCUMENT_PDF)
	mv $(DOCUMENT_PDF) $(DOCUMENT_NEXT)

publish: $(DOCUMENT_NEXT) 
	#s3cmd sync $(VAALIESITE_NEXT)
	publish $(DOCUMENT_NEXT)
