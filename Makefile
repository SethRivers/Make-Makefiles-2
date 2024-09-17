# /
 # @file Makefile
 # @author Seth Rivers
 # @date 2024-09-17
 # @brief Description: My primary file and assignment for the Make & Makefiles assignment.
 # Calibrated for use and compilement of the files provided by the Employees.zip file on the
 # assignment page. 
 #
 #
 #
 # /

#Defines the compiler 
CC = g++

#Compile with all errors and warnings
CFLAGS = -g -Wall -Wextra -c

#Links the .o files together and creates an executable
TARGET = employee

#Readies $(TARGET) for use in the following code 
all: $(TARGET)

#Marks all the files that will be compiled 
$(TARGET):	main.o Employee.o Officer.o Supervisor.o
		$(CC) main.o Employee.o Officer.o Supervisor.o -o $(TARGET) 

#Compiles the main.cpp file with all of the .h files 
main.o: 	main.cpp Employee.h Officer.h Supervisor.h
		$(CC) $(CFLAGS) main.cpp

#Compiles the Employee.cpp/.h files
Employee.o: 	Employee.h Employee.cpp
		$(CC) $(CFLAGS) Employee.cpp

#Compiles the Officer.cpp/.h files 
Officer.o: 	Officer.h Officer.cpp
		$(CC) $(CFLAGS) Officer.cpp

#Compiles the Supervisor.cpp/.h files
Suppervisor.o: 	Supervisor.h Supervisor.cpp
		$(CC) $(CFLAGS) Supervisor.cpp

#Cleans out any unnecaary items post compiling. 
clean:
		$(RM) *.o *~ employee
