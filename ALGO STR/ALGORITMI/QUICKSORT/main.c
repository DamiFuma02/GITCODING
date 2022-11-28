#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#define MAX 100




void quicksort(int a[MAX],int primo,int ultimo){
   int i, j, pivot, temp;
/*pivot -- inizialmente il pivot è il primo elemento
primo e ultimo sono le due variabili che servono per scorrere l'array
*/
   if(primo<ultimo){
      pivot=primo;
      i=primo;
      j=ultimo;

      while(i<j){
         while(a[i]<=a[pivot]&&i<ultimo)
            i++;
         while(a[j]>a[pivot])
            j--;
         if(i<j){
            temp=a[i];
            a[i]=a[j];
            a[j]=temp;
         }
      }

      temp=a[pivot];
      a[pivot]=a[j];
      a[j]=temp;
      quicksort(a,primo,j-1);
      quicksort(a,j+1,ultimo);
   }
}

int main(){



   int l = 100000;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%10000;
    }
    int n = sizeof(array) / sizeof(array[0]);
    //printf("The length of int array is : %d ",n);



//    clock_t begin = clock();
//    mergeSort(array,n);
//    clock_t end = clock();
//    double time_spent = (double)(end - begin) / (CLOCKS_PER_SEC) ;
//    printf("MERGESORT ARRAYS\nTIME SPENT %f seconds\n",time_spent);
//



    clock_t begin = clock();
    quicksort(array,0,n-1);
    clock_t end = clock();
    double time_spent = (double)(end - begin) / (CLOCKS_PER_SEC) ;
    printf("QUICKSORT \nTEMPO TRASCORSO %f seconds\n",time_spent);



   return 0;
}
