#Algoritmo de Kruskal 

## Entrada
- Na linha inicial termos *V* e *E*. Sendo *V* o número de vértices e *E* o número de arestas do grafo;
- Nas *N* linhas seguintes, teremos **v1**, **v2** e **ps**;

- Dois exemplos:

- O primeiro um grafo de 9 vértices e 13 arestas, vai estar no arquivo `input.in`:

```
9 13
0 1 4
0 7 8
1 2 8
1 7 11
2 3 7
2 8 12
2 5 4
3 4 9
3 5 14
4 5 2
5 6 10
6 7 9
```
-O segundo um grafo de 6 vértices e 8 arestas, vai estar no `arquivo input.in`:

```
6 8
1 2 5
1 3 4
1 4 2
1 6 6
2 4 1
2 5 7
3 5 6
4 6 1
```

## Saída:

-Saída retorna a árvore de abrangência mínima do grafo 

-exemplo 1:
```
MST construída
v1 -- v2 == peso
4 -- 5 == 2
0 -- 1 == 4
2 -- 5 == 4
7 -- 8 == 6
2 -- 3 == 7
0 -- 7 == 8
1 -- 2 == 8
6 -- 7 == 9
Custo: 48
```
- exemplo 2:

```
MST construída
v1 -- v2 == peso
2 -- 4 == 1
4 -- 6 == 1
1 -- 4 == 2
1 -- 3 == 4
3 -- 5 == 6
Custo: 14
```
# Complexidade `O(ElogE) ou O(ElogV)`;
