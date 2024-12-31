scoreboard players operation $tmw272_misc_each_count_temp ui_temp = $tmw272_misc_each_count ui_temp

# 2の数だけループする（中でtempの記録値を更新してループ）
#tellraw @a [{"nbt":"temp.effect_macro_temp[0]","storage":"ui:temp","color":"dark_blue"}]
data modify storage ui:temp temp.effect_macro.bine set from storage ui:temp temp.effect_macro_temp[0]
data remove storage ui:temp temp.effect_macro_temp[0]

#

#say b

execute if score $tmw272_misc_each_count_temp ui_temp matches 1.. run function ui:tmw/272/effect/misc/each/strings_c

#

#
scoreboard players remove $tmw272_misc_each_count2 ui_temp 1
execute if score $tmw272_misc_each_count2 ui_temp matches 1.. run function ui:tmw/272/effect/misc/each/each_c.lp