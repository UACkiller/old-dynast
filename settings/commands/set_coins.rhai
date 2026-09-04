fn command() {
  #{
    name: "set_coins",
    aliases: [],
    arguments: [#{ name: "count", type: "int" }],
  }
}

fn execute(ctx, args) {
  let player = ctx.caller.require_player();
  player.set_coins(args.count);
  ctx.ok(`Coins set to ${args.count}`)
}
