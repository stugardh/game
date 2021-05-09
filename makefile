all: guessinggame.sh README.md

guessinggame.sh:
	touch guessinggame.sh

README.md:

	echo  "Project name: guessinggame.sh" > README.md
	echo  ""
	echo -n "Project date: " >> README.md
	date +%Y-%m-%d >> README.md 
	echo ""
	echo -n "Project time: " >> README.md
	date +%T >> README.md
	echo ""
	echo -n "Project number of lines: " >> README.md
	cat ./guessinggame.sh | wc -l  >> README.md
	echo ""


