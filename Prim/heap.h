#ifndef PRIM_HEAP_H
#define PRIM_HEAP_H

#include <cstdio>
#include <climits>
#include <cstdlib>

//Min heap node
struct MinHeapNode {
    int v;
    int key;
};

//Min heap
struct MinHeap {
    int size;
    int capacity;
    int* pos; //needed for decreaseKey()
    struct MinHeapNode** array;
};

struct MinHeapNode* newMinHeapNode(int v, int key);

struct MinHeap* createMinHeap(int capacity);

void swapMinHeapNode(struct MinHeapNode** a, struct MinHeapNode** b);

void minHeapify(struct MinHeap* minHeap, int index);

int isEmpty(struct MinHeap* minHeap);

struct MinHeapNode* extractMin(struct MinHeap* minHeap);

void decreaseKey(struct MinHeap* minHeap, int v, int key);

bool isInMinHeap(struct MinHeap* minHeap, int v);

#endif //PRIM_HEAP_H
