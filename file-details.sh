#!/bin/bash
ls -l --time-style=long-iso hard-perm/ | sed '/^total /d' | awk '{print $1, $6, $7, $8}'  