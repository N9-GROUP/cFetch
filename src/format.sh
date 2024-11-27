#!/bin/bash

if ! command -v clang-format &> /dev/null
then
    echo "clang-format not installed. Please install clang-format and try again."
    exit 1
fi

find . -type f \( -iname "*.c" -o -iname "*.h" \) -exec clang-format -style=file -i -fallback-style=none {} +

echo "🚀 Formatted all C files."
