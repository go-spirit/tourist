.PHONY: all pull clean todo-goja todo-combined todo-split

all: todo-split todo-combined todo-goja
	
pull:
	@spirit-builder pull --config configs/todo-split/build.conf
	@spirit-builder pull --config configs/todo-combined/build.conf
	@spirit-builder pull --config configs/todo-goja/build.conf

todo-split:
	@spirit-builder build --config configs/todo-split/build.conf

todo-combined:
	@spirit-builder build --config configs/todo-combined/build.conf

todo-goja:
	@spirit-builder build --config configs/todo-goja/build.conf

clean:
	@rm -f ./todo-goja
	@rm -f ./todo-combined
	@rm -f ./todo-split
	@rm -f ./postapi-split