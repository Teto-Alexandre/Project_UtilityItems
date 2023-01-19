#コモンイベント利用
#scoreboard players set $c.dice.max ui_temp 9
#scoreboard players set $c.dice.add ui_temp 7
#scoreboard players set $c.dice.dis ui_temp 0
#function ui:common/dice

data merge storage tds: {temp:{Damage:6.00,DamageType:-1,DeathMessage:10,WeaponName:"",EPF:0,BypassArmor:-1,BypassResistance:true}}
execute at @s run function tds:attack
experience add @s 25 points

#scoreboard players set @s ui_d_luck 1
#scoreboard players set @s ui_d_addmax 10
#scoreboard players set @s ui_d_addmin 10
#scoreboard players set @s ui_d_addnum 10
#scoreboard players set @s ui_d_mult 20