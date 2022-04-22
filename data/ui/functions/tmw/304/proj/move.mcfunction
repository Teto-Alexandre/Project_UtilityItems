#===========================================================================

#射程うんぬん
    scoreboard players remove @s ui_temp 1
    scoreboard players remove @s ui_br 1

#移動と反射コモン
    teleport @s ^ ^ ^0.5
    execute as @s at @s run function ui:tmw/214/ref_common

#壁に当たるなら消える
    execute if block ~ ~ ~ cave_air run tellraw @a[scores={ui_tmw_id=304}] {"text":"空洞！"}
    execute if block ~ ~ ~ amethyst_block run tellraw @a[scores={ui_tmw_id=304}] {"text":"アメジスト！"}
    execute if block ~ ~ ~ stone_bricks run tellraw @a[scores={ui_tmw_id=304}] {"text":"石レンガ！"}

#移動値が無くなるまで繰り返す
    execute as @s[scores={ui_temp=1..,ui_br=1..,},tag=!ui_304_nocol] at @s run function ui:tmw/304/proj/move

#===========================================================================