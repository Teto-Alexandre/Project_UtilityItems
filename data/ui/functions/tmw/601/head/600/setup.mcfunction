scoreboard objectives add ui_tmw601_4600_mp dummy
scoreboard objectives add ui_tmw601_4600_mpmax dummy
scoreboard objectives add ui_tmw601_4600_mpregen dummy
scoreboard objectives add ui_tmw601_4600_ctacc dummy
scoreboard objectives add ui_tmw601_4600_ctacc_temp dummy

scoreboard players set @s ui_tmw601_4600_mp 0
scoreboard players set @s ui_tmw601_4600_ctacc_temp 0

execute store result score @s ui_tmw601_4600_mpmax run data get entity @s Inventory.[{Slot:103b}].tag.tmw.max
execute store result score @s ui_tmw601_4600_mpregen run data get entity @s Inventory.[{Slot:103b}].tag.tmw.regen
execute store result score @s ui_tmw601_4600_ctacc run data get entity @s Inventory.[{Slot:103b}].tag.tmw.ctacc