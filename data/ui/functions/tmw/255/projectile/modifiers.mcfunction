# 追加効果
# Modifiers:[{id:"flame",lvl:1}]

#
    data modify storage ui:temp temp.Modifier set from storage ui:temp temp.Modifiers[0]
    execute store result score $level ui_temp run data get storage ui:temp temp.Modifiers[0].lvl
    execute if data storage ui:temp temp.Modifier{id:"flame"} run function ui:tmw/255/projectile/modifier/flame
    execute if data storage ui:temp temp.Modifier{id:"cold"} run function ui:tmw/255/projectile/modifier/cold

# 読み込み終わり
    scoreboard players remove $count ui_temp 1
    execute if score $count ui_temp matches 1.. run function ui:tmw/255/projectile/modifiers