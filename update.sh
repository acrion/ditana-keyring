#!/usr/bin/env bash

KEY=3F8054C3FF755E5544E68516BC333E9AE877D45A

gpg --export --armor "$KEY" > ditana.gpg

if git diff --quiet -- ditana.gpg; then
    echo "ditana.gpg unchanged - skipping keyserver upload."
else
    gpg --keyserver hkps://keyserver.ubuntu.com --send-keys "$KEY"
    gpg --keyserver hkps://keys.openpgp.org     --send-keys "$KEY"
fi

echo
echo "Verify on keyservers:"
echo "  https://keyserver.ubuntu.com/pks/lookup?search=0x${KEY}&fingerprint=on&op=index"
echo "  https://keys.openpgp.org/search?q=0x${KEY}"
