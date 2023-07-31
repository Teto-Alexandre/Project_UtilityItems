#

#
execute store result score $Damage tds_dmg run data get storage tds: temp.Damage 100
execute unless data storage tds: temp.DamageFactor run data modify storage tds: temp.DamageFactor set value 0
execute store result score $DamageFactor tds_dmg run data get storage tds: temp.DamageFactor

#tellraw @a [{"text":"Damage: "},{"score":{"name": "$Damage","objective": "tds_dmg"}}]

execute if score $Attacker tds_dmg matches 1..2147483647 run function tds:core/attacker/

# 盾を構えている
execute if data storage tds: temp.ShieldGuardable if entity @s[tag=tmw_shield] run function tds:managed/shield/case
# ROB戦闘状態なら
execute if entity @s[tag=tmw_501_19_battle] run function tds:managed/tmw501_19/attack

#tellraw @a [{"text":"Damage: "},{"score":{"name": "$Damage","objective": "tds_dmg"}}]

#
execute if score $Damage tds_dmg matches 1.. run function tds:core/attack