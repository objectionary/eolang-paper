decoration = (decorator, decoratee) => ({
  memos: new Map(),
  take(attr) {
    if (!this.memos.has(attr)) {
      var c;
      try { c = decorator.take(attr); }
      catch { c = decoratee.take(attr); }
      this.memos.set(attr, c);
    }
    return this.memos.get(attr);
  },
  put() { throw new Error; },
  delta() { return decoratee.delta(); },
  copy() { return this; }
});
