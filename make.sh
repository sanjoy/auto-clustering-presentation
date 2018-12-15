#!/bin/bash

IMAGES_OUTPUT=./images/
rm -rf ${IMAGES_OUTPUT}
mkdir -p ${IMAGES_OUTPUT}

for f in *.dot; do
    dot -Tpdf $f -o "${IMAGES_OUTPUT}/$(basename $f .dot).pdf" &
done

wait

pdflatex main.tex && pdflatex main.tex
