#!/usr/bin/env zx
import { acceptCmd } from './acceptCmd.mjs'

await acceptCmd('Install zsh?', 'make zsh-install')
await acceptCmd('Install brew?', 'make brew-install')
