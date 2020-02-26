#!/bin/bash
cd feedback-fragebogen
pdflatex feedback-fragebogen.tex

cd ../train-the-trainer
pdflatex train-the-trainer
bibtex train-the-trainer
pdflatex train-the-trainer
pdflatex train-the-trainer

pdflatex train-the-tutor
bibtex train-the-tutor
pdflatex train-the-tutor
pdflatex train-the-tutor
cd ..
