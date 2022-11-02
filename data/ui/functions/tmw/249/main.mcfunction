# ミサイルが飛んできていたら当たったことがわかる装備
    execute if entity @s[nbt={ActiveEffects:[{Id:24}]}] run scoreboard players add @s tds_amethyst 10000
    execute if entity @s[nbt={ActiveEffects:[{Id:24}]}] run scoreboard players set @s tds_amethyst_t 10
    execute if entity @s[nbt={ActiveEffects:[{Id:24}]}] at @s run playsound block.note_block.chime player @s ~ ~ ~ 1 1 0
    execute if entity @s[nbt={ActiveEffects:[{Id:24}]}] run effect clear @s glowing

# 死
    execute if score @s tds_amethyst matches 100000.. run gamemode spectator
    execute if score @s tds_amethyst matches 100000.. run effect give @s blindness 5 0 true
    execute if score @s tds_amethyst matches 100000.. run tellraw @a ["",{"text":"競技用システム"},{"text":">> ","color":"yellow"},{"selector":"@s"},{"text":"が脱落しました","color":"gray"}]
    execute if score @s tds_amethyst matches 100000.. run scoreboard players reset @s tds_amethyst_t
    execute if score @s tds_amethyst matches 100000.. run scoreboard players reset @s tds_amethyst