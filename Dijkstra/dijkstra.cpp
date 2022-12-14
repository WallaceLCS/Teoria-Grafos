#include "dijkstra.h"
#include "graph.h"
#include "heap.h"

void printArr(int dist[], int n)
{
    printf("\nVertice  - Distancia da fonte\n");
    for (int i = 0; i < n; ++i)
        printf("   %d \t-\t %d\n", i, dist[i]);
}

//Calculate distances of shortest paths from src to all vertices.
void dijkstra(struct Graph* graph, int src)
{
    int V = graph->V;
    int dist[V];

    struct MinHeap* minHeap = createMinHeap(V);

    //Initialize min heap with all vertices.
    for (int v = 0; v < V; ++v){
        dist[v] = INT_MAX;
        minHeap->array[v] = newMinHeapNode(v, dist[v]);
        minHeap->pos[v] = v;
    }

    //Make dist value of src vertex as 0 so that it is extracted first
    minHeap->array[src] = newMinHeapNode(src, dist[src]);
    minHeap->pos[src] = src;
    dist[src] = 0;
    decreaseKey(minHeap, src, dist[src]);

    minHeap->size = V; //Initially size of min heap is equal to V

    while (!isEmpty(minHeap))
    {
        //Extract the vertex with minimum distance value
        struct MinHeapNode* minHeapNode = extractMin(minHeap);

        int u = minHeapNode->v; //Store the extracted vertex number

        //Traverse through all adjacent vertices of the extracted
        struct AdjListNode* pAux = graph->array[u].head;

        while (pAux != NULL){
            int v = pAux->dest;

            if (isInMinHeap(minHeap, v) && dist[u] != INT_MAX && pAux->weight + dist[u] < dist[v])
            {
                dist[v] = dist[u] + pAux->weight;
                decreaseKey(minHeap, v, dist[v]); //Update distance value in min heap also
            }
            pAux = pAux->next;
        }
    }

    printArr(dist, V);
}