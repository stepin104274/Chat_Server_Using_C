#variable declaration
MAKE=make
RM=rm

#targets
all: client.c server.c
	gcc -o client client.c
	gcc -o server server.c
	gnome-terminal -t server "./server"
	sleep 10s
	$(MAKE) client_target
	
#another target for client
client_target:
	./client
	
clean:server client
	$(RM) server
	$(RM) client
