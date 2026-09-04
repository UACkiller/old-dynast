fn command() {
  #{
    name: "clearitems_by_uid",
    aliases: [],
    arguments: [#{ name: "uid", type: "string" }],
  }
}

fn execute(ctx, args) {
  let player = ctx.server.players.get_by_uid(args.uid);
  player.inventory.clear();
  ctx.ok(`Cleared inventory of ${player.nickname}`)
}
