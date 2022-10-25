#include <iostream>

#include "MaxHeap.h"




using namespace std;



typedef struct returnValues{
    int min;
    int max;
} returnValues;




void findMin(int array[],int arrLgt){
    int currentMin = array[0];
    int prevMin=currentMin;
    for (int i=0;i<arrLgt;i++){
        if (array[i]<currentMin){
            prevMin=currentMin;
            currentMin = array[i];
        }
    }
    printf("MINIMO: %d\nSECONDO MINIMO: %d\n",currentMin,prevMin);
}


void findMax(int array[],int arrLgt){
    int currentMax = array[0];
    for (int i=0;i<arrLgt;i++){
        if (array[i]>currentMax){
            currentMax = array[i];
        }
    }
    printf("MASSIMO: %d",currentMax);
}



 returnValues findMinMax(int arr[],int low, int high){
    returnValues minmax, left, rigth;
    if (low+1==high){
        if (arr[low] > arr[high]) {
            minmax.max = arr[low];
            minmax.min = arr[high];
        }
        else {
            minmax.max = arr[high];
            minmax.min = arr[low];
        }
        return minmax;
    }


     if (low == high) {
         minmax.max = arr[low];
         minmax.min = arr[low];
         return minmax;
     }

    int middleID = (low + high) / 2;
     left = findMinMax(arr, low, middleID);
     rigth = findMinMax(arr, middleID + 1, high);





     // Compare minimums of two parts
     if (left.min < rigth.min)
         minmax.min = left.min;
     else
         minmax.min = rigth.min;

     // Compare maximums of two parts
     if (left.max > rigth.max)
         minmax.max = left.max;
     else
         minmax.max = rigth.max;

     return minmax;



}




returnValues getMinMax(int arr[],int n){
    returnValues minmax;
    int i;

    // If array has even number of elements
    // then initialize the first two elements
    // as minimum and maximum
    if (n % 2 == 0)
    {
        if (arr[0] > arr[1])
        {
            minmax.max = arr[0];
            minmax.min = arr[1];
        }
        else
        {
            minmax.min = arr[0];
            minmax.max = arr[1];
        }

        // Set the starting index for loop
        i = 2;
    }

        // If array has odd number of elements
        // then initialize the first element as
        // minimum and maximum
    else
    {
        minmax.min = arr[0];
        minmax.max = arr[0];

        // Set the starting index for loop
        i = 1;
    }

    // In the while loop, pick elements in
    // pair and compare the pair with max
    // and min so far
    while (i < n - 1)
    {
        if (arr[i] > arr[i + 1])
        {
            if(arr[i] > minmax.max)
                minmax.max = arr[i];

            if(arr[i + 1] < minmax.min)
                minmax.min = arr[i + 1];
        }
        else
        {
            if (arr[i + 1] > minmax.max)
                minmax.max = arr[i + 1];

            if (arr[i] < minmax.min)
                minmax.min = arr[i];
        }

        // Increment the index by 2 as
        // two elements are processed in loop
        i += 2;
    }
    return minmax;
}






int main() {
    cout << "Hello, World!" << endl;

    int l = 10000;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%1000;
    }

    //findMin(array,l);

    clock_t start = clock();
    findMax(array,l);
    clock_t end = clock();
    double time_spent = (double)(end - start) / (CLOCKS_PER_SEC) ;
    printf("FIND MAX LINEARE\nTEMPO TRASCORSO %f seconds\n",time_spent);



    MaxHeap* heapArr = new MaxHeap(l);
    heapArr->arrToHeap(array,l);
    start = clock();
    int a=heapArr->getMaxKey();
    end = clock();
    time_spent = (double)(end - start) / (CLOCKS_PER_SEC) ;
    printf("FIND MAX HEAP\nTEMPO TRASCORSO %f seconds\n",time_spent);

    start = clock();
    returnValues values = findMinMax(array,0,l-1);
    end = clock();
    time_spent = (double)(end - start) / (CLOCKS_PER_SEC) ;
    printf("FIND MAX STRUCT REC\nTEMPO TRASCORSO %f seconds\n",time_spent);
    cout << "Minimum element is " << values.min << endl;
    cout << "Maximum element is " << values.max;

    start = clock();
    getMinMax(array,l);
    end = clock();
    time_spent = (double)(end - start) / (CLOCKS_PER_SEC) ;
    printf("FIND MAX STRUCT ITER\nTEMPO TRASCORSO %f seconds\n",time_spent);

    return 0;
}
