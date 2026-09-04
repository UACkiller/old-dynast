fn command() {
  #{
    name: "ban_by_nickname",
    aliases: ["ban"],
    arguments: [
      #{ name: "nickname", type: "string" },
      #{ name: "minutes", type: "float" },
      #{
        name: "reason",
        type: "rest",
        required: false,
        default_value: "Banned by Administrator",
      },
    ],
  }
}

fn execute(ctx, args) {
  let player = ctx.server.players.require_by_nickname(args.nickname);
  let nickname = player.nickname;
  player.ban(args.minutes, args.reason);
  ctx.ok(`Player ${nickname} was banned for ${args.minutes} minutes`)
}
