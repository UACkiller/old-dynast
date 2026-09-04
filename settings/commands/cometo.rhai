fn command() {
  #{
    name: "cometo",
    aliases: [],
    arguments: [#{ name: "nickname", type: "string" }],
  }
}

fn execute(ctx, args) {
  let caller = ctx.caller.require_player();
  let target = ctx.server.players.require_by_nickname(args.nickname);
  caller.teleport_to(target);
  ctx.ok(`Teleported to ${target.nickname}`)
}
