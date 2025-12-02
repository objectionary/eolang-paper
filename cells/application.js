application = (prototype, attribute, argument, memo) => ({
  take(attr) { return this.m().take(attr); },
  put() { throw new Error('put is not allowed'); },
  delta() { return this.m().delta(); },
  copy() { return this; },
  memo: null,
  m() {
    if (memo === null) {
      const c = prototype.copy();
      c.put(attribute, argument);
      memo = c;
    }
    return memo;
  }
});
