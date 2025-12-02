atom = (lambda, base) => ({
  take(attr) {
    const c = base.take(attr);
    if (c === null) return lambda(this);
    return c;
  },
  put(attr, cell) { base.put(attr, cell); },
  delta() { return base.delta(); },
  copy() { return this; }
});
