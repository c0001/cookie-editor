.PHONY: clean build build-firefox build-chrome

clean:
	@bash -c "set -e; if [ -d .git ]                                                ; \
		then echo 'In-git-mode'                                                       ; \
			git reset --hard HEAD                                                       ; \
			git clean -xfd .                                                            ; \
		else \
			[[ -d build ]] && rm -rf buil                                               ; \
		fi"

build: clean
	mkdir build
	cp -a icons interface build/

build-firefox: build
	cp manifest.firefox.json build/manifest.json

build-chrome: build
	cp manifest.chrome.json build/manifest.json
