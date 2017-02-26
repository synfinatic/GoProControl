all: bom

bom:
	xsltproc -o "kicad/goprocontrol-bom.csv" \
	    "/Applications/Kicad/kicad.app/Contents/SharedSupport/plugins/bom_with_title_block_2_csv.xsl" \
	    "kicad/goprocontrol.xml"
