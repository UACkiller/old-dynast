fn command() {
  #{
    name: "kick_all_by_nickname",
    aliases: ["kick_all"],
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
  let players = ctx.server.players.find_all_by_nickname(args.nickname);
  if players.len == 0 {
    throw `player ${args.nickname} was not found`;
  }
  let count = players.len;
  for player in players {
    player.kick(args.reason);
  }
  ctx.ok(`Kicked ${count} matching player session(s)`)
}
