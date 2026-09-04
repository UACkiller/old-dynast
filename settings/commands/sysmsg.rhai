fn command() {
  #{
    name: "sysmsg",
    aliases: [],
    arguments: [#{ name: "message", type: "rest" }],
  }
}

fn execute(ctx, args) {
  ctx.server.broadcast(args.message);
  ctx.ok("System message sent")
}
