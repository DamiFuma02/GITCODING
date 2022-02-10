#include <iostream>
#include <vector>

using namespace std;



int main() {
    int N, M, K;

    cin >> N >> M >> K;

    vector<vector<char>> G;
    for(int i=0; i<N; i++)
        G.push_back(vector<char>(M));

    for(int i=0; i<N; i++)
        for(int j=0; j<M; j++)
            cin >> G[i][j];

    // WRITE YOUR SOLUTION HERE

    for(int i=0; i<N; i++) {
        for(int j=0; j<M; j++)
            cout << G[i][j];
        cout << endl;
    }

    return 0;
}
