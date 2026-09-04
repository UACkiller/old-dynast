fn command() {
  #{
    name: "change_coins",
    aliases: [],
    arguments: [#{ name: "count", type: "int" }],
  }
}

fn execute(ctx, args) {
  let player = ctx.caller.require_player();
  player.change_coins(args.count);
  ctx.ok(`Coins changed by ${args.count}`)
}
