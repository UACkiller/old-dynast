fn command() {
  #{
    name: "lockdown",
    aliases: [],
    arguments: [
      #{ name: "minutes", type: "float" },
      #{ name: "reason", type: "rest" },
    ],
  }
}

fn execute(ctx, args) {
  ctx.server.lockdown(args.reason, args.minutes);
  ctx.ok(`Server locked down for ${args.minutes} minutes: ${args.reason}`)
}
