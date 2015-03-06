#include <iostream>
#include <stdio.h>
#include <fstream>
#include <string>


using namespace std;

int main() {
    FILE* fp = popen("cvc4 smtlib_unsat_core.smt2", "r");
    
    if (fp == NULL) { 
        printf("FAIL!\n"); 
    } 
       
    char buffer[1028]; 
    while (fgets(buffer, 1028, fp) != NULL) { 
        char line[1028]; 
        for (int i=0; i<1028; i++) {
            if (buffer[i] != '\n') {
                line[i] = buffer[i];
            } else {
                cout << line << endl;
            }
        }
    } 

    pclose(fp);
    return 0;
}