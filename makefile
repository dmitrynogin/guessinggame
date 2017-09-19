all: README.md

README.md:
	echo "##GUESSINGGAME Peer-graded Assignment" > README.md
	eval echo "Generated on $(shell date)" >> README.md
	eval echo "guessinggame.sh contains $(shell cat guessinggame.sh | wc -l) lines." >> README.md
