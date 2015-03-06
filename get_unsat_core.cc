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
        printf(buffer); 
    } 

    pclose(fp);
    return 0;
}