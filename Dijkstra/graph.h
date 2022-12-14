#ifndef DIJKSTRA_GRAPH_H
#define DIJKSTRA_GRAPH_H

#include <cstdio>
#include <cstdlib>

//Node in adjacency list
struct AdjListNode
{
    int dest;
    int weight;
    struct AdjListNode* next;
};

//Adjacency list
struct AdjList
{
    struct AdjListNode *head;
};

//This graph is an array of adjacency lists
struct Graph
{
    int V;
    struct AdjList* array;
};

struct AdjListNode* newAdjListNode(int dest, int weight);

struct Graph* createGraph(int V);

void addEdge(struct Graph* graph, int src, int dest, int weight);

#endif //DIJKSTRA_GRAPH_H
