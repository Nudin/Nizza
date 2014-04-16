sed -i 's/^language/langid/' library.bib
sed -i 's/^abstract = {.*},$//' library.bib
grep -v '^abstract' library.bib | grep -v '^ ' | \
	grep -v '^number' | \
	grep -v '^url' | \
	grep -v '^month' | \
	grep -v '^$' | \
	tr -s \  > library.bib.tmp
mv library.bib.tmp library.bib

