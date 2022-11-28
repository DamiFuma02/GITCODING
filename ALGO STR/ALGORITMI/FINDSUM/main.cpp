#include <iostream>
using namespace std;


typedef struct returnValues {
    int min;
    int max;
} retID;



retID findSum(int array[], int arrLgt, int sum){
    int startId = 0;
    retID ids;
    int endId = arrLgt-1;
    while(startId<endId ){
        int currSum = array[startId]+array[endId];
        if ( currSum  == sum){
            ids.min=startId;
            ids.max=endId;
            return ids;
        } else if (currSum<sum){
            startId++;
        } else {
            endId--;
        }
    }
    cout<<"SOMMA NON TROVATA";
    return ids;
}



void insertionSort(int inputArr[], int inputLgt){
    for (int j=1;j<inputLgt;j++){
        int key = inputArr[j];
        int i = j-1;
        while (i>=0 && inputArr[i]>key){
            inputArr[i+1] =inputArr[i];
            i--;
        }
        inputArr[i+1] = key;
    }
}


int main() {
    cout << "Hello, World!" << endl;

    int l = 1000;
    int array[l];
    for (int i=0;i<l;i++){
        array[i] = rand()%100;
    }

    insertionSort(array,l);


    int n = sizeof(array) / sizeof(array[0]);


    int randomSum = rand()%100+rand()%100;
    retID ids= findSum(array,n,randomSum);
    printf("\nSTART: %d\nEND: %d\n",ids.min,ids.max);
    printf("array[%d]=%d + array[%d]=%d = %d",ids.min,array[ids.min],ids.max,array[ids.max],randomSum);





    return 0;
}
