#
scoreboard players operation $Damage tds_dmg *= @a[tag=tds_attacker_temp] ui_stat_dmg_phys
scoreboard players operation $Damage tds_dmg /= #100 ui_num
#say a