fn command() {
  #{
    name: "clearitems_by_nickname",
    aliases: ["clearitems"],
    arguments: [#{ name: "nickname", type: "string" }],
  }
}

fn execute(ctx, args) {
  let player = ctx.server.players.require_by_nickname(args.nickname);
  player.inventory.clear();
  ctx.ok(`Cleared inventory of ${player.nickname}`)
}
