#include <stdio.h>
#include <stdlib.h>



int majorityCandidate(int inputArr[], int inputLength){
    int currentNum, i=0;
    for (int j=0;j<inputLength;j++){
        if (i==0){
            currentNum=inputArr[j];
            i=1;
        }
        if (currentNum==inputArr[j]){
            i+=1;
        } else {
            i-=1;
        }
    }
    return currentNum;
}









int main()
{
    printf("POSSIBLY MAJORITY CANDIDATE IN A RANDOM ARRAY OF INTEGERS\n");
//    int l = 100000;
//    int array[l];
//    for (int i=0;i<l;i++){
//        array[i] = rand()%1000;
//    }
    int vect[] = {2,2,3,3,2,2,3,5,5,8,7,9};
    int n = 12;

    int mag = majorityCandidate(vect,n);
    printf("MAG: %d",mag);

    return 0;
}
