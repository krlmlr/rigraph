# subgraph.edges deprecation

    Code
      subgraph.edges(g, edges, delete.vertices = FALSE)
    Condition
      Warning:
      `subgraph.edges()` was deprecated in igraph 2.1.0.
      i Please use `subgraph_from_edges()` instead.
    Output
      IGRAPH U--- 13 11 -- 
      + attr: name_1 (g/c), name_2 (g/c), loops_1 (g/l), loops_2 (g/l)
      + edges:
       [1]  1-- 6  1-- 7  1-- 8  2-- 6  3-- 7  4-- 5  5-- 8  9--11 10--13 11--13
      [11] 12--13

