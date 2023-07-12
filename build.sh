set -e
printf "\nCompiling lni-paper-example-de using lni.cls\n\n"
pdflatex lni-paper-example-de

printf "\nGenerating lni.cls, *.tex...\n\n"
pdflatex lni.dtx
pdflatex lni.dtx
pdflatex lni.dtx

if ! git diff-index --quiet HEAD --; then
  echo -e "\033[31mRepository is not clean, please adapt lni.dtx, too.\033[0m"
  exit 1
fi

printf "\nCompiling lni-author-template...\n\n"
touch mybibfile.bib
pdflatex lni-author-template

printf "\nCompiling lni-paper-example-de...\n\n"
pdflatex lni-paper-example-de
printf "\nBiber lni-paper-example-de...\n\n"
biber lni-paper-example-de
printf "\nCompiling lni-paper-example-de...\n\n"
pdflatex lni-paper-example-de
printf "\nCompiling lni-paper-example-de...\n\n"
pdflatex lni-paper-example-de
