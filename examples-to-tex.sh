#!/usr/bin/env bash
# SPDX-FileCopyrightText: Copyright (c) 2016-2025 Objectionary.com
# SPDX-License-Identifier: MIT

set -e -o pipefail

dir=$1

while IFS= read -r f; do
    phino merge "${f}" runtime.phi | phino rewrite --normalize --nonumber --sequence --output=latex --flat --sweet
done < <(find "${dir}" -name '*.phi' -type f)
