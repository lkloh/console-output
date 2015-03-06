#include <iostream>
#include <stdio.h>


using namespace std;


int main() {
    FILE* program_output = popen("cvc4 smtlib_test.smt2", "r");
    
    pclose(program_output);
    return 0;
}