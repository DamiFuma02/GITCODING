//
// Created by damiano on 21/10/22.
//

#ifndef MAX_HEAP_CPP_MAXHEAP_H
#define MAX_HEAP_CPP_MAXHEAP_H
#define MAX 10000
#include <vector>

using namespace std;

class MaxHeap {
private:
    int heap[MAX];
    int heapSize;
    int maxLength;
    void swap(int x, int y);
    void heapifyDownRec(int index);

public:
    MaxHeap(int);
    static int parentID(int); ///return the parentID of the index
    static int leftID(int);
    static int rightID(int);
    bool isLeaf(int) const;
    void insert(int);
    void print();
    void buildHeap(int [],int);
    int getMaxKey();
    void heapSort(int[],int);


    void heapifyUp(int index);
};


#endif //MAX_HEAP_CPP_MAXHEAP_H
