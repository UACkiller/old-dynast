fn command() {
  #{ name: "shields", aliases: [], arguments: [] }
}

fn execute(ctx, args) {
  let player = ctx.caller.require_player();
  player.inventory.give_many([
    "SimpleShield",
    "GoldenShield",
    "DarkShield",
    "SpikeShield",
    "DiamondShield",
    "ReflectShield",
  ]);
  ctx.ok("Shield kit added")
}
