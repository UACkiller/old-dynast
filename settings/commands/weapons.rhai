fn command() {
  #{ name: "weapons", aliases: [], arguments: [] }
}

fn execute(ctx, args) {
  let player = ctx.caller.require_player();
  player.inventory.give_many([
    "Sword",
    "Bow",
    "Arrow",
    "Axe",
    "Club",
    "Hammer",
    "Fireball",
    "Boneclub",
    "GoldenBow",
    "Katana",
    "Extinguisher",
    "GoldenAxe",
    "DarkSword",
    "FireballWeapon",
    "GoldenHammer",
    "Machete",
    "VikingAxe",
    "Boomerang",
    "FryingPane",
    "BatWithNails",
    "CrowBar",
    "LaserSword",
    "Spit",
    "Spear",
    "Pickaxe",
    "GoldenPickaxe",
    "GoldenSword",
    "DarkBoomerang",
    "DarkThrowingKnife",
    "Snowball",
    "DarkSpear",
    "DiamondAxe",
    "DiamondPickaxe",
    "MagicWand",
    "MagicBall",
    "Tool",
  ]);
  ctx.ok("Weapon kit added")
}
