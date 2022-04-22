#=======================================================================================================

scoreboard players set @s ui_hp_plus 0

attribute @s generic.max_health modifier remove 0-0-0-0-1
attribute @s generic.max_health modifier remove 0-0-0-0-2
attribute @s generic.max_health modifier remove 0-0-0-0-3
attribute @s generic.max_health modifier remove 0-0-0-0-4
attribute @s generic.max_health modifier remove 0-0-0-0-5
attribute @s generic.max_health modifier remove 0-0-0-0-6
attribute @s generic.max_health modifier remove 0-0-0-0-7
attribute @s generic.max_health modifier remove 0-0-0-0-8
attribute @s generic.max_health modifier remove 0-0-0-0-9
attribute @s generic.max_health modifier remove 0-0-0-0-A
attribute @s generic.max_health modifier remove 0-0-0-0-B
attribute @s generic.max_health modifier remove 0-0-0-0-C

#回復効果を受けないと見た目上の最大HPが変化しないのでHPを0回復する
effect give @s instant_health 1 30 true

#=======================================================================================================
