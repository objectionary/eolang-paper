atom = (lambda, base) => ({
  take(attr) {
    try { return base.take(attr); }
    catch { return lambda(this); }
  },
  put(attr, cell) { base.put(attr, cell); },
  delta() { return base.delta(); },
  copy() { return this; }
});
