#
#say act

#
tag @s add This
summon skeleton 0 100 0 {DeathTime:19s,PersistenceRequired:1b,Tags:["1"],DeathLootTable:"ui:empty"}
summon arrow 0 98 0 {Motion:[0.0d,10.0d,0.0d],Tags:["New"]}

execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}
execute positioned 0 1000 0 anchored eyes run summon creeper ^ ^ ^ {ExplosionRadius:1b,ignited:1b,Fuse:0s,Invulnerable:1b,PersistenceRequired:1b}

summon skeleton 0 200 0 {DeathTime:19s,PersistenceRequired:1b,Tags:["2"],DeathLootTable:"ui:empty"}
summon arrow 0 198 0 {Motion:[0.0d,10.0d,0.0d],Tags:["New"]}

execute as @e[tag=New] run data modify entity @s Owner set from entity @a[limit=1,tag=This] UUID
tag @e[tag=New] remove New
tag @s remove This

# 発動成功
scoreboard players set $success ui_temp 1