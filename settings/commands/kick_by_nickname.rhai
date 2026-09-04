fn command() {
  #{
    name: "kick_by_nickname",
    aliases: ["kick"],
    arguments: [
      #{ name: "nickname", type: "string" },
      #{
        name: "reason",
        type: "rest",
        required: false,
        default_value: "By Administrator",
      },
    ],
  }
}

fn execute(ctx, args) {
  let player = ctx.server.players.require_by_nickname(args.nickname);
  let nickname = player.nickname;
  player.kick(args.reason);
  ctx.ok(`Player ${nickname} was kicked`)
}
