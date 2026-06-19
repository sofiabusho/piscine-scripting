#!/bin/bash
ls -1tup | tr '\n' ',' | sed 's/,$//'