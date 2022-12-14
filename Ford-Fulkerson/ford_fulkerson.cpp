#include "ford_fulkerson.h"

int fordFulkerson(Graph graph, int begin, int end)
{
    int u, v, max_flow = 0;
    adj rGraph;

    rGraph.resize(graph.V);
    for(int i = 0; i < graph.V; i++){
        rGraph[i].resize(graph.V);
        for(int j = 0; j < graph.V; j++){
            rGraph[i][j] = graph.adj_list[i][j];
        }
    }

    int parent[graph.V];

    // Updating the values of edges
    while(bfs(graph, rGraph, parent, begin, end)){
        int path_flow = INT_MAX;

        for (v = end; v != begin; v = parent[v]){
            u = parent[v];
            path_flow = (rGraph[u][v] < path_flow)? rGraph[u][v] : path_flow;
        }

        for(v = end; v != begin; v = parent[v]){
            u = parent[v];
            rGraph[u][v] -= path_flow;
            rGraph[v][u] += path_flow;
        }

        // Add the path flows
        max_flow += path_flow;
    }

    return max_flow;
}
