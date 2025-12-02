application = (proto, attribute, arg) => ({
  memo: null,
  take(attr) { return this.m().take(attr); },
  put() { throw new Error; },
  delta() { return this.m().delta(); },
  copy() { return this; },
  m() {
    if (memo === null) {
      const c = proto.copy();
      c.put(attribute, arg);
      memo = c;
    }
    return memo;
  }
});
