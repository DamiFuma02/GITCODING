#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "merge.h"

int main() {


    int l = 100000;
    int randomArr[l];
    for(int j=0;j<l;j++){
        randomArr[j] = rand()%1000;
    }

    clock_t start = clock();
    mergeSortV2(randomArr,l);
    clock_t end=clock();
    double time_spent = (double)(end - start) / (CLOCKS_PER_SEC) ;
    printf("TEMPO TRASCORDO: %f",time_spent);



    return 0;
}
