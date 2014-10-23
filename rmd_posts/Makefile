MDS := $(patsubst %.Rmd,%.md,$(wildcard *.Rmd))

all: $(MDS)

%.md: %.Rmd    
	Rscript -e "knitr::knit('$<', output='../_posts/$@')"
