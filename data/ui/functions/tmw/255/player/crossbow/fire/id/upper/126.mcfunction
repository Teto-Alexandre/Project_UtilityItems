# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 50

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
    execute if score $firetime.temp ui_temp matches 0 at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 1 50 force
    execute if score $firetime.temp ui_temp matches 0 at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
    execute if score $firetime.temp ui_temp matches 0 at @s run tp @s @s
    execute if score $firetime.temp ui_temp matches 0 at @s run effect give @s levitation 1 40 true
    execute if score $firetime.temp ui_temp matches 5 at @s run effect clear @s levitation
    execute if score $firetime.temp ui_temp matches 20 at @s run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
    execute if score $firetime.temp ui_temp matches 20 at @s run particle dust 1 1 1 3 ~ ~1 ~ 1 1 1 0 15 force
    execute if score $firetime.temp ui_temp matches 20 at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 1 50 force
    execute if score $firetime.temp ui_temp matches 20 at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run summon slime ^ ^ ^-0.2 {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    execute if score $firetime.temp ui_temp matches 19..21 at @s run tp @s @s
    execute if score $firetime.temp ui_temp matches 21 run effect give @s levitation 1 49 true
    execute if score $firetime.temp ui_temp matches 23 run effect clear @s levitation
    execute if score $firetime.temp ui_temp matches 21 run scoreboard players set $motionslime ui_world 1

#
    execute if score $firetime.temp ui_temp matches 23..60 at @s run particle explosion ~ ~1 ~ 1 1 1 0 2 force
    execute if score $firetime.temp ui_temp matches 23..60 at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0 10 force
