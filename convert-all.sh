#!/bin/bash
find . -type f -name "*.adoc" -exec asciidoctor {} \;