# 命中角度保存
    summon marker ^ ^ ^-2 {Tags:["ui_temp_hit"]}

# 命中処理
    scoreboard players set $hit_sound ui_temp 0
    scoreboard players set $hit_sound_type ui_temp 0
    data merge storage ui:temp {temp:{}}
    data modify storage ui:temp temp.Name set from entity @s ArmorItems.[0].tag.display.Name
    data modify storage ui:temp temp.UUID set from entity @s ArmorItems.[0].tag.uuid
    data modify storage ui:temp temp.HitModifiers set from entity @s ArmorItems.[0].tag.hit_modifiers
    scoreboard players operation $temp ui_hmods = @s ui_hmods
    scoreboard players operation $weak_mult ui_temp = @s ui_bu
    scoreboard players operation $back_mult ui_temp = @s ui_gms
    execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/255/projectile/hit/ent
    function ui:tmw/255/projectile/hit/sound/
    scoreboard players reset $hit_sound ui_temp
    scoreboard players reset $hit_sound_type ui_temp

# データ消し
    data remove storage ui:temp temp

# 消失
    execute if entity @s[tag=!ui_proj_pierce_entity] run tag @s add tmw_255_proj_del
    execute if entity @s[tag=ui_proj_pierce_entity] run function ui:tmw/255/projectile/hit/pierce_entity
    kill @e[tag=ui_temp_hit]