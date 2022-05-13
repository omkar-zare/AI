#include <iostream>
using namespace std;
int ary[10][10], completed[10], n, cost = 0;
void takeInput(){
    int i, j;
    cout << "Enter the number of Cities: ";
    cin >> n;
    cout << "\nEnter the Cost Matrix:\n";
    for (i = 0; i < n; i++){
        cout << "\nEnter Elements of Row " << i + 1 << ":\n";
        for (j = 0; j < n; j++)
            cin >> ary[i][j];
        completed[i] = 0;
    }
}
int least(int c){
    int i, nc = 999;
    int min = 999, kmin;
    for (i = 0; i < n; i++){
        if ((ary[c][i] != 0) && (completed[i] == 0))
            if (ary[c][i] + ary[i][c] < min){
                min = ary[i][0] + ary[c][i];
                kmin = ary[c][i];
                nc = i;
            }
    }
    if (min != 999)
        cost += kmin;
    return nc;
}
void mincost(int city){
    int i, ncity;
    completed[city] = 1;
    cout << city + 1 << "--->";
    ncity = least(city);
    if (ncity == 999){
        ncity = 0;
        cout << ncity + 1;
        cost += ary[city][ncity];
        return;
    }
    mincost(ncity);
}
int main(){
    takeInput();
    cout << "\n\nThe Path is:\n";
    mincost(0);
    cout << "\n\nMinimum cost is = " << cost;
    return 0;
}

/*
Enter the number of Cities: 4

Enter the Cost Matrix:

Enter Elements of Row 1:
0 1 2 3

Enter Elements of Row 2:
1 0 3 4 

Enter Elements of Row 3:
1 3 0 4

Enter Elements of Row 4:
1 3 4 0


The Path is:
1--->2--->3--->4--->1
*/