#include "functions.h"
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <string.h>
#define PORT 6666
#define BUFFER_SIZE 1024
int main(int argc, char **argv){
    int status, valread, client_fd;
    struct sockaddr_in serv_addr;
    std::string end_message_string = "end"; // num of args, args, func name
    const char* end_message = end_message_string.c_str();
    char buffer[BUFFER_SIZE] = { 0 };
    if ((client_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        printf("\n Socket creation error \n");
        return -1;
    }
 
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(PORT);
 
    if (inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr)
        <= 0) {
        printf(
            "\nInvalid address/ Address not supported \n");
        return -1;
    }
 
    if ((status
         = connect(client_fd, (struct sockaddr*)&serv_addr,
                   sizeof(serv_addr)))
        < 0) {
        printf("\nConnection Failed \n");
        return -1;
    }

    int not_done = 1;
    while(not_done){
        std::cout << "Available remote functions:" << std::endl;
        for(int i = 0; i < func_array_size; i++){
            std::cout << func_array[i].name << std::endl;
        }
        char message[256];
        std::cin.getline (message, 256); 

        send(client_fd, message, strlen(message), 0);
        valread = read(client_fd, buffer, BUFFER_SIZE - 1);
        int res = atoi(buffer);
        memset(buffer, 0, BUFFER_SIZE);
        if(strcmp(message, "end") == 0)
            return 0;
        std::cout << res << std::endl;
    }
}