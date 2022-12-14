#include "heap.h"

struct MinHeapNode* newMinHeapNode(int v, int dist)
{
    struct MinHeapNode* minHeapNode = (struct MinHeapNode*)malloc(sizeof(struct MinHeapNode));
    minHeapNode->v = v;
    minHeapNode->dist = dist;
    return minHeapNode;
}

struct MinHeap* createMinHeap(int capacity)
{
    struct MinHeap* minHeap = (struct MinHeap*)malloc(sizeof(struct MinHeap));
    minHeap->pos = (int *)malloc(capacity * sizeof(int));
    minHeap->size = 0;
    minHeap->capacity = capacity;
    minHeap->array = (struct MinHeapNode**)malloc(capacity *sizeof(struct MinHeapNode*));
    return minHeap;
}

//Swap two nodes of min heap. Needed for min heapify.
void swapMinHeapNode(struct MinHeapNode** a, struct MinHeapNode** b)
{
    struct MinHeapNode* t = *a;
    *a = *b;
    *b = t;
}

void minHeapify(struct MinHeap* minHeap, int index)
{
    int smallest, left, right;
    smallest = index;
    left = 2 * index + 1;
    right = 2 * index + 2;

    if (left < minHeap->size && minHeap->array[left]->dist <
                                minHeap->array[smallest]->dist )
        smallest = left;

    if (right < minHeap->size && minHeap->array[right]->dist <
                                 minHeap->array[smallest]->dist )
        smallest = right;

    if (smallest != index)
    {
        //The nodes to be swapped in min heap
        MinHeapNode *smallestNode = minHeap->array[smallest];
        MinHeapNode *indexNode = minHeap->array[index];

        //Swap positions
        minHeap->pos[smallestNode->v] = index;
        minHeap->pos[indexNode->v] = smallest;

        //Swap nodes
        swapMinHeapNode(&minHeap->array[smallest], &minHeap->array[index]);

        minHeapify(minHeap, smallest);
    }
}

//Check if the given minHeap is empty
int isEmpty(struct MinHeap* minHeap)
{
    return minHeap->size == 0;
}

//Extract minimum node from heap
struct MinHeapNode* extractMin(struct MinHeap* minHeap)
{
    if (isEmpty(minHeap))
        return NULL;

    struct MinHeapNode* root = minHeap->array[0];

    //Replace root node with last node
    struct MinHeapNode* lastNode = minHeap->array[minHeap->size - 1];
    minHeap->array[0] = lastNode;

    //Update position of last node
    minHeap->pos[root->v] = minHeap->size-1;
    minHeap->pos[lastNode->v] = 0;

    //Reduce heap size and heapify root
    --minHeap->size;
    minHeapify(minHeap, 0);

    return root;
}

//Function to decrease dist value of a given vertex v.
void decreaseKey(struct MinHeap* minHeap, int v, int dist)
{
    int i = minHeap->pos[v]; //Get the index of v in heap array

    minHeap->array[i]->dist = dist; //Get the node and update its dist value

    //This is a O(Logn) loop
    while (i && minHeap->array[i]->dist <
                minHeap->array[(i - 1) / 2]->dist)
    {
        //Swap this node with its parent
        minHeap->pos[minHeap->array[i]->v] = (i-1)/2;
        minHeap->pos[minHeap->array[(i-1)/2]->v] = i;
        swapMinHeapNode(&minHeap->array[i], &minHeap->array[(i - 1) / 2]);

        //Move to parent index
        i = (i - 1) / 2;
    }
}

//Check if a given vertex is in min heap
bool isInMinHeap(struct MinHeap *minHeap, int v)
{
    return minHeap->pos[v] < minHeap->size;
}