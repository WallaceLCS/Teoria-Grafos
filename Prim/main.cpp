#include <cstdio>
#include "graph.h"
#include "prim.h"

int main()
{
    int V, E;
    int v1, v2, wt;

    scanf("%d %d", &V, &E);
    struct Graph* graph = createGraph(V);

    for(int i = 0; i < E; i++){
        scanf("%d %d %d", &v1, &v2, &wt);
        addEdge(graph, v1, v2, wt);
    }

    PrimMST(graph);

    return 0;
}
