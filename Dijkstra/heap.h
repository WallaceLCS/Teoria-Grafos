#ifndef DIJKSTRA_HEAP_H
#define DIJKSTRA_HEAP_H

#include <cstdio>
#include <cstdlib>

//Min heap node
struct MinHeapNode
{
    int v;
    int dist;
};

//Min heap
struct MinHeap
{
    int size;
    int capacity;
    int *pos;
    struct MinHeapNode **array;
};

struct MinHeapNode* newMinHeapNode(int v, int dist);

struct MinHeap* createMinHeap(int capacity);

void swapMinHeapNode(struct MinHeapNode** a, struct MinHeapNode** b);

void minHeapify(struct MinHeap* minHeap, int index);

int isEmpty(struct MinHeap* minHeap);

struct MinHeapNode* extractMin(struct MinHeap* minHeap);

void decreaseKey(struct MinHeap* minHeap, int v, int dist);

bool isInMinHeap(struct MinHeap *minHeap, int v);

#endif //DIJKSTRA_HEAP_H
