.PHONY: all pull clean todo-goja todo-combined todo-split

all: todo-split todo-combined todo-goja
	
pull:
	@go-spirit pull --config configs/todo-split/build.conf
	@go-spirit pull --config configs/todo-combined/build.conf
	@go-spirit pull --config configs/todo-goja/build.conf

todo-split:
	@go-spirit build --config configs/todo-split/build.conf

todo-combined:
	@go-spirit build --config configs/todo-combined/build.conf

todo-goja:
	@go-spirit build --config configs/todo-goja/build.conf

clean:
	@rm -f ./todo-goja
	@rm -f ./todo-combined
	@rm -f ./todo-split
	@rm -f ./postapi-split