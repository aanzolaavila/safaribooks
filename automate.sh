#!/bin/bash

set -e

for book in $(cat list.txt); do
  echo "Book: ${book}"
  python3 safaribooks.py "${book}"
done

find . -type f -iname '*.epub' -print -execdir mv {} book.epub \;

find . -iname 'book.epub' -execdir ebook-convert {} book_clear.epub \;
