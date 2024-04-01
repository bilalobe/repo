# Makefile for guessinggame.sh

# Default target (run the script)
all:
	./guessinggame.sh

# Makefile for guessinggame.sh

# Get the current date and time
DATE := $(shell date +"%Y-%m-%d %H:%M:%S")

# Count the number of lines in guessinggame.sh
LOC := $(shell wc -l < guessinggame.sh)

# Generate README.md
README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "Generated on $(DATE)" >> README.md
	@echo "" >> README.md
	@echo "The number of lines in guessinggame.sh: $(LOC)" >> README.md
	@echo "" >> README.md
	@echo "GitHub Pages site: GitHub Pages" >> README.md

.PHONY: clean
clean:
	rm -f README.md

