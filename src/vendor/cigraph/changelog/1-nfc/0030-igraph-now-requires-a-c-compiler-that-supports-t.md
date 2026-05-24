# igraph now requires a C++ compiler that supports the C++14 standard.

**Category**: Build system and compiler

igraph now requires a C++ compiler that supports the C++14 standard.

---

**Original changelog wording:**

> igraph now requires a C++ compiler that supports the C++14 standard.

---

## Proof of work: `git diff --numstat HEAD..next`

Before and after the change, side by side (add-before, del-before, add-after, del-after, file):

```
add-b  del-b  add-a  del-a  file
   1     1     0     0  CMakeLists.txt
  11     0     0     0  changelog/1-nfc/0030-igraph-now-requires-a-c-compiler-that-supports-t.md
```

Notes on remaining differences:

- `CMakeLists.txt` is now fully matched to `next` (CMAKE_CXX_STANDARD bumped from 11 to 14).
- The changelog file is fully matched to `next`.
