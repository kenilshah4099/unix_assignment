#makefile for making automatic readme file at github pages
all: README.md

#main
README.md: guessinggame.sh
	touch README.md
	echo "# guessinggame" > README.md
	echo $$(date) >> README.md
	echo "  \n Number of lines in guessinggame.sh are:" >> README.md

	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
