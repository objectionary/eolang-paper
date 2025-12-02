formation = (attributes) => ({
  take(attr) {
    if (!attributes.has(attr)) throw new Error;
    const c = attributes.get(attr);
    if (c === null) throw new Error;
    return c;
  },
  put(attr, cell) {
    if (!attributes.has(attr)) throw new Error;
    const c = attributes.get(attr);
    if (c !== null) throw new Error;
    attributes.set(attr, cell);
  },
  delta() { throw new Error; },
  copy() { return formation(new Map(attributes)); }
});
