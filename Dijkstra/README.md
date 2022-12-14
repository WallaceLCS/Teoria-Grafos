#Algoritmo de Dijkstra

## Entrada

- Na linha inicial termos *V* e *E*. Sendo *V* o número de vértices e *E* o número de arestas do grafo;
- Nas N linhas seguintes, teremos **v1**, **v2** e **ps**;
- **v1** e **v2** são os vertices conectados pela aresta e **ps** é o peso da aresta;
- Para o funcionamento correto do algoritmo, a entrada deve ser compostra por vértices com valores de 0 a *V* - 1;

- Dois exemplos abaixa:

- O primeiro um grafo de 9 vértices e 12 arestas, vai estar no arquivo ‘input.in’:
```
9 12
0 1 4
0 7 8
1 2 8
1 7 11
2 3 7
2 8 6
2 5 4
3 4 9
4 5 2
5 6 10
6 7 9
7 8 6
```

- O segundo é um grafo de 6 vértices e 8 arestas, vai estar no arquivo ‘input.in’:

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

- A saída retorna à esquerda os vértices e na direita as suas respectivas distâncias da origem;

```
exemplo 1:
Vértices  - Distâncias
   0    -        0
   1    -        4
   2    -        12
   3    -        19
   4    -        18
   5    -        16
   6    -        17
   7    -        8
   8    -        14

exemplo 2:
Vértices   - Distâncias
   1    -        0
   2    -        3
   3    -        4
   4    -        2
   5    -        10

```
## Executar

- A execução pode ser feita tanto de forma interativa pelo terminal, como por um arquivo de texto:

```
./dijkstra < input.in
```

## Complexidade `O(ElogV)`:
