sed -i 's/^language/langid/' library.bib
sed -i 's/^abstract = {.*},$//' library.bib
grep -v '^abstract' library.bib | grep -v '^ ' | \
	grep -v '^number' | \
	grep -v '^url' | \
	grep -v '^month' | \
	grep -v '^$' | \
	tr ' ' ' ' | \
	tr -s '[:blank:]' |\
	sed 's#IAU14,#IAU14,\nurl = {http://www.minorplanetcenter.net/iau/lists/MPLists.html},#'  > library.bib.tmp
mv library.bib.tmp library.bib

