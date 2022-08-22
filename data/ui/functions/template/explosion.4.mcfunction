# サイズ４爆発
execute at @s run execute store result score $temp ui_temp run gamerule mobGriefing
execute if score $temp ui_temp matches 1 at @s run summon tnt ~ ~ ~
execute if score $temp ui_temp matches 0 at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,ExplosionRadius:4,Invulnerable:1b,CustomName:'[{"text":"爆発","color":"white"}]'}