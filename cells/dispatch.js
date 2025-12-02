dispatch = (base, attribute) => ({
  memo: null,
  take(attr) { return this.m().take(attr); },
  put() { throw new Error; },
  delta() { return this.m().delta(); },
  copy() { return this; },
  m() {
    if (this.memo === null) {
      const c = base.take(attribute);
      c.put('rho', base);
      this.memo = c;
    }
    return this.memo;
  }
});
