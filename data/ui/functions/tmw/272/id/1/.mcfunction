# 戦線中
execute if entity @s[tag=tmw272_active] if entity @s[tag=tmw_drop_n] run function ui:tmw/272/id/1/use

# 非
execute if entity @s[tag=!tmw272_active] if entity @s[scores={ui_st2=21}] at @s run particle dust 1 1 0 2 ~ ~0.9 ~ 0.6 0.6 0.6 0 15 force
execute if entity @s[tag=!tmw272_active] if entity @s[scores={ui_st2=21}] at @s run playsound block.chain.break player @a ~ ~ ~ 1 0.8 0
execute if entity @s[tag=!tmw272_active] if entity @s[scores={ui_st2=5}] at @s run tellraw @s [{"text":"[Idling] > ","color": "yellow"},{"text":"長Sneak+Fキーでカードを分解","color": "gray"}]
