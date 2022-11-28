#ifndef MERGE_H_INCLUDED
#define MERGE_H_INCLUDED

#include <math.h>

// MERGESORT FORNITO DAL CORSO DI PROGRAMMAZIONE



void merge2(int inputArr[],int copyArray[], int start, int middle, int endIndex,int inputLength){
    int inputIndex = start;
    int leftIndex = start;  // prima metà elemento più a SX, quindi il minore
    int rightIndex = middle+1; //seconda metà elemento più a SX, quindi il minore




    // copia la porzione del inputArry della quale si vuole fare il merge
    for (int i =start; i<=endIndex;i++){
        copyArray[i] = inputArr[i];
    }

    // si scorrono gli elementi delle due metà per cercare ogni volta il minore
    while(leftIndex<=middle && rightIndex<=endIndex){
        if (copyArray[leftIndex]<= copyArray[rightIndex]){
            inputArr[inputIndex] = copyArray[leftIndex];
            leftIndex++;   // sposta l'indice per cercare il successivo
        } else {
            inputArr[inputIndex]=copyArray[rightIndex];
            rightIndex++;
        }
        // incremento del contatore dell'inputArray
        inputIndex++;
    }
    // se si esce dal while o il leftIndex o il rightIndex sono fuori range
    // se l'indice sx va fuori range significa che gli elementi del DX sono tutti maggiori della metà SX
    // di conseguenza sono già corretti nell'ordine in cui appaiono nell inputArray

    // viceversa se la metà DX ha terminato ci sono ancora tutti gli elementi della metà SX
    // da sovrascrivere nelle nuove posizioni dell inputArray

    // continua la ricerca finchè la metà sx ha esaurito gli elementi
    while(leftIndex<=middle){
        inputArr[inputIndex]=copyArray[leftIndex];
        leftIndex++;
        inputIndex++;
    }



}

void mergeSortRec(int inputArr[],int copyArray[], int startIndex, int endIndex,int inputLength){
    if (startIndex<endIndex){
        int middleIndex = startIndex  +  (endIndex-startIndex)/2;
        // lunghezza della pozione considerata = endIndex-startIndex+1

        // chiamate ricorsive per le due metà
        // se (endIndex-startIndex) è dispari la metà viene arrotondata per difetto,
        // generando due vettori diversi, il più lungo nella prima metà
        mergeSortRec(inputArr,copyArray,startIndex,middleIndex,inputLength);
        mergeSortRec(inputArr,copyArray,middleIndex+1,endIndex,inputLength);

        // unione delle due metà già ordinate crescentemente
        merge2(inputArr,copyArray,startIndex,middleIndex,endIndex,inputLength);
    }
    // startIndex >= endIndex quindi sono selezionati 0/1 elementi, di conseguenza sono già ordinati
}

void mergeSortV2(int inputArr[], int inputLength){
    int copyArray[inputLength];   // array di supporto
    // startIndex = 0; endIndex=lastIndex of the inputArray
    mergeSortRec(inputArr,copyArray,0,inputLength-1,inputLength);
}





#endif // MERGE_H_INCLUDED
