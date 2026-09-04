fn command() {
  #{
    name: "ban_by_uid",
    aliases: [],
    arguments: [
      #{ name: "uid", type: "string" },
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
  let player = ctx.server.players.get_by_uid(args.uid);
  player.ban(args.minutes, args.reason);
  ctx.ok(`Player ${player.nickname} was banned for ${args.minutes} minutes`)
}
