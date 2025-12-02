payload = (delta, base) => ({
  take(attr) { return base.take(attr); },
  put(attr, cell) { base.put(attr, cell); },
  delta() { return delta; },
  copy() { return this; }
});
