set -e
printf "\n\033[32mCompiling lni-paper-example-de using lni.cls\n\n\033[37m"
pdflatex lni-paper-example-de

cp lni.cls lni.old
cp lni-paper-example-de.tex lni-paper-example-de.old

printf "\nGenerating lni.cls, *.tex...\n\n"
pdflatex lni.dtx
pdflatex lni.dtx
pdflatex lni.dtx

FILES=("lni.cls" "lni.old" "lni-paper-example-de.tex" "lni-paper-example-de.old")
for (( i=0; i<${#FILES[@]}; i+=2 )); do
  DIFF=$(diff -w "${FILES[i]}" "${FILES[i+1]}")
  if [ "$DIFF" != "" ]; then
    printf "\033[31mFiles ${FILES[i]} and ${FILES[i+1]} differ:\033[37m\n"
    echo "$DIFF"
    printf "\033[31mPlease adapt lni.dtx to include these changes\033[37m\n"
    printf "\nSee https://github.com/gi-ev/LNI/issues/108 for more background information\n"
    exit 1
  fi
done

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
