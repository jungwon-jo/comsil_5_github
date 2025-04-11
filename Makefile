CC = gcc
target = animal.exe
objects = dog.o blackcow.o turtle.o main.o

$(target): $(objects)
	$(CC) -o $(target) $(objects)

.PHONY : clean
clean:
	rm $(target) $(objects)
