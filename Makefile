dev:
	nodemon --exec "make run" --watch src

run: 
	magic run mojo ./src/main.mojo