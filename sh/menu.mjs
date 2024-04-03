#!/usr/bin/env zx
import { selectCmd } from './selectCmd.mjs';

await selectCmd('Choose command', [
  {
    name: 'Install',
    cmd: 'make install',
  },
  {
    name: 'Setup',
    cmd: 'make setup',
  },
  {
    name: 'Install npm',
    cmd: 'make npm-install',
  },
  {
    name: 'Install homebrew',
    cmd: 'make brew-install',
  },
  {
    name: 'Update homebrew',
    cmd: 'make brew-update',
  },
  {
    name: 'Setup system',
    cmd: 'make system-setup',
  },
  {
    name: 'Setup neovim',
    cmd: 'make neovim-setup',
  },
  {
    name: 'Setup hyper',
    cmd: 'make hyper-setup',
  },
  {
    name: 'Setup zsh',
    cmd: 'make zsh-setup',
  },
  {
    name: 'Setup ssh',
    cmd: 'make ssh-setup',
  },
  {
    name: 'Setup git',
    cmd: 'make git-setup',
  },
])
