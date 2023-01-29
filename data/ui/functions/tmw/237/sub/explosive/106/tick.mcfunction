# リジェネフィールド

# 常時実行
    scoreboard players operation $temp ui_temp = @s ui_team
    execute if score @s ui_uses matches 20 run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1.4 0
    execute if score @s ui_uses matches 20.. as @e[type=!#ui:notmob,distance=..6] if score @s ui_team = $temp ui_temp run effect give @s[nbt=!{ActiveEffects:[{Id:21}]}] health_boost 5 1 true
    execute if score @s ui_uses matches 20.. as @e[type=!#ui:notmob,distance=..6] if score @s ui_team = $temp ui_temp run effect give @s regeneration 1 5 true
    execute if score @s ui_uses matches ..19 run particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0 2 force
    execute if score @s ui_uses matches 20 run particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
    execute if score @s ui_uses matches 40 run particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
    execute if score @s ui_uses matches 60 run particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
    execute if score @s ui_uses matches 80 run particle firework ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
    execute if score @s ui_uses matches 20 run particle heart ~ ~ ~ 1.5 1.5 1.5 0.1 15 force
    execute if score @s ui_uses matches 40 run particle heart ~ ~ ~ 1.5 1.5 1.5 0.1 15 force
    execute if score @s ui_uses matches 60 run particle heart ~ ~ ~ 1.5 1.5 1.5 0.1 15 force
    execute if score @s ui_uses matches 80 run particle heart ~ ~ ~ 1.5 1.5 1.5 0.1 15 force
    execute if score @s ui_uses matches 20.. run particle happy_villager ~ ~ ~ 2.5 2.5 2.5 0 10 force
    execute if score @s ui_uses matches 100.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/106/end