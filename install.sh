#!/bin/sh

REPO=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)

# bash
ln --symbolic --force --verbose \
  "${REPO}/.bashrc" \
  "${HOME}/.bashrc"
ln --symbolic --force --verbose \
  "${REPO}/.bash_profile" \
  "${HOME}/.bash_profile"

# git
ln --symbolic --force --verbose \
  "${REPO}/.gitconfig" \
  "${HOME}/.gitconfig"

# vim
ln --symbolic --force --verbose \
  "${REPO}/.vimrc" \
  "${HOME}/.vimrc"

FTPLUGIN=".vim/after/ftplugin"
mkdir --parents --verbose "${HOME}/${FTPLUGIN}"
for file in "${REPO}/${FTPLUGIN}/"*; do
  ln --symbolic --force --verbose \
    "${file}" \
    "${HOME}/${FTPLUGIN}/$(basename -- "${file}")"
done

SYNTAX=".vim/after/syntax"
mkdir --parents --verbose "${HOME}/${SYNTAX}"
for file in "${REPO}/${SYNTAX}/"*; do
  ln --symbolic --force --verbose \
    "${file}" \
    "${HOME}/${SYNTAX}/$(basename -- "${file}")"
done
