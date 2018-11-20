TARGET=coversheet

all: $(TARGET).pdf

$(TARGET).pdf: *.tex figures-template/*
	latexmk -pdf -synctex=1 $(TARGET).tex

clean:
	latexmk -c

clean-all: clean
	latexmk -C
