# Paper About EO

[![make](https://github.com/objectionary/eolang-paper/actions/workflows/latexmk.yml/badge.svg)](https://github.com/objectionary/eolang-paper/actions/workflows/latexmk.yml)

This is a specification of the [EO] programming language.
The formal foundation of EO is the [φ-calculus][phi-paper] and its
reference interpreter is [phino].

To build it, just run:

```bash
make
```

You need to have [LaTeX], [GNU Aspell], [jq], [texsc], and [texqc] installed.

You may also want to check whether your LaTeX installation has
  all the packages required in the `DEPENDS.txt` file.
If you miss any of them, install, for example, with the help of [tlmgr].

Once compiled and packaged, upload the zip archive
to [arXiv](https://arxiv.org/).

[EO]: https://github.com/objectionary/eo
[phino]: https://github.com/objectionary/phino
[phi-paper]: https://github.com/objectionary/calculus-paper
[LaTeX]: https://www.latex-project.org/get/
[GNU Aspell]: http://aspell.net/
[jq]: https://stedolan.github.io/jq/
[texsc]: https://rubygems.org/gems/texsc
[texqc]: https://rubygems.org/gems/texqc
[tlmgr]: https://tug.org/texlive/tlmgr.html
