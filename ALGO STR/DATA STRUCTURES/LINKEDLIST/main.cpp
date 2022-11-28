#include <iostream>
#include "Node.h"

using namespace std;

int main()
{
    cout << "Hello world!" << endl;

    Node* head = new Node(1);
    printf("BEFORE: %d", head->data);
    cout<<endl;
    head->add(&head,2);
    printf("AFTER: %d", head->data);

    return 0;
}
