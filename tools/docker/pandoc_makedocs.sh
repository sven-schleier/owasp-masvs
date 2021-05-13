#!/bin/bash

set -eo pipefail

# Input variables
FOLDER=${1:-Document}
VERSION=${2:-SNAPSHOT}

# You can also use the environment variables below to adapt the build process
IMG=${IMG:-dalibo/pandocker}
TAG=${TAG:-stable} # /!\ use stable-full for non-european languages
LATEX_TEMPLATE=${LATEX_TEMPLATE:-eisvogel}
TITLE=${TITLE:-OWASP Mobile Application Security Verification Standard ${VERSION}}

PANDOC_PARAMS=${PANDOC_PARAMS:-}
PANDOC_PARAMS+="--resource-path=.:${FOLDER} "
PANDOC_PARAMS+="--metadata version=${VERSION} "

[ ! -z "${VERBOSE}" ] && PANDOC_PARAMS+="--verbose "

PANDOCKER="docker run --rm --volume `pwd`:/pandoc ${IMG}:${TAG} ${PANDOC_PARAMS}"

# remove the HTML comment from \pagebreak
if [[ "$OSTYPE" == "darwin"* ]]; then
  gsed -i 's#<!-- \(.*\) -->#\1#g' Document*/*.md
else
  sed -i 's#<!-- \(.*\) -->#\1#g' Document*/*.md
fi

# Use pandocker PANDOCKER by default, unless `export PANDOC=pandoc`
# this is useful for CI, because we can run the script directly inside the container
PANDOC=${PANDOC:-${PANDOCKER}}

if [ ${FOLDER} == "Document" ]; then
  LANGUAGE='en'
else
  LANGUAGE=$(echo ${FOLDER} | sed 's/Document-//')
fi

METADATA="Document/metadata.md ${FOLDER}/metadata.md"
CHAPTERS="${FOLDER}/0x*.md ${FOLDER}/CHANGELOG.md"
OUTPUT_BASE_NAME="OWASP_MASVS-${VERSION}-${LANGUAGE}"

[ ! -z "${VERBOSE}" ] && echo "Create PDF"

# header
${PANDOC} \
  --output tmp_latex-header.latex \
  --template tools/docker/latex-header.tex \
  ${METADATA}

# cover
${PANDOC} \
  --output tmp_cover.latex \
  --template tools/docker/cover.tex \
  ${METADATA}

# first_page
${PANDOC} \
  --output tmp_first_page.latex \
  --template tools/docker/first_page.tex \
  ${METADATA}

# PDF
${PANDOC} \
  --template=${LATEX_TEMPLATE} \
  --pdf-engine=xelatex \
  --columns 50 \
  --highlight-style=tango \
  --metadata title="${TITLE}" \
  --include-in-header tmp_latex-header.latex \
  --include-before-body tmp_cover.latex \
  --include-before-body tmp_first_page.latex \
  --output ${OUTPUT_BASE_NAME}.pdf \
  ${METADATA} \
  ${CHAPTERS}

# EPUB
${PANDOC} \
  --metadata title="${TITLE}" \
  --metadata author="Bernhard Mueller, Sven Schleier, Jeroen Willemsen, and Carlos Holguera" \
  --epub-cover-image=cover.jpg \
  -o ${OUTPUT_BASE_NAME}.epub \
  ${METADATA} \
  ${CHAPTERS}

# MOBI
# kindlegen is deprecated
#kindlegen ${OUTPUT_BASE_NAME}.epub

# DOCX
${PANDOC} \
  --metadata title="${TITLE}" \
  --toc \
  --number-sections \
  --columns 10000 \
  --self-contained \
  --standalone \
  --reference-doc tools/custom-reference.docx \
  -o ${OUTPUT_BASE_NAME}_WIP_.docx \
  ${METADATA} \
  ${CHAPTERS}


# clean temp files
rm -f tmp_latex-header.latex tmp_cover.latex tmp_first_page.latex
