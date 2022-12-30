# 遠隔攻撃命中判定

#
    scoreboard players set $Return tds_dmg 0
    scoreboard players set $Lethal tds_dmg 0
    #
    scoreboard players set $bypass_armor ui_temp 0
    scoreboard players set $headshot ui_temp 0
    scoreboard players set $backstub ui_temp 0
    scoreboard players operation $armor_damage ui_temp = $damage ui_temp
    scoreboard players operation $shield_damage ui_temp = $damage ui_temp

# 盾検知
    scoreboard players set $def_state ui_temp 0
    execute if entity @s[tag=tmw_shield] positioned ~ ~1 ~ positioned ^ ^ ^1.4 if entity @e[tag=ui_temp_hit,distance=..2] run scoreboard players set $def_state ui_temp 1

# 追加効果
    execute if score $temp ui_hmods matches 1.. run function ui:tmw/255/projectile/hit_modifiers

#
    execute if score $def_state ui_temp matches 0 run function ui:tmw/255/projectile/hit/state0
    execute if score $def_state ui_temp matches 1 run function ui:tmw/255/projectile/hit/state1

# ヒット音
    execute if score $headshot ui_temp matches 0 run scoreboard players set $sound ui_temp 1
    execute if score $headshot ui_temp matches 1 run scoreboard players set $sound ui_temp 2
    execute if score $Lethal tds_dmg matches 1 run scoreboard players set $sound ui_temp 3