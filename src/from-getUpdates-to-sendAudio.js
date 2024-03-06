const fs = require('fs')
const path = require('path')
const { spawn } = require('child_process')

const getUpdatesPath = path.resolve('.', 'data/getUpdates')

fs.readdirSync(getUpdatesPath).map((updateId) => {
    const pathname = path.resolve(getUpdatesPath, updateId)

    fs.readdirSync(pathname).filter((name) => name == 'resp.json').map((name) => {
        const json = JSON.parse(fs.readFileSync(path.resolve(pathname, name)))

        Array.from(json.result).map(({ message: { text, from: { id } }, }) => {
            const ls = spawn('sh', ['./src/sendAudio.sh', id, text])

            ls.stdout.on('data', (data) => console.log(`stdout: ${data}`))

            ls.stderr.on('data', (data) => console.error(`stderr: ${data}`))

            ls.on('close', (code) => console.log(`child process exited with code ${code}`))
        })
    })
})
