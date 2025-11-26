#!/bin/sh



#Ack
pandoc ../content/en/about/acknowledgement.md --from markdown+raw_attribute --output from-md/ack.typ

# Generate pdf and put it under static
typst compile privacysandstorm.typ ../static/pdf/privacysandstorm-report.pdf