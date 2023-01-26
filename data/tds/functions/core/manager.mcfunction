#

#
execute store result score $Damage tds_dmg run data get storage tds: temp.Damage 100

# 盾を構えている
execute if data storage tds: temp.ShieldGuardable if entity @s[tag=tmw_shield] run function tds:managed/shield/case
# ROB戦闘状態なら
execute if entity @s[tag=tmw_501_19_battle] run function tds:managed/tmw501_19/attack

#
execute if score $Damage tds_dmg matches 1.. run function tds:core/attack