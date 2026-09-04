fn command() {
  #{ name: "release", aliases: [], arguments: [] }
}

fn execute(ctx, args) {
  ctx.server.release_lockdown();
  ctx.ok("Lockdown removed")
}
