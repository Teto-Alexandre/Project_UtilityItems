# 遠隔攻撃命中判定

#
    scoreboard players set $Return tds_dmg 0
    scoreboard players set $Lethal tds_dmg 0
    #
    scoreboard players set $bypass_armor ui_temp 20
    scoreboard players operation $armor_damage ui_temp = $damage ui_temp
    scoreboard players operation $shield_damage ui_temp = $damage ui_temp
    scoreboard players operation $shield_damage ui_temp *= #2 ui_num

# サヴァイブ検知
    scoreboard players set $def_state ui_temp 0
    execute if entity @s[tag=tmw_shield] positioned ~ ~1 ~ positioned ^ ^ ^5 if entity @e[tag=ui_temp_this,distance=..5] run scoreboard players set $def_state ui_temp 1

#
    execute if score $def_state ui_temp matches 0 run function ui:tmw/255/projectile/killeffect/hit/state0
    execute if score $def_state ui_temp matches 1 run function ui:tmw/255/projectile/killeffect/hit/state1
