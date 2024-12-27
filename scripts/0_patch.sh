#!/usr/bin/env bash
cd "$(dirname $0)/.."
eval "$(/opt/homebrew/bin/brew shellenv)"

set -e

source .dfl/deep/bin/activate

set -e

python3.11 -m pip install --upgrade pip numpy==1.23.5 numexpr opencv-python colorama tqdm future tensorflow-macos tensorflow-metal scipy pillow PyQt5

source .dfl/env/bin/activate

set -e

python3.10 -m pip install --upgrade pip numpy==1.23.5 numexpr opencv-python colorama tqdm future tensorflow-macos tensorflow-metal scipy pillow PyQt5 onnx protobuf>=3.12.2

cp -R .dfl/ffmpeg/ffmpeg .dfl/deep/lib/python3.11/site-packages/

echo "Done."
