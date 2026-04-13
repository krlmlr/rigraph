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
       [1]  1-- 2  1-- 3  2-- 5  4-- 6  5-- 7  6-- 8  7-- 8  9--11 10--12 10--13
      [11] 11--12

