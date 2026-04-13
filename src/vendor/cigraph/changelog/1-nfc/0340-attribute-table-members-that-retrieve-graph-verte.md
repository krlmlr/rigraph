# Attribute table members that retrieve graph, vertex or edge attributes must n...

**Category**: Attribute handling

Attribute table members that retrieve graph, vertex or edge attributes must not clear the incoming result vector any more; results must be appended to the end of the provided result vector instead.

---

**Original changelog wording:**

> Attribute table members that retrieve graph, vertex or edge attributes must not clear the incoming result vector any more; results must be appended to the end of the provided result vector instead.
