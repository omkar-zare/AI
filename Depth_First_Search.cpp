#include <iostream>
#include <list>
using namespace std;
class DFSGraph{
    int v;
    list<int> *adjList;
    void DFS_util(int v,bool visited[]);
    public:
    DFSGraph(int v){
        this->v=v;
        adjList = new list<int> [v];
    }
    void add_edge(int v,int e){
        adjList[v].push_back(e);
    }
    void DFS();
};
void DFSGraph::DFS_util(int v,bool visited[]){
    visited[v]=true;
    cout<<v<<" ";

    list<int>::iterator i;
    for(i=adjList[v].begin();i!=adjList[v].end();++i){
        if(!visited[*i]){
            DFS_util(*i,visited);
        }
    }
}
void DFSGraph::DFS(){
    bool *visited=new bool[v];
    for(int i=0;i<v;i++){
        visited[i]=false;
    }
    for(int i=0;i<v;i++){
        if(visited[i]==false){
            DFS_util(i,visited);
        }
    }
}
int main(){
    DFSGraph dfs(5);
    dfs.add_edge(0,1);
    dfs.add_edge(0,2);
    dfs.add_edge(0,3);
    dfs.add_edge(1,2);
    dfs.add_edge(2,4);
    dfs.add_edge(3,3);
    dfs.add_edge(4,4);
    cout<<"DFS of given Graph: "<<endl;
    dfs.DFS();
    return 0;
}/*
          0
        / | \
       1--2  3
          |  
          4
*/