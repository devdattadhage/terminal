const rootDirectory = 'nutshell ~ %';
let currDirectory = rootDirectory;

const directory = function() {
  currentDirectory = 
}

const runCd = function (args) {
  currDirectory = args.join();
  return;
}

const runCommand = function (userCommand) {
  const [command, ...args] = userCommand.split(' ');

  switch (command) {
    case 'echo': return args.join();
    case 'cd': return runCd(args);

    default: return 'zsh: command not found: ' + command;
  }
}

const shell = function () {
  while (true) {
    const userCommand = prompt(currDirectory);

    const commandOutput = runCommand(userCommand);

    console.log(commandOutput);
  }
}

shell();