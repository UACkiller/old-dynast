fn command() {
  #{ name: "hats", aliases: [], arguments: [] }
}

fn execute(ctx, args) {
  let player = ctx.caller.require_player();
  player.inventory.give_many([
    "PropellerHat",
    "BushHat",
    "CowHat",
    "SpeedHat",
    "LampHat",
    "FurHat",
    "BoneHat",
    "SpikeHat",
    "CrownHat",
    "DruidHat",
    "VampireHat",
    "BearHat",
    "TechHat",
    "TouristHat",
    "ThiefHat",
    "JasonHat",
    "PumpkinHat",
    "ShooterHat",
    "SonicHat",
    "RocketHat",
    "MedicineHat",
    "SantaHat",
    "CactusHat",
  ]);
  ctx.ok("Hat kit added")
}
