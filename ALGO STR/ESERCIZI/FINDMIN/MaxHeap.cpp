//
// Created by damiano on 21/10/22.
//

#include "MaxHeap.h"
#include <iostream>

using namespace std;
MaxHeap::MaxHeap(int l) {
    this->maxLength=l;
    heapSize=0;
}

int MaxHeap::parentID(int index) {
    return (index-1)/2;
}

int MaxHeap::leftID(int index) {
    return (2*index)+1;
}

int MaxHeap::rightID(int index) {
    return (2*index)+2;
}

bool MaxHeap::isLeaf(int index) {
    return (index > (heapSize/2) && index <=heapSize);
}

void MaxHeap::swap(int x, int y) {
    int tmp = heap[x];
    heap[x]=heap[y];
    heap[y]=tmp;
}

void MaxHeap::insert(int key) {
    // la key viene inserita come ultimo elemento
    if (heapSize<maxLength){
        heap[heapSize] = key;
        int index = heapSize;
        while(index>0 && heap[index]>heap[parentID(index)]){
            swap(index, parentID(index));
            index= parentID(index);
        }
        heapSize++;
    } else {
        return;
    }
}

void MaxHeap::print() {
    for(int i=0;i<heapSize/2;i++){
        printf("PARENT-NODE: %d\n",heap[i]);
        if (leftID(i)<heapSize){
            printf("LEFT-CHILD-NODE: %d\n",heap[leftID(i)]);
        }
        if (rightID(i)<heapSize){
            printf("RIGHT-CHILD-NODE: %d\n",heap[rightID(i)]);
        }
        cout<<endl;
    }
}

void MaxHeap::arrToHeap(int arr[],int arrLength) {
    for (int i=0;i<arrLength;i++){
        insert(arr[i]);
    }
}

int MaxHeap::getMaxKey() {


    try{
        if (heapSize == 0){
            throw out_of_range("HEAP TROPPO PICCOLO");
        }
        int tmp = heap[0];
        heap[0] = heap[heapSize-1];
        heapifyRec(0);
        heapSize--;
        return tmp;



    }catch (const out_of_range &oor){
        cout<<endl<<oor.what();
    }




    /*// ROOT è la MAGGIORE
    int returnKey = heap[0];
    // scambia l'ultimo elemento con il primo
    heap[0] = heap[heapSize-1];
    // viene controllata la validità dello heap in quanto ora la root contiene una key bassa
    heapifyRec(0);
    heapSize--;
    return returnKey;*/
}

void MaxHeap::heapifyRec(int index) {
    int leftChild = leftID(index);
    int rightChild = rightID(index);

    int largest = index;

    if (leftChild< heapSize && heap[leftChild]>heap[index]){
        largest = leftChild;
    }

    if (rightChild< heapSize && heap[rightChild]>heap[largest]){
        largest = rightChild;
    }

    if (largest != index){
        swap(index,largest);
        heapifyRec(largest);
    }




}

void MaxHeap::heapSort(int arr[], int arrLgt) {
    for (int i=(arrLgt-1);i>=0;i--){
        swap(0,i);
        heapifyRec()
    }
}







