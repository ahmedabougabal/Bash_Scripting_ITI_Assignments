#!/usr/bin/bash
while true; do
  echo "press 1 for ls "
  echo "press 2 for ls -a"
  echo "press 3 for exit  "
  read input
  case $input in
  1)
    ls
    ;;
  2)
    ls -a
    ;;
  3)
    break
    exit 0
    ;;
  *)
    echo "Invalid choice. Please enter 1, 2, or 3."
    ;;
  esac
done
