#!/usr/bin/env zx

import prompts from 'prompts'

/**
	* @param title - string
	* @param collection - { name: string; cmd: string }
 **/
export async function selectCmd(title, collection) {
	const { answer } = await prompts([
		{
			type: 'select',
			name: 'answer',
			message: title,
			choices: collection.map((item) => ({
					title: item.name,
					value: item.name,
				}))
		}	
	])

	const collectionItem = collection.find((item) => item.name === answer)

	await $`eval ${collectionItem.cmd}`
}
