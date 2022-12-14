# Ford-Fulkerson

## Entrada

- Na linha inicial termos *V* e *E*. Sendo V o número de vértices e *E* o número de arestas do grafo;
- Na segunda linha temos dois inteiros, begin e end. Sendo begin o vértice de origem e end o vértice de destino;
- Nas *N* linhas seguintes, teremos **v1**, **v2** e **cp**;
- **v1** e **v2** são os vertices conectados pela aresta e **cp** é o capacidade da aresta;
- Para o funcionamento correto do algoritmo, a entrada deve ser compostra por vértices com valores de 0 a *V* - 1;

- Dois exemplos abaixo...

- O primeiro um grafo de 6 vértices e 10 arestas, vai estar no arquivo `input02.in`:
```

6 10
0 5
0 1 5
0 2 7
1 2 3
1 3 8
2 1 6
2 5 9
3 2 1
3 5 4
4 3 2
4 5 9
```
-- O segundo é um grafo de 6 vértices e 8 restas, vai estar no arquivo `input.in`:

```

6 8
0 5
0 1 5
0 2 4
0 3 2
0 5 6
1 3 1
1 4 7
2 4 6
3 5 1


```

## Saída:
- A saída retorna o fluxo máximo do grafo a partir do algoritmo de Ford-Fulkerson;

- exemplo 1:
```

Fluxo máximo = 12
```
- exemplo 2:

```
Fluxo máximo = 7
```

#Complexidade `O(ElogV)`;




