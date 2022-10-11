#ifndef MERGEARR_H_INCLUDED
#define MERGEARR_H_INCLUDED

void mergeSort(int inputArray[],int inputLength ){
    if (inputLength<2){
        return;
    }
    int midIndex = inputLength/2;
    // inputLength = dispari --> 2*n + 1, n Reale
    // (2*n+1)/2 = n + 1/2 -->ToINTEGER--> n
    int leftHalf[midIndex]; //PARTE CORTA se N DISPARI ha n elementi
    int rightHalf[inputLength-midIndex]; //PARTE LUNGA se N DISPARI ha n+1 elementi

    // LEFTHALF = INPUTARR[0,MIDINDEX]
    for (int i = 0; i < midIndex; i++) {
        leftHalf[i]= inputArray[i];
    }
    // RIGHTHALF = INPUTARR[MIDINDEX,ARRLENGTH]
    for (int i = midIndex; i < inputLength; i++) {
        rightHalf[i-midIndex]= inputArray[i];
    }

    mergeSort(leftHalf,midIndex);
    mergeSort(rightHalf,inputLength-midIndex);

    mergeArrays(inputArray,leftHalf,rightHalf, midIndex, inputLength-midIndex);




}


void mergeArrays(int inputArray[], int leftHalf[], int rightHalf[], int leftSize, int rightSize){

    // 1: BOTH OF LEFT AND RIGHT ARE SORTED
    // 2: CHECK THE ELEMENTs OF BOTH ARRAYS
    // 3: WRITE THE SMALLER IN THE INPUT ARRAY
    // 4: INCREMENT THE COUNTER OF THE SEARCHINDEX IN THE ARRAY
    //     WHERE THERE WAS THE SMALLER VALUE
    // 5: INCREMENT THE COUNTER OF THE INPUTARRAY

    // SEPARATE INDEX FOR EACH ARRAY
    int leftIndex = 0, rightIndex = 0 , inputIndex = 0;
    while (leftIndex<leftSize && rightIndex < rightSize) {
        // 2: CHECK THE ELEMENTs OF BOTH ARRAYS
        if (leftHalf[leftIndex] <= rightHalf[rightIndex]){
            // 3: WRITE THE SMALLER IN THE INPUT ARRAY
            inputArray[inputIndex] = leftHalf[leftIndex];
            // 4: INCREMENT THE COUNTER OF THE SEARCHINDEX IN THE ARRAY
            leftIndex++;
        } else {
            // 3: WRITE THE SMALLER IN THE INPUT ARRAY
            inputArray[inputIndex] = rightHalf[rightIndex];
            // 4: INCREMENT THE COUNTER OF THE SEARCHINDEX IN THE ARRAY
            rightIndex++;
        }
        // 5: INCREMENT THE COUNTER OF THE INPUTARRAY
        inputIndex++;
    }
    // ONE OF THE HALFS HAS FINISHED THE ELEMENTS
    // BUT WE DON'T KNOW WHICH

    while(leftIndex<leftSize){
        inputArray[inputIndex] = leftHalf[leftIndex];
        leftIndex++;
        inputIndex++;
    }

    while(rightIndex < rightSize) {
        inputArray[inputIndex] = rightHalf[rightIndex];
        rightIndex++;
        inputIndex++;
    }
}



#endif // MERGEARR_H_INCLUDED
