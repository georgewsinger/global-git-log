#! /usr/bin/env node

var min = require('minimist');
var argv = min(process.argv.slice(2));

var exec = require('child_process').exec;
var one = argv["_"][0] ? argv["_"][0] : "1.day";
var two = argv["_"][1] ? argv["_"][1] : "~";

function puts(error, stdout, stderr) { console.log(stdout) };
exec("./gg-log.sh " + one + " " + two, puts);
