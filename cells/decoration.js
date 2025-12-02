decoration = (decorator, decoratee) => ({
  memos: new Map(),
  take(attr) {
    if (!this.memos.has(attr)) {
      let c = decorator.take(attr);
      if (c === null) c = decoratee.take(attr);
      this.memos.set(attr, c);
    }
    return this.memos.get(attr);
  },
  put() { throw new Error; },
  delta() { return decoratee.delta(); },
  copy() { return this; }
});
