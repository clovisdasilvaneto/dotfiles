#!/bin/bash

# Based on 'Statistics Over Git Repositories' from Gary Bernhardt's 'Destroy
# All Software' screencast series

set -e

revisions() {
  git rev-list --reverse HEAD
}

commit_date() {
  git show --format="%cD" "$rev" | head -n 1
}

number_of_lines() {
  git ls-tree -r "$rev" |
  awk '{print $3}' |
  xargs git show |
  wc -l
}

for rev in $(revisions); do
  printf "%s\t%s\n" "$(number_of_lines | xargs)" "$(commit_date)"
done
