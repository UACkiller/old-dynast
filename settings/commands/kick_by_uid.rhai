fn command() {
  #{
    name: "kick_by_uid",
    aliases: [],
    arguments: [
      #{ name: "uid", type: "string" },
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
  let players = ctx.server.players.find_all_by_uid(args.uid);
  if players.len == 0 {
    throw `player with uid ${args.uid} was not found`;
  }
  let count = players.len;
  for player in players {
    player.kick(args.reason);
  }
  ctx.ok(`Kicked ${count} active player session(s)`)
}
