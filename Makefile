all: README.md

README.md:
	echo '# UNIX WORKBENCH' > README.md
	echo '* This makefile was run at: $(shell date +%m-%d-%Y:%H:%M:%S)' >> README.md
	echo '* There were $(shell wc -l < guessinggame.sh) lines in guessinggame.sh' >> README.md
	echo '\n[Github Pages](https://beesdays.github.io/unixbench/)' >> README.md
clean:
	rm README.md

