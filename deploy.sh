#!/usr/bin/env sh

set -xe

./build.sh && ./build.sh
cp ./Corder_Guy_Resume.pdf ../website/public/resume.pdf
(
    cd ../website                  && \
    git add public/resume.pdf      && \
    git commit -m "Update resume"  && \
    git push                       && \
    firebase deploy
)
