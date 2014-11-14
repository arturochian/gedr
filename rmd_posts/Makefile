MDS := $(patsubst %.Rmd,%.md,$(wildcard *.Rmd))

all: $(MDS)

%.md: %.Rmd    
	Rscript -e "source('knit_it.R'); knit_it('$<')"
