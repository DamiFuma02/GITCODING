//
// Created by damiano on 19/10/22.
//

#ifndef LISTE_CPP_NODE_H
#define LISTE_CPP_NODE_H


class Node {

public:
    int data;
    Node* next;
    Node(int i);
    void add(Node **pNode, int i);
    int getData(int index);

};


#endif //LISTE_CPP_NODE_H
