var argv = require('minimist')(process.argv.slice(2));
//var sys = require('sys');
var exec = require('child_process').exec;
//console.dir(argv["_"][0]);
//console.dir(argv);
var one = argv["_"][0] ? argv["_"][0] : "";
var two = argv["_"][1] ? argv["_"][1] : "";

function puts(error, stdout, stderr) { console.log(stdout) };
//exec("./ggl.sh " + argv["_"][0] + " " + argv["_"][1], puts);
exec("./ggl.sh " + one + " " + two, puts);
