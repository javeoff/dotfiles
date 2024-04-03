#!/usr/bin/env zx

const MAIN_PATH = '/Users/bondarev/.ssh/servers';

if (!fs.pathExistsSync(MAIN_PATH)) {
    fs.outputFileSync(MAIN_PATH, 'example.com');
}

const servers = (fs
    .readFileSync(MAIN_PATH, 'utf8')
    ?.split('\n')
    ?.filter((row) => row !== undefined))
    || [];

const prompts = require('prompts') // npm install prompts
const questions = [
    {
        type: 'select',
        name: 'server',
        message: 'Which ssh server to connect: ',
        choices: servers.map((server) => ({
            title: server,
            value: server,
        })),
    },
]

const response = await prompts(questions)
const cmd = response.server
if (cmd) {
    await $`eval ssh ${cmd}`
}
