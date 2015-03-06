#include <iostream>
#include <stdio.h>
#include <fstream>
#include <string>


using namespace std;


int main() {
    FILE* program_output = popen("cvc4 smtlib_test.smt2", "r");
    
    if (program_output == NULL) { 
        printf("FAIL!\n"); 
    } 
       
    char buffer[1028]; 
    while (fgets(buffer, 1028, program_output) != NULL) { 
        printf(buffer); 
    } 

    pclose(program_output);
    return 0;
}