# igraph_attribute_handler_t

**Category**: Attribute handling

`igraph_attribute_handler_t` members that formerly took an untyped `igraph_vector_ptr_t` argument are now taking a typed `igraph_attribute_record_list_t` argument instead.

---

**Original changelog wording:**

> `igraph_attribute_handler_t` members that formerly took an untyped `igraph_vector_ptr_t` argument are now taking a typed `igraph_attribute_record_list_t` argument instead.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
11	0	0	0	changelog/1-nfc/0320-attribute-handler-t.md
5	4	0	0	examples/simple/igraph_write_graph_pajek.c
223	151	158	145	include/igraph_attributes.h
46	30	32	24	include/igraph_interface.h
10	9	10	16	include/igraph_pmt.h
12	21	12	24	include/igraph_strvector.h
4	7	3	7	include/igraph_typed_list_pmt.h
44	45	41	41	interfaces/types.yaml
31	341	31	342	src/core/sparsemat.c
62	66	42	66	src/core/strvector.c
35	2	3	5	src/core/typed_list.pmt
614	23	2	8	src/graph/attributes.c
19	23	4	17	src/graph/attributes.h
810	2417	2	2	src/graph/cattributes.c
223	134	223	134	src/graph/type_indexededgelist.c
13	22	5	15	src/hrg/hrg.cc
23	19	0	0	src/io/dl.c
80	110	0	0	src/io/gml.c
144	283	0	0	src/io/graphml.c
30	25	2	2	src/io/lgl.c
29	25	2	2	src/io/ncol.c
4	4	0	0	src/io/pajek-header.h
162	82	0	0	src/io/pajek-parser.y
25	76	7	7	src/io/pajek.c
20	21	0	0	tests/unit/cattributes6.c
99	99	0	0	tests/unit/cattributes6.out
32	40	0	0	tests/unit/constructor-failure.c
1	2	0	0	tests/unit/pajek_bipartite2.c
30	30	0	0	tests/unit/pajek_bipartite2.out
1	2	0	0	tests/unit/pajek_signed.c
10	10	0	0	tests/unit/pajek_signed.out
```

Notes on remaining differences:

- **changelog/1-nfc/0320-attribute-handler-t.md**: Before: 11/0, After: 0/0. Entry was ported; the after-diff now shows 0/0 because it is present on both branches. The proof-of-work section added here increases the `del` count vs `next` since `next` doesn't have this section.
- **include/igraph_attributes.h**: Before: 223/151, After: 158/145. Decrease; remaining diff is from entries 0330 (`gettype` → `get_type`), 0340 (append semantics docs), 0350 (`IGRAPH_ATTRIBUTE_DEFAULT` removal), plus cosmetic/comment changes.
- **include/igraph_pmt.h**: After add count unchanged (10→10), del increased (9→16) because `next` has additional cosmetic differences (copyright header etc.) that aren't related to this change.
- **include/igraph_strvector.h**: After del increased (21→24) — remaining diff includes `const char**` changes and other strvector changes from later entries.
- **src/graph/attributes.c**: Before: 614/23, After: 2/8. Major decrease; nearly all attribute record functions and dispatch changes ported.
- **src/graph/cattributes.c**: Before: 810/2417, After: 2/2. Dramatic decrease; entire C attribute handler rewritten to use `igraph_attribute_record_list_t`.
- **src/graph/attributes.h**: Before: 19/23, After: 4/17. Decrease; remaining diff is `__BEGIN_DECLS`→`IGRAPH_BEGIN_C_DECLS` and removal of the COPY/DESTROY macros (which `next` inlines).
- **IO readers (gml, graphml, pajek, dl, etc.)**: All went to 0/0 — fully ported from `next`.
- **Tests/examples**: All went to 0/0 — fully ported from `next`.
- **src/core/sparsemat.c**: After 31/342 nearly unchanged — most differences in this file are from later entries (sparsemat deprecation changes).
- **src/graph/type_indexededgelist.c**: 223/134 unchanged — remaining diff is from entries 0370 (`delete_vertices_map`), 0380, etc.
