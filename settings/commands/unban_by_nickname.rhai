fn command() {
  #{
    name: "unban_by_nickname",
    aliases: ["unban"],
    arguments: [#{ name: "nickname", type: "string" }],
  }
}

fn execute(ctx, args) {
  let player = ctx.server.players.require_by_nickname(args.nickname);
  player.unban();
  ctx.ok(`Player ${player.nickname} was unbanned`)
}
