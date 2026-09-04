fn command() {
  #{ name: "resources", aliases: [], arguments: [] }
}

fn execute(ctx, args) {
  let player = ctx.caller.require_player();
  player.inventory.give_many([
    #{ item: "Log", count: 500 },
    #{ item: "Web", count: 500 },
    #{ item: "GoldOre", count: 500 },
    #{ item: "Rock", count: 500 },
    #{ item: "Dust", count: 500 },
    #{ item: "Feather", count: 500 },
    #{ item: "Meat", count: 500 },
    #{ item: "Diamond", count: 500 },
    #{ item: "DarkMatter", count: 500 },
    #{ item: "Fur", count: 500 },
    #{ item: "Bone", count: 500 },
  ]);
  ctx.ok("Resource kit added")
}
