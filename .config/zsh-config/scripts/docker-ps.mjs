#!/usr/bin/env zx

// echo`${JSON.stringify(argv)}`
let result = (await $`docker ps ${argv.a ? '-a' : ''}`).stdout
let rows = result.split('\n');

let editedRows = rows.map(row => {
    // return chalk.red(row.split(/[\s,]+/).join('\n'))
    const columns = row.split(/[ ]{2,}/).map((line) => line.trim()).filter((item) => !!item);
    const [
        containerId,
        image,
        command,
        created,
        updated,
        ports,
        name,
    ] = columns;

    if (!!argv.filter && !name?.includes(argv.filter)) {
        return;
    }

    if (!containerId || containerId === 'CONTAINER ID') {
        return;
    }

    const getColorByTime = (time) => {
        if (time.includes('Up')) {
            return 'green';
        }
        if (time.includes('Created')) {
            return 'cyan';
        }
        if (time.includes('Running')) {
            return 'yellow';
        }
        if (time.includes('Exited')) {
            return 'white'
        }
        if (time.includes('Paused')) {
            return 'black'
        }
        if (time.includes('Stopped')) {
            return 'red';
        }
    }

    const getShortenTime = (time) => {
        let words = time.replace('ago', '').trim().split(' ');
        words[words.length - 2] = words[words.length - 2] + words[words.length - 1][0];
        words.pop()
        return words.join(' ');
    }

    const capitalizeFirstLetter = (str) => {
      return str.charAt(0).toUpperCase() + str.slice(1);
    }

    const getTag = (str, color = 'yellow') => {
        if (color === 'black') {
            return ` ${chalk.bgBlack.white(str)} `
        }

        const bg = (s) => chalk[`bg${capitalizeFirstLetter(color)}`].black(s);
        return `${bg(' ')}${bg(str)}${bg(' ')}`;
    }

    let text = '';
    text += `ID: ${chalk.bold(containerId)}\n`;
    text += `CONTAINER: ${chalk.bold(name)}\n`;
    text += `IMAGE: ${chalk.bold(image)}\n`;
    text += `CREATED: ${getTag(getShortenTime(created))}\n`;
    // text += `STATUS: ${getColorizedStatus()} `;
    text += `STATUS: ${getTag(getShortenTime(updated), getColorByTime(updated))}\n`;
    text += `${ports}`

    return text;
})

echo`${editedRows.filter(item => item !== undefined).join('\n\n')}`

