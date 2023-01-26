# 盾で防ぐ

#
scoreboard players operation $DamageTemp tds_dmg = $Damage tds_dmg

# バイパス
execute store result score $Bypass tds_dmg run data get storage tds: temp.BypassShield
scoreboard players set $BypassA tds_dmg 100
scoreboard players operation $BypassA tds_dmg -= $Bypass tds_dmg

#
execute store result score $DamageMult tds_dmg run data get storage tds: temp.ShieldDamageMult
execute unless data storage tds: temp.ShieldDamageMult run scoreboard players set $DamageMult tds_dmg 100

#
data merge storage ui:common {input:{Damage:1,Break:0}}
execute if data storage tds: temp{ShieldGuardable:2} run data modify storage ui:common input.Break set value 1
scoreboard players operation $Damage tds_dmg *= $DamageMult tds_dmg
scoreboard players operation $Damage tds_dmg /= $100 tds_dmg
scoreboard players operation $Damage tds_dmg *= $BypassA tds_dmg
scoreboard players operation $Damage tds_dmg /= $100 tds_dmg
execute store result storage ui:common input.Damage int 0.01 run scoreboard players add $Damage tds_dmg 100

function ui:common/shield_guard

scoreboard players operation $Damage tds_dmg = $DamageTemp tds_dmg
scoreboard players operation $Damage tds_dmg *= $Bypass tds_dmg
scoreboard players operation $Damage tds_dmg /= $100 tds_dmg