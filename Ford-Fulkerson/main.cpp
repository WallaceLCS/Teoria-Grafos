#include <iostream>
#include "bfs.h"
#include "ford_fulkerson.h"
using namespace std;

int main(){

    Graph graph;
    scanf("%d %d", &graph.V, &graph.E);

    int begin, end;
    scanf("%d %d", &begin, &end);

    // resize used many times to prevent segmentation fault
    graph.adj_list.resize(graph.V);
    for (int i = 0; i < graph.V; i++){
        graph.adj_list[i].resize(graph.V);
    }

    int v1, v2, cap;
    for (int i = 0; i < graph.E; i++){
        scanf("%d %d %d", &v1, &v2, &cap);
        graph.adj_list[v1][v2] = cap;
    }

    cout << "\nFluxo Maximo: " << fordFulkerson(graph, begin, end) << endl;

    return 0;
}
