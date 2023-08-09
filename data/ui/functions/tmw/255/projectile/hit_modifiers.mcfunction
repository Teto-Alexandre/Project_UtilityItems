# 追加効果
# Modifiers:[{id:"flame",lvl:1}]

#
    data modify storage ui:temp temp.Modifier set from storage ui:temp temp.HitModifiers[0]
    execute store result score $level ui_temp run data get storage ui:temp temp.Modifier.lvl
    execute if data storage ui:temp temp.Modifier{id:"flame"} run function ui:tmw/255/projectile/modifier/flame
    execute if data storage ui:temp temp.Modifier{id:"cold"} run function ui:tmw/255/projectile/modifier/cold
    execute if data storage ui:temp temp.Modifier{id:"acid"} run function ui:tmw/255/projectile/modifier/acid
    execute if data storage ui:temp temp.Modifier{id:"armor_pierce"} run function ui:tmw/255/projectile/modifier/armor_pierce
    execute if data storage ui:temp temp.Modifier{id:"silver"} run function ui:tmw/255/projectile/modifier/silver
    execute if data storage ui:temp temp.Modifier{id:"armor_damage"} run function ui:tmw/255/projectile/modifier/armor_damage
    execute if data storage ui:temp temp.Modifier{id:"lethal"} run function ui:tmw/255/projectile/modifier/lethal
    execute if data storage ui:temp temp.Modifier{id:"dice"} run function ui:tmw/255/projectile/modifier/dice
    execute if data storage ui:temp temp.Modifier{id:"knockback"} run function ui:tmw/255/projectile/modifier/knockback

# 読み込み終わり
    scoreboard players remove $temp ui_hmods 1
    data remove storage ui:temp temp.HitModifiers[0]
    execute if score $temp ui_hmods matches 1.. run function ui:tmw/255/projectile/hit_modifiers