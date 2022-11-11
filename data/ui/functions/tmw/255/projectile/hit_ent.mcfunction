# 遠隔攻撃命中判定

# サヴァイブ検知
    scoreboard players set $survive ui_temp 0
    execute if entity @s[tag=tmw_255_sp_survive] run scoreboard players set $survive ui_temp 1

# これヘッドショット？
    scoreboard players set $headshot ui_temp 0
    execute anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=armor_stand,tag=ui_temp_this,dx=0] run scoreboard players set $headshot ui_temp 1
    execute if score $headshot ui_temp matches 1 run data merge storage ui:common {input:{Mode:"create",Var:2}}
    execute if score $headshot ui_temp matches 1 at @e[tag=ui_temp_this] run function ui:common/particle
    execute if score $headshot ui_temp matches 1 at @e[tag=ui_temp_this] run playsound entity.player.hurt_freeze neutral @a ~ ~ ~ 1 1.2 0

# ダメージ本体
    scoreboard players set $Return tds_dmg 0
    scoreboard players set $Lethal tds_dmg 0
    data merge storage tds: {Damage:1.00,DamageType:1,DeathMessage:8,WeaponName:"",EPF:-1,BypassArmor:false,BypassResistance:false}
    #tellraw @a [{"text":"Attacker:"},{"score":{"name":"$id","objective":"ui_temp"}},{"text":" Team:"},{"score":{"name":"$team","objective":"ui_temp"}},{"text":" Obj:"},{"score":{"name":"$Attacker","objective":"tds_dmg"}}]
    execute if score $headshot ui_temp matches 1 run scoreboard players operation $damage ui_temp *= #3 ui_num
    execute if score $headshot ui_temp matches 1 run scoreboard players operation $damage ui_temp /= #2 ui_num
    execute if score $headshot ui_temp matches 1 run scoreboard players add $damage ui_temp 1
    execute store result storage tds: Damage float 0.1 run scoreboard players get $damage ui_temp
    execute store result storage tds: DamageType int 1 run scoreboard players get $damage_type ui_temp
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    data modify storage tds: WeaponName set from storage ui:temp temp.Name
    data modify storage tds: Owner set from storage ui:temp temp.UUID
    execute if score $survive ui_temp matches 1 at @s run function ui:tmw/255/misc/survive
    execute if score $survive ui_temp matches 0 at @s run function tds:attack
    scoreboard players operation $Return tds_dmg /= #20000 ui_num
    execute if score $damage_type ui_temp matches 2 run scoreboard players operation @s tds_fire += $Return tds_dmg
    execute if score $damage_type ui_temp matches 6 run scoreboard players operation @s tds_cold += $Return tds_dmg

# 追加効果
    execute store result score $count ui_temp run data get storage ui:temp temp.Modifiers
    execute if score $count ui_temp matches 1.. run function ui:tmw/255/projectile/modifiers

# ヒット音
    execute if score $headshot ui_temp matches 0 run scoreboard players set $sound ui_temp 1
    execute if score $headshot ui_temp matches 1 run scoreboard players set $sound ui_temp 2
    execute if score $Lethal tds_dmg matches 1 run scoreboard players set $sound ui_temp 3