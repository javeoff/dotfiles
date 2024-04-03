#!/usr/bin/env zx
import { acceptCmd } from './acceptCmd.mjs'

await acceptCmd('Setup system?', 'make system-setup')
await acceptCmd('Setup zsh?', 'make zsh-setup')
await acceptCmd('Setup ssh?', 'make ssh-setup')
await acceptCmd('Setup git?', 'make git-setup')
await acceptCmd('Setup npm?', 'make npm-setup')
await acceptCmd('Setup brew?', 'make brew-setup')
await acceptCmd('Setup neovim?', 'make neovim-setup')
await acceptCmd('Setup hyper?', 'make hyper-setup')
