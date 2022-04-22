#
# タグ ui:{ismenu:1} メニュー構成アイテム　消える
#

#execute if entity @e[tag=ui_i] run function ui:industry/lim

#共通処理
    execute as @e[tag=ui_i] at @s positioned ~ ~-0.5 ~ run function ui:industry/all

#各機械ごとの処理
    execute as @e[tag=ui_i_1] at @s positioned ~ ~-0.5 ~ run function ui:industry/1/main
    execute as @e[tag=ui_i_2] at @s positioned ~ ~-0.5 ~ run function ui:industry/2/main
    execute as @e[tag=ui_i_3] at @s positioned ~ ~-0.5 ~ run function ui:industry/3/main
    execute as @e[tag=ui_i_4] at @s positioned ~ ~-0.5 ~ run function ui:industry/4/main
    execute as @e[tag=ui_i_5] at @s positioned ~ ~-0.5 ~ run function ui:industry/5/main
    execute as @e[tag=ui_i_6] at @s positioned ~ ~-0.5 ~ run function ui:industry/6/main
    execute as @e[tag=ui_i_7] at @s positioned ~ ~-0.5 ~ run function ui:industry/7/main
    execute as @e[tag=ui_i_8] at @s positioned ~ ~-0.5 ~ run function ui:industry/8/main
    execute as @e[tag=ui_i_9] at @s positioned ~ ~-0.5 ~ run function ui:industry/9/main
    execute as @e[tag=ui_i_10] at @s positioned ~ ~-0.5 ~ run function ui:industry/10/main
