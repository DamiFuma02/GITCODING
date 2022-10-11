#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "merge.h"
#include "mergeArr.h"




int main()
{
    printf("MERGESORT O(n*logn)\n");
    int l = 100000;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%1000;
    }
    int n = sizeof(array) / sizeof(array[0]);
    //printf("The length of int array is : %d ",n);



    clock_t begin = clock();
    mergeSort(array,n);
    clock_t end = clock();
    double time_spent = (double)(end - begin) / (CLOCKS_PER_SEC) ;
    printf("MERGESORT ARRAYS\nTIME SPENT %f seconds\n",time_spent);




     begin = clock();
    mergeSortV2(array,n);
     end = clock();
     time_spent = (double)(end - begin) / (CLOCKS_PER_SEC) ;
    printf("MERGESORT OTTIMIZZATO CON INDICI\nTIME SPENT %f seconds\n",time_spent);



    return 0;
}
