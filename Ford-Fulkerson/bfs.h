#ifndef FORD_FULKERSON_BFS_H
#define FORD_FULKERSON_BFS_H

#include <vector>
#include <queue>
#include <bits/stdc++.h>
#include "graph.h"

bool bfs(Graph graph, adj rGraph, int parent[], int begin, int end);

#endif //FORD_FULKERSON_BFS_H