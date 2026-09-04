fn command() {
  #{
    name: "item",
    aliases: [],
    arguments: [
      #{ name: "item", type: "string" },
      #{ name: "count", type: "int", required: false, default_value: 1 },
    ],
  }
}

fn execute(ctx, args) {
  let player = ctx.caller.require_player();
  player.inventory.give(args.item, args.count);
  ctx.ok(`Received ${args.count} ${args.item}`)
}
