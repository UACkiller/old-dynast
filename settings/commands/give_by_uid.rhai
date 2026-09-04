fn command() {
  #{
    name: "give_by_uid",
    aliases: [],
    arguments: [
      #{ name: "uid", type: "string" },
      #{ name: "item", type: "string" },
      #{ name: "count", type: "int", required: false, default_value: 1 },
    ],
  }
}

fn execute(ctx, args) {
  let player = ctx.server.players.get_by_uid(args.uid);
  player.inventory.give(args.item, args.count);
  ctx.ok(`Gave ${args.count} ${args.item} to ${player.nickname}`)
}
