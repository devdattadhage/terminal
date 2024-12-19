const rootDirectory = 'nutshell ~ %';
let currDirectory = rootDirectory;

const directory = function (args) {
  return 'nutshell ' + args + ' %';
}

const runCd = function (args) {
  currDirectory = directory(args.join());
}

const runEcho = function (args) {
  console.log(args.join(" "));
}

const runCommand = function (userCommand) {
  const [command, ...args] = userCommand.split(' ');

  switch (command) {
    case 'echo': return runEcho(args);
    case 'cd': return runCd(args);

    default: console.log('zsh: command not found: ' + command);
  }
}

const shell = function () {
  while (true) {
    const userCommand = prompt(currDirectory);

    runCommand(userCommand);
  }
}

shell();