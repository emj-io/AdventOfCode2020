const args = process.argv.slice(2);
const day = require(`./day${args[0]}.js`)

console.log(day.run());
