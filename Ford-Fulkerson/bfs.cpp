#include "bfs.h"

bool bfs(Graph graph, adj rGraph, int parent[], int begin, int end)
{
    // Create a visited array and mark all vertices as not visited
    bool visited[graph.V];
    memset(visited, 0, sizeof(visited));

    // Create a queue, enqueue source vertex and mark source vertex as visited
    std::queue<int> q;
    q.push(begin);
    visited[begin] = true;
    parent[begin] = -1;

    while(!q.empty()){
        int u = q.front();
        q.pop();

        for(int i = 0; i < graph.V; i++){
            if(rGraph[u][i] > 0 && !visited[i]){
                q.push(i);
                parent[i] = u;
                visited[i] = true;
            }
        }
    }

    return visited[end];
}