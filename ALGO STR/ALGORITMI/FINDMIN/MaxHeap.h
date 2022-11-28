//
// Created by damiano on 21/10/22.
//

#ifndef MAX_HEAP_CPP_MAXHEAP_H
#define MAX_HEAP_CPP_MAXHEAP_H
#define MAX 10000

class MaxHeap {
private:
    int heap[MAX];
    int heapSize;
    int maxLength;
    void swap(int x, int y);
    void heapifyRec(int index);

public:
    MaxHeap(int);
    int parentID(int);
    int leftID(int);
    int rightID(int);
    bool isLeaf(int);
    void insert(int);
    void print();
    void arrToHeap(int [],int);
    int getMaxKey();
    void heapSort(int[],int);


};


#endif //MAX_HEAP_CPP_MAXHEAP_H