#!/usr/bin/env zx

let date = await $`date`
await $`echo Current date is ${date}.`