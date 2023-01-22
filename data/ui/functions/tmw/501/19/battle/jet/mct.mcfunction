#

#
execute if score $world ui_tc matches 2 run tellraw @s {"text":"モードチェンジ中のためジェットを使用できません"}
effect clear @s levitation
scoreboard players set @s ui_tmw501_19_now_jet 1
