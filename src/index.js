const days = require("./days");


const fs = require('fs');

let day01RawData = fs.readFileSync('./data/day01/part1.json');
let day01Data = JSON.parse(day01RawData);
console.log(`day01: ${days.day01(day01Data["entries"], day01Data["targetSum"])}`);