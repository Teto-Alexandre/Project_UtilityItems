#
    scoreboard players add @s ui_tmw237_boost 1
    scoreboard players operation $boost ui_temp = @s ui_tmw237_boost
    scoreboard players remove $boost ui_temp 2
    execute if score $boost ui_temp matches 281 run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2 0
    execute if score $boost ui_temp matches 281 run tellraw @s [{"text":"[","color":"gray"},{"text":"スーパーブースト","color":"yellow"},{"text":"]","color":"gray"},{"text":"のチャージが完了しました！","color":"white"}]
    execute if score $boost ui_temp matches 281 run scoreboard players reset @s ui_tmw237_boost

#
    execute if score $boost ui_temp matches 0 run execute in overworld store result score $cooltime ui_temp run time query gametime
    execute if score $boost ui_temp matches 0 run scoreboard players add $cooltime ui_temp 80
    execute if score $boost ui_temp matches 0 run scoreboard players set $changed ui_temp 1
    execute if score $boost ui_temp matches 80 at @s run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.5 1.5
    execute if score $boost ui_temp matches 80 at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 1 50 force
    execute if score $boost ui_temp matches 0 at @s run playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 1 1
    execute if score $boost ui_temp matches 0 at @s run playsound block.iron_door.close player @a ~ ~ ~ 1.5 0.5
    execute if score $boost ui_temp matches 0 at @s run particle crit ~ ~ ~ 0.5 0.5 0.5 1 50 force
    execute if score $boost ui_temp matches 1..19 at @s run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 0 1 force
    execute if score $boost ui_temp matches 0..19 at @s run tp @s @s
    execute if score $boost ui_temp matches 20 at @s run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
    execute if score $boost ui_temp matches 20 at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 1 50 force
    execute if score $boost ui_temp matches 20 at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
    execute if score $boost ui_temp matches 20 at @s run tp @s @s
    execute if score $boost ui_temp matches 20 at @s run effect give @s levitation 1 25 true
    execute if score $boost ui_temp matches 25 at @s run effect clear @s levitation
    execute if score $boost ui_temp matches 40 at @s run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
    execute if score $boost ui_temp matches 40 at @s run particle dust 1 1 1 3 ~ ~1 ~ 1 1 1 0 15 force
    execute if score $boost ui_temp matches 40 at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 1 50 force
    execute if score $boost ui_temp matches 40 at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 40 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $boost ui_temp matches 39..41 at @s run tp @s @s
    execute if score $boost ui_temp matches 41 run effect give @s levitation 1 49 true
    execute if score $boost ui_temp matches 43 run effect clear @s levitation
    execute if score $boost ui_temp matches 41 run scoreboard players set $motionslime ui_world 1

#
    execute if score $boost ui_temp matches 33..70 at @s run particle explosion ~ ~1 ~ 1 1 1 0 2 force
    execute if score $boost ui_temp matches 33..70 at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0 10 force
