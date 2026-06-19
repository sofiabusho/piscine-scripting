#!/bin/bash
ls -l | sed '/^total /d' | sed -n '1~2p'