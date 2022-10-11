#include <stdio.h>
#include <stdlib.h>
#include <time.h>





void findSum(int inputArr[],int inputLength, int sum){
    int leftIndex=0,rigthIndex=inputLength-1;


    while(leftIndex<rigthIndex){
        if ((inputArr[leftIndex]+inputArr[rigthIndex])<sum){
            leftIndex++;  //la somma
        } else {
            rigthIndex--;
        }
    }




}





int main()
{

    int arrLength=100;
    int randomArray[arrLength];
    for (int i=0;i<arrLength;i++){
        randomArray[i]=rand()%1000;
    }
    int sum = (rand()%1000) +(rand()%1000);
    findSum(randomArray,arrLength,sum);


    return 0;
}
