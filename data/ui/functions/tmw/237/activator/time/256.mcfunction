# チャクチ

# ダメージを与える
    execute if score $time ui_temp matches 196 run effect clear @s levitation
    execute if score $time ui_temp matches 183 run effect give @s resistance 5 5 true
    execute if score $time ui_temp matches 192 run particle firework ~ ~1 ~ 0.5 0.5 0.5 0.1 10 force
    execute if score $time ui_temp matches 192 run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1 0
    execute store result score $temp ui_temp run data get entity @s OnGround
    #tellraw @a [{"score":{"objective":"ui_temp","name":"$temp"}}]
    execute if score $time ui_temp matches ..190 if entity @s[nbt={OnGround:1b}] run function ui:tmw/237/activator/time/256.0