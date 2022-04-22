dependencies:
	@python3 -m ensurepip --upgrade
	@pip3 install pyspelling
#Linux users can use this:
#@sudo apt-get install aspell aspell-en
	@brew install aspell

check-spelling:
	@pyspelling3.9 -c .pyspelling.yml -n markdown_files -vv