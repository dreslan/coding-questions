#!/bin/bash

FILES=$(git diff --diff-filter=M --name-only origin/master..master)

for path in ${FILES[@]}
do
  set +e
  python -m pytest -v $path
  set -e
done

#python -m pytest -v ./question_2/question_2_tests.py