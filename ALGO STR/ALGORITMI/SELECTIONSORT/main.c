#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main()
{

    printf("SELECTON SORT O(n^2)");
    int l = 100000;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%100;
    }
    int n = sizeof(array) / sizeof(array[0]);
    printf(" The length of int array is : %d ",n);
    clock_t begin = clock();
    selectionSort(array,n);
    clock_t end = clock();
    double time_spent = (double)(end - begin) / (CLOCKS_PER_SEC) ;
    printf("TIME SPENT %f seconds\n",time_spent);

    return 0;
}

void selectionSort(int arr[],int n){
    printf("N: %d \n",n);
    for(int i=0;i<n;i++){
        int minPos = i;
        for (int j=i;j<n;j++){
            if (arr[j] < arr[minPos]){
                minPos = j;
            }
        }
        swap(&arr[i],&arr[minPos]);
    }
}



void swap(int *a, int *b){
    // arr[i] = 3
    // arr[j] = 5
    int tmp = *a;
    *a = *b;
    *b = tmp;
}
