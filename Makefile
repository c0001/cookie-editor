.PHONY: clean build

clean:
	@bash -c "set -e; if [ -d .git ]                                                ; \
		then echo 'In-git-mode'                                                       ; \
			git reset --hard HEAD                                                       ; \
			git clean -xfd .                                                            ; \
		else \
			[[ -d build ]] && rm -rf buil                                               ; \
		fi"

build: clean
	npm install
	./node_modules/.bin/grunt
