

VAALIESITE_PDF ?= vaaliesite/vaaliesite.pdf
VAALIESITE_NEXT ?= vaaliesite_$(shell git tag)_$(shell date +%Y%m%d%H%M%S).pdf

# ls vaaliesite*.pdf |head -n1 

test:	
	echo "N: $(VAALIESITE_NEXT)"

publish: $(VAALIESITE_PDF) 
	#s3cmd sync $(VAALIESITE_NEXT)
	publish $(VAALIESITE_NEXT)
