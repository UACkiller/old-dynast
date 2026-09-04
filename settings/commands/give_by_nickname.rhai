fn command() {
  #{
    name: "give_by_nickname",
    aliases: ["give"],
    arguments: [
      #{ name: "nickname", type: "string" },
      #{ name: "item", type: "string" },
      #{ name: "count", type: "int", required: false, default_value: 1 },
    ],
  }
}

fn execute(ctx, args) {
  let player = ctx.server.players.require_by_nickname(args.nickname);
  player.inventory.give(args.item, args.count);
  ctx.ok(`Gave ${args.count} ${args.item} to ${player.nickname}`)
}
