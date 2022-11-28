//
// Created by damiano on 19/10/22.
//

#include "Node.h"

Node::Node(int i) {
    data=i;
}



void Node::add(Node **pNode, int i) {
    Node* newNode = new Node(i);
    newNode->next = *pNode;
    *pNode = newNode;
}

int Node::getData( int index) {
    if (index==0){
        return this->data;
    } else {

        return getData(index-1);
    }
}
