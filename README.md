# First Paper About EOLANG

[![arXiv](https://img.shields.io/badge/arXiv-2111.13384-green.svg)](https://arxiv.org/abs/2111.13384)
[![make](https://github.com/objectionary/eolang-paper/actions/workflows/latexmk.yml/badge.svg)](https://github.com/objectionary/eolang-paper/actions/workflows/latexmk.yml)

This is the first paper about [EOLANG](https://www.eolang.org) and φ-calculus.

To build it, just run:

```bash
make
```

You need to have
[LaTeX](https://www.latex-project.org/get/),
[`aspell`](http://aspell.net/),
[`jq`](https://stedolan.github.io/jq/),
[`biblint`](https://github.com/Kingsford-Group/biblint),
[`texsc`](https://rubygems.org/gems/texsc),
and
[`texqc`](https://rubygems.org/gems/texqc)
installed.

You may also want to check whether your LaTeX installation has
all the packages required in the `DEPENDS.txt` file.
If you miss any of them, install, for example, with the help of
[`tlmgr`](https://tug.org/texlive/tlmgr.html).

Once compiled and packaged, upload zip archive
to [arXiv](https://arxiv.org/abs/2111.13384).
