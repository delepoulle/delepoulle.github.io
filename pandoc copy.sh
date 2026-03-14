#!/usr/bin/env bash

pandoc index.md -f markdown -o index.html --template=easy_template.html --toc --metadata title="Samuel Delepoulle"
pandoc hdr.md -f markdown -o hdr.html --template=easy_template.html --toc --metadata title="Samuel Delepoulle"
pandoc temporal_noise.md -f markdown -o temporal_noise.html --template=easy_template.html --metadata title="Temporal Noise"
pandoc lampes.md -f markdown -o lampes.html --template=easy_template.html --toc --metadata title="Dispositifs d'éclairage anciens : Samuel Delepoulle - Benjamin Bothereau - Christophe Renaud"