#!/usr/bin/env zx
import prompts from 'prompts'

export async function acceptCmd(question, cmd) {
	const { answer } = await prompts([
		{
			type: 'confirm',
			name: 'answer',
			message: question,
			initial: true,
		},
	])

	if (answer === true) {
		cmd = 'cd ~/shared/shared-configs/shared-dotfiles && ' + cmd;

		await $`eval ${cmd}`
	}
}
