---
title: "Colophon"
author: Jack Kendall
---

This website is quite barebones. That way I can take long breaks from looking at it, and when I come back it's not hard to figure out how to get new content published. It also pushes me to focus more on content rather than thinking up ingenious ways to put text on the internet.

It's hosted via GitHub Pages. You can view the raw files for the website [here](https://github.com/jkendall327/jkendall327).

Pages are written in Markdown and converted to HTML by [Pandoc](https://pandoc.org/). The styling is borrowed from [Asciidoctor](https://asciidoctor.org/), which I built the site with previously.

In practice that means:

1. writing a post in Markdown (saved as an `.md` file)
2. adding `toc: true` to the top of the file if I want a table of contents
3. pushing it up to GitHub
4. a GitHub Action runs `build.sh`, which runs `pandoc` on every `.md` file and publishes the result