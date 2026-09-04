fn command() {
  #{
    name: "teleport",
    aliases: [],
    arguments: [
      #{ name: "x", type: "float" },
      #{ name: "y", type: "float" },
    ],
  }
}

fn execute(ctx, args) {
  let player = ctx.caller.require_player();
  player.teleport(args.x, args.y);
  ctx.ok(`Teleported to ${args.x}, ${args.y}`)
}
