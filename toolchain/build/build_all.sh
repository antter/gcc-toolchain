#!/bin/bash

# Copyright (c) Joby Aviation 2022
# Original authors: Thulio Ferraz Assis (thulio@aspect.dev), Aspect.dev
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

repo_root=$(git rev-parse --show-toplevel)

"${repo_root}/toolchain/build/build.sh" x86_64 "${repo_root}/toolchain/build" base
"${repo_root}/toolchain/build/build.sh" armv7 "${repo_root}/toolchain/build" base
"${repo_root}/toolchain/build/build.sh" aarch64 "${repo_root}/toolchain/build" base

"${repo_root}/toolchain/build/build.sh" x86_64 "${repo_root}/toolchain/build" X11
