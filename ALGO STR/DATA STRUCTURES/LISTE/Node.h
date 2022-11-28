#ifndef NODE_H
#define NODE_H
#define NULL __null


class Node
{
    public:
        int data;
        Node* next;
        Node();
        Node(int);
        void add(Node** head,int value){
            Node* newNode = new Node(value);
            newNode->next = *head;
            *head = newNode;

        }


        virtual ~Node();


};

#endif // NODE_H
