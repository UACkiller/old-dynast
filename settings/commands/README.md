# Rhai admin commands

Every `*.rhai` file in this directory defines one command:

```rhai
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
```

Supported argument types are `string`, `int`, `float`, and `rest`. A `rest`
argument must be last. Command names and aliases are unique and are validated
when the server starts.

## API

```text
ctx.server
ctx.server.players
ctx.caller
ctx.ok(message)

players.get_by_uid(uid)
players.find_all_by_uid(uid)
players.require_by_nickname(nickname)
players.find_all_by_nickname(nickname)

caller.source
caller.is_player
caller.require_player()

player.uid
player.nickname
player.inventory
player.kick(reason)
player.ban(minutes, reason)
player.unban()
player.send_message(message)
player.teleport(x, y)
player.teleport_to(other_player)
player.set_coins(count)
player.change_coins(count)

inventory.give(item, count)
inventory.give_many(items)
inventory.clear()

server.lockdown(reason, minutes)
server.release_lockdown()
server.broadcast(message)
```

Mutations are staged while a script runs and applied only after it completes
successfully. Player handles contain both the ECS entity index and generation,
so a stale handle cannot affect a newly reused entity.

## Invocation

In game, use the normal admin command input:

```text
/cmd give player_name Sword 1
/cmd kick_by_uid user-id Maintenance
```

The HTTP endpoint accepts the same command line and requires the server
`auth_secret`:

```sh
curl -X POST http://127.0.0.1:PORT/cmd \
  --data-urlencode 'command=give player_name Sword 1' \
  --data-urlencode 'secret=AUTH_SECRET'
```

Scripts are loaded at server startup. Invalid or duplicate descriptors fail
startup instead of leaving a partially loaded command set.
