#execute as @e[tag=ui_i] at @s positioned ~ ~-0.5 ~ run function ui:industry/all

#共通処理
    #土台が壊れたら破壊タグを付ける
    execute if block ~ ~ ~ air run tag @s add ui_i_break

    #樽用　開いたときと閉じたときの消音 + GUIの描画
    execute if block ~ ~ ~ barrel[open=true] run scoreboard players add @s[scores={ui_i_gui=..1}] ui_i_gui 1
    execute if block ~ ~ ~ barrel[open=false] run scoreboard players remove @s[scores={ui_i_gui=1..}] ui_i_gui 1
    execute if entity @s[tag=ui_i_machine,scores={ui_i_gui=1}] at @s run stopsound @a block block.barrel.open
    execute if entity @s[tag=ui_i_machine,scores={ui_i_gui=1}] at @s run stopsound @a block block.barrel.close

    #かまど用　GUIを常に描画
    execute if block ~ ~ ~ furnace run scoreboard players set @s ui_i_gui 2