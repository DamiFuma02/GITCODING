//
// Created by damiano on 23/10/22.
//

#ifndef OOP_MERGESORT_ABSTRACTION_H
#define OOP_MERGESORT_ABSTRACTION_H


class Abstraction {
private:
    int* inputArray;
    int* copyArray;
    int inputLength;
public:
    Abstraction(int ar[],int n);
    void mergeSort(int start,int end);
    void mergeArrs(int startIndex, int middleIndex, int endIndex);
};


#endif //OOP_MERGESORT_ABSTRACTION_H
