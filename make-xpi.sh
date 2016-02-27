#!/bin/bash

cd theme

VERSION=$(cat install.rdf | grep em:version | cut -f2 -d'>' | cut -f1 -d'<')

zip -FS -r ../elementary-firefox-$VERSION.xpi *

cd -

ln -sf elementary-firefox-$VERSION.xpi elementary-firefox.xpi
