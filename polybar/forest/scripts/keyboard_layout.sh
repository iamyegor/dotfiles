#!/bin/bash
layout=$(~/xkblayout-state/xkblayout-state print "%n" | cut -c1-2)
echo $layout | tr '[:lower:]' '[:upper:]'

