#!/usr/bin/env bash
# AIX memory summary.
# Copyright (c) 2026 Mohamed Dawood. MIT License; see LICENSE.
set -eu
svmon -G -O unit=GB
printf '\nMemory used (GB):\n'
svmon -G -O unit=GB | awk '/^in use/ {print $3}'
printf '\nMemory used (%%):\n'
svmon -G -O unit=GB | awk '/^memory/ {m=$2}; /^in use/ {if (m > 0) print 100*$3/m}'
printf '\nTop processes by memory:\n'
svmon -Pt15
