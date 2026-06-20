#!/bin/bash
ls -l --time-style=long-iso | sed '/^total /d' | awk '{print $1, $6, $7, $8}'  