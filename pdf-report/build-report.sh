#!/bin/sh

generateTypst () {
  pandoc "$1" --output "$2" --template=../templates/pandoc.typ
  sed -i 's/{{\\< hint type\\=important \\>}}/#box(fill: yellow.lighten(50%), inset: 5pt, \[/g' $2
  sed -i 's/{{\\< hint type\\=important title\\="Remarks" \\>}}/#box(fill: yellow.lighten(50%), inset: 5pt, \[/g' $2
  sed -i 's/{{\\< hint type\\=warning \\>}}/#box(fill: red.lighten(50%), inset: 5pt, \[/g' $2
  sed -i 's/{{\\< hint type\\=tip \\>}}/#box(fill: olive.lighten(50%), inset: 5pt, \[/g' $2
  sed -i 's/{{}}/\])/g' $2
  sed -i 's/{{\\< toc-tree \\>}}//g' $2

}

#List of Datasets & Software
generateTypst ../content/about/posts/2025-11-datasets-software.md from-md/datasets-software.typ

# Privacy Sandbox Proposals
currentFileOutput=privacy-sandbox.typ
echo "#import \"@preview/suboutline:0.3.0\": suboutline" > $currentFileOutput
generateTypst ../content/privacy-sandbox/_index.md from-md/ps.typ
echo "#include \"from-md/ps.typ\"" >> $currentFileOutput
echo "#suboutline(depth: 1)" >> $currentFileOutput
echo "#set heading(offset: 1)  // globally increase offset" >> $currentFileOutput

for dir in ../content/privacy-sandbox/*/
do
  dir=${dir%*/} #remove /
  dir=${dir##*/} #get only filename
  # echo $dir
  generateTypst ../content/privacy-sandbox/$dir/_index.md from-md/ps-$dir.typ
  echo "#include \"from-md/ps-$dir.typ\"" >> $currentFileOutput
done


# Other Proposals
currentFileOutput=other-proposals.typ
echo "#import \"@preview/suboutline:0.3.0\": suboutline" > $currentFileOutput
generateTypst ../content/other/_index.md from-md/other.typ
echo "#include \"from-md/other.typ\"" >> $currentFileOutput
echo "#suboutline(depth: 1)" >> $currentFileOutput
echo "#set heading(offset: 1)  // globally increase offset" >> $currentFileOutput

for dir in ../content/other/*/
do
  dir=${dir%*/} #remove /
  dir=${dir##*/} #get only filename
  # echo $dir
  generateTypst ../content/other/$dir/_index.md from-md/other-$dir.typ
  echo "#include \"from-md/other-$dir.typ\"" >> $currentFileOutput
done



#Ack
pandoc ../content/about/acknowledgements.md --from markdown --to typst --output from-md/ack.typ

# Generate pdf and put it under static
typst compile privacysandstorm-report.typ ../static/pdf/privacysandstorm-report.pdf