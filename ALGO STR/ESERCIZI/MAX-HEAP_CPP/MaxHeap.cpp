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

bool MaxHeap::isLeaf(int index) const {
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
        heapSize--;
        heapifyRec(0);
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

    int largest = index; //il più grande è nella ROOT index

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

void MaxHeap::heapSort(int *arr, int N) {
    // Build heap (rearrange array)
    for (int i = N / 2 - 1; i >= 0; i--)
        heapifyRec(arr, N, i);

    // One by one extract an element
    // from heap
    for (int i = N - 1; i > 0; i--) {

        // Move current root to end
        swap(arr[0], arr[i]);

        // call max heapify on the reduced heap
        heapify(arr, i, 0);
    }
}




// To heapify a subtree rooted with node i
// which is an index in arr[].
// n is size of heap
/*
void heapify(int arr[], int N, int i)
{

    // Initialize largest as root
    int largest = i;

    // left = 2*i + 1
    int l = 2 * i + 1;

    // right = 2*i + 2
    int r = 2 * i + 2;

    // If left child is larger than root
    if (l < N && arr[l] > arr[largest])
        largest = l;

    // If right child is larger than largest
    // so far
    if (r < N && arr[r] > arr[largest])
        largest = r;

    // If largest is not root
    if (largest != i) {
        swap(arr[i], arr[largest]);

        // Recursively heapify the affected
        // sub-tree
        heapify(arr, N, largest);
    }
}
*/


// Main function to do heap sort
void heapSort(int arr[], int N)
{

    // Build heap (rearrange array)
    for (int i = N / 2 - 1; i >= 0; i--)
        heapify(arr, N, i);

    // One by one extract an element
    // from heap
    for (int i = N - 1; i > 0; i--) {

        // Move current root to end
        swap(arr[0], arr[i]);

        // call max heapify on the reduced heap
        heapify(arr, i, 0);
    }
}


