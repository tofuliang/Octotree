#!/bin/zsh

dir=$1
cd $dir
rm  -fr _metadata manifest.fingerprint ../src
sed -i 's/function\s\([a-z]\{1,\}([a-z]\{1,\})\){return [a-z]\{1,\}===[a-z]\{1,\}}/function \1{return !0}/g' content.js
sed -i '/differential_fingerprint/d' manifest.json
sed -i '/key/d' manifest.json
sed -i 's/"version":\s\{1,\}"\(.*\)"/"version": "99.\1"/' manifest.json
sed -i 's/"update_url":\s\{1,\}"\(.*\)"/"update_url": "https:\/\/raw.githubusercontent.com\/tofuliang\/octotree\/master\/update.xml"/' manifest.json
cd ..

ver=$dir[1,-3]
sed -i "s/\"\sversion=\"[0-9\.]*\"/\" version=\"99.${ver}\"/" update.xml
mv $dir src