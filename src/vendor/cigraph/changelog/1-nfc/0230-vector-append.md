# igraph_vector_append(), igraph_strvector_append(), igraph_vector_ptr_append()

**Category**: Core data structures

`igraph_vector_append()`, `igraph_strvector_append()` and `igraph_vector_ptr_append()` now use a different allocation strategy: if the `to` vector has insufficient capacity, they double its capacity. Previously they reserved precisely as much capacity as needed for appending the `from` vector.

---

**Original changelog wording:**

> `igraph_vector_append()`, `igraph_strvector_append()` and `igraph_vector_ptr_append()` now use a different allocation strategy: if the `to` vector has insufficient capacity, they double its capacity. Previously they reserved precisely as much capacity as needed for appending the `from` vector.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
 11    0    0   20  changelog/1-nfc/0230-vector-append.md
  8   14    7   14  include/igraph_vector_ptr.h
 97   76   81   69  src/core/strvector.c
178  176  157  166  src/core/vector.pmt
 72   35   37   29  src/core/vector_ptr.c
```

Notes on remaining differences:
- `changelog/1-nfc/0230-vector-append.md`: before 11+/0-: file didn't exist on main-dev. After 0+/20-: our version includes the proof-of-work section that next's version doesn't have, so next "deletes" those extra lines.
- `include/igraph_vector_ptr.h`: before 8+/14-, after 7+/14-: decrease of 1 added line because `igraph_vector_ptr_capacity` declaration is now present on main-dev.
- `src/core/strvector.c`: before 97+/76-, after 81+/69-: decrease reflects the append allocation change being applied. Remaining diff is from other unrelated changes (const qualifiers, renamed functions, removed deprecated aliases, etc.).
- `src/core/vector.pmt`: before 178+/176-, after 157+/166-: decrease from applying the append change. Remaining diff is from other unrelated changes (asserts, variable renames, formatting, etc.).
- `src/core/vector_ptr.c`: before 72+/35-, after 37+/29-: significant decrease from applying both the append change and the new `igraph_vector_ptr_capacity` function. Remaining diff is from other unrelated changes.
