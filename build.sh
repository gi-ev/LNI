set -e
pdflatex lni.dtx
pdflatex lni.dtx
pdflatex lni.dtx
touch mybibfile.bib
printf "\nCompiling lni-author-template...\n"
pdflatex lni-author-template
printf "\nCompiling lni-paper-example-de...\n"
pdflatex lni-paper-example-de
printf "\nBiber lni-paper-example-de...\n"
biber lni-paper-example-de
printf "\nCompiling lni-paper-example-de...\n"
pdflatex lni-paper-example-de
printf "\nCompiling lni-paper-example-de...\n"
pdflatex lni-paper-example-de
