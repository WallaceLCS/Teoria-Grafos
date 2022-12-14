#include "prim.h"
#include "graph.h"
#include "heap.h"

void printArr(int arr[], int n)
{
    printf("\nArvore Geradora Minima construida: \n");
    for (int i = 1; i < n; ++i)
        printf("%d - %d\n", arr[i], i);
}

//Constructs Minimum Spanning Tree (MST) using Prim's algorithm
void PrimMST(struct Graph* graph)
{
    int V = graph->V; //Get the number of vertices in graph
    int parent[V]; //Array to store constructed MST
    int key[V]; //Key values used to pick minimum weight edge

    struct MinHeap* minHeap = createMinHeap(V);

    //Initialize min heap with all vertices.
    for (int v = 1; v < V; ++v){
        parent[v] = -1;
        key[v] = INT_MAX;
        minHeap->array[v] = newMinHeapNode(v, key[v]);
        minHeap->pos[v] = v;
    }

    key[0] = 0;
    minHeap->array[0] = newMinHeapNode(0, key[0]);
    minHeap->pos[0] = 0;

    //Initially size of min heap is equal to V
    minHeap->size = V;

    //Min heap contains all nodes not yet added to MST.
    while (!isEmpty(minHeap)){
        //Extract the vertex with minimum key value
        struct MinHeapNode* minHeapNode = extractMin(minHeap);
        int u = minHeapNode->v;

        struct AdjListNode* AdjAux = graph->array[u].head;
        while (AdjAux != NULL){
            int v = AdjAux->dest;

            //If v is not yet included in MST and weight of u-v is less than key value of v,
            //then update key value and parent of v
            if (isInMinHeap(minHeap, v) && AdjAux->weight < key[v]){
                key[v] = AdjAux->weight;
                parent[v] = u;
                decreaseKey(minHeap, v, key[v]);
            }
            AdjAux = AdjAux->next;
        }
    }

    printArr(parent, V);
}
