#!/bin/bash

set -ex

echo "Make sure that you downloaded and unpacked into source directory latest drivers from Broadcom site."
echo "In source directory should be bcbtums.inf and *.hex files."
echo "Other stuff is not required."

echo ""
echo "Removing old hcd-files..."

rm -fr brcm/*.hcd

echo ""
echo "Generating new hcd-files..."

tools/bt-fw-converter.pl -f source/6.5.x/bcbtums-win7x86-brcm.inf -f source/12.0.x/bcbtums.inf -d DEVICES.md -o brcm/

echo ""
echo "Done!"
