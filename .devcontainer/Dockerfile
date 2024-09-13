# ===----------------------------------------------------------------------=== #
# Copyright (c) 2023, Modular Inc. All rights reserved.
#
# Licensed under the Apache License v2.0 with LLVM Exceptions:
# https://llvm.org/LICENSE.txt
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# The Dockerfile is provided as reference. Please review the redistribution
# terms of the Mojo license in Section 1 (https://www.modular.com/legal/mojo)
# prior to distributing pre-built container images.
# ===----------------------------------------------------------------------=== #

# Example command line:
# Use no-cache to force docker to rebuild layers of the image by downloading the SDK from the repos
# ./build-image.sh --mojo-version

FROM ubuntu:focal

ARG DEFAULT_TZ=America/Los_Angeles
ENV DEFAULT_TZ=$DEFAULT_TZ

RUN apt-get update \
   && DEBIAN_FRONTEND=noninteractive TZ=$DEFAULT_TZ apt-get install -y \
   tzdata \
   vim \
   nano \
   sudo \
   curl \
   wget \
   git && \
   rm -rf /var/lib/apt/lists/*

# NodeJS
RUN apt-get update && apt-get install \
apt-transport-https \
curl \
-y
RUN set -uex; \
  apt-get update; \
  apt-get install -y ca-certificates curl gnupg; \
  mkdir -p /etc/apt/keyrings; \
  curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key \
   | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg; \
  NODE_MAJOR=18; \
  echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" \
   > /etc/apt/sources.list.d/nodesource.list; \
  apt-get -qy update; \
  apt-get -qy install nodejs;
RUN apt-get update && apt-get install nodejs -y

RUN npm i -g nodemon

RUN curl -s https://get.modular.com | sh -
RUN modular install mojo

ARG MODULAR_HOME="/root/.modular"
ENV MODULAR_HOME=$MODULAR_HOME
ENV PATH="$PATH:$MODULAR_HOME/pkg/packages.modular.com_mojo/bin"
ENV PATH="$PATH:$MODULAR_HOME/bin"

RUN curl -ssL https://magic.modular.com | bash

# Change permissions to allow for Apptainer/Singularity containers
RUN chmod -R a+rwX /root
