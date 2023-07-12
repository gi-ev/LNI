set -e
printf "\n\033[32mCompiling lni-paper-example-de using lni.cls\n\n\033[37m"
pdflatex lni-paper-example-de

printf "\nGenerating lni.cls, *.tex...\n\n"
pdflatex lni.dtx
pdflatex lni.dtx
pdflatex lni.dtx

if ! git diff-index --quiet HEAD --; then
  echo -e "\033[31mRepository is not clean, please adapt lni.dtx, too.\033[37m"
  exit 1
fi

printf "\n\033[32mCompiling lni-author-template...\n\n\033[37m"
touch mybibfile.bib
pdflatex lni-author-template

printf "\n\033[32mCompiling lni-paper-example-de...\n\n\033[37m"
pdflatex lni-paper-example-de
printf "\n\033[32mBiber lni-paper-example-de...\n\n\033[37m"
biber lni-paper-example-de
printf "\n\033[32mCompiling lni-paper-example-de...\n\n\033[37m"
pdflatex lni-paper-example-de
printf "\n\033[32mCompiling lni-paper-example-de...\n\n\033[37m"
pdflatex lni-paper-example-de
