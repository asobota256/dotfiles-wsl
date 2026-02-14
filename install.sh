#!/bin/sh

FILES=".bashrc
       .bash_profile
       .gitconfig
       .vimrc"

DIRS=".vim/after/ftplugin
      .vim/after/syntax"

REPO=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)

for file in ${FILES}; do
  ln --symbolic --force --verbose \
    "${REPO}/${file}" \
    "${HOME}/${file}"
done

for dir in ${DIRS}; do
  mkdir --parents --verbose "${HOME}/${dir}"
  for file in "${REPO}/${dir}/"*; do
    ln --symbolic --force --verbose \
      "${file}" \
      "${HOME}/${dir}/$(basename -- "${file}")"
  done
done
