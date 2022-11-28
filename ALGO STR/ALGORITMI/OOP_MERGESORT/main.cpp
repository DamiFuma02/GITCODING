#include <iostream>
#include "Abstraction.h"

using namespace std;




int main() {


    int l = 1000;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%1000;
    }


    Abstraction* ab = new Abstraction(array,l);
    clock_t begin = clock();

    ab->mergeSort(0,l-1);
    clock_t end = clock();
    double time_spent = (double)(end - begin) / (CLOCKS_PER_SEC) ;
    printf("MERGESORT OTTIMIZZATO CON INDICI\nTEMPO TRASCORSO %f seconds\n",time_spent);



    return 0;
}
