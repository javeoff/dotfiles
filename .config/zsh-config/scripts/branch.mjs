#!/usr/bin/env zx

let branch = await $`git branch --show-current`

echo`Current branch is ${chalk.red(branch)}`