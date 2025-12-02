formation = (attrs) => ({
  take(attr) {
    if (!attrs.has(attr)) throw new Error;
    const c = attrs.get(attr);
    if (c === null) throw new Error;
    return c;
  },
  put(attr, cell) {
    if (!attrs.has(attr)) throw new Error;
    const c = attrs.get(attr);
    if (c !== null) throw new Error;
    attrs.set(attr, cell);
  },
  delta() { throw new Error; },
  copy() { return formation(new Map(attrs)); }
});
