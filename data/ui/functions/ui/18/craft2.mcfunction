#
    data merge storage ui:temp {temp:{tmw:{id:255,type:1,enableUse:1,enableQ:1,gun:{Name:"C.S.",Mass:0,BaseType:1,Magazine:0,MaxSize:0,BurstType:0,Burst:0,BurstMax:-1,now:{Speed:0,Attack:0,AttackSpeed:0,Model:180001}},main:{ShotType:1,ShotCT:0,BurstCT:0,Spread:0,AirSpread:0,MultiShot:0,Barrel:0},bullets:[]}}}

# 武器作成2
    execute store result storage ui:temp temp.tmw.main.MultiShot int 1 store result score $MultiShot ui_temp run data get storage ui:temp temp.Item2.stats.MultiShot
    execute store result score $Mass1 ui_temp run data get storage ui:temp temp.Item1.stats.Mass
    execute store result score $Mass2 ui_temp run data get storage ui:temp temp.Item2.stats.Mass
    execute store result score $Mass3 ui_temp run data get storage ui:temp temp.Item3.stats.Mass
    scoreboard players operation $Mass1 ui_temp += $Mass2 ui_temp
    execute store result storage ui:temp temp.tmw.gun.Mass int 1 run scoreboard players operation $Mass1 ui_temp += $Mass3 ui_temp
    scoreboard players remove $Mass1 ui_temp 100
    scoreboard players operation $Mass1 ui_temp /= #2 ui_num
    execute store result storage ui:temp temp.tmw.gun.now.Speed double -0.001 run scoreboard players operation $Mass1 ui_temp > #0 ui_num
    execute store result storage ui:temp temp.tmw.gun.now.Attack double 0.03 run scoreboard players add $Mass1 ui_temp 10
    scoreboard players add $Mass1 ui_temp 40
    scoreboard players operation $Mass1 ui_temp /= #20 ui_num
    scoreboard players set $temp ui_temp 10000
    scoreboard players operation $temp ui_temp /= $Mass1 ui_temp
    scoreboard players set $temp2 ui_temp 10000
    execute store result storage ui:temp temp.tmw.gun.now.AttackSpeed double -0.0001 run scoreboard players operation $temp2 ui_temp -= $temp ui_temp
    execute store result score $BaseType1 ui_temp run data get storage ui:temp temp.Item1.stats.BaseType
    execute store result score $BaseType2 ui_temp run data get storage ui:temp temp.Item2.stats.BaseType
    execute store result score $BaseType3 ui_temp run data get storage ui:temp temp.Item3.stats.BaseType
    scoreboard players operation $BaseType1 ui_temp < $BaseType2 ui_temp
    execute store result storage ui:temp temp.tmw.gun.BaseType int 1 run scoreboard players operation $BaseType1 ui_temp < $BaseType3 ui_temp
    execute store result score $Magazine1 ui_temp run data get storage ui:temp temp.Item1.stats.Magazine
    execute store result score $Magazine2 ui_temp run data get storage ui:temp temp.Item2.stats.Magazine
    execute store result storage ui:temp temp.tmw.gun.Magazine int 1 run scoreboard players operation $Magazine1 ui_temp += $Magazine2 ui_temp
    execute store result score $MaxSize1 ui_temp run data get storage ui:temp temp.Item1.stats.MaxSize
    execute store result score $MaxSize2 ui_temp run data get storage ui:temp temp.Item2.stats.MaxSize
    execute store result storage ui:temp temp.tmw.gun.MaxSize int 1 run scoreboard players operation $MaxSize1 ui_temp < $MaxSize2 ui_temp
    execute store result score $Burst1 ui_temp run data get storage ui:temp temp.Item1.stats.Burst
    execute store result score $Burst3 ui_temp run data get storage ui:temp temp.Item3.stats.Burst
    execute store result storage ui:temp temp.tmw.gun.Burst int 1 run scoreboard players operation $Burst1 ui_temp < $Burst3 ui_temp
    execute store result storage ui:temp temp.tmw.gun.BurstType int 1 run data get storage ui:temp temp.Item3.stats.BurstType
    execute store result score $CT1 ui_temp run data get storage ui:temp temp.Item1.stats.CT
    execute store result score $CT2 ui_temp run data get storage ui:temp temp.Item2.stats.CT
    execute store result score $CT3 ui_temp run data get storage ui:temp temp.Item3.stats.CT
    scoreboard players operation $CT2 ui_temp > $CT1 ui_temp
    execute store result storage ui:temp temp.tmw.main.BurstCT int 1 run scoreboard players operation $CT2 ui_temp > $CT3 ui_temp
    scoreboard players operation $CT2 ui_temp /= #2 ui_num
    scoreboard players operation $CT2 ui_temp > $CT1 ui_temp
    execute store result storage ui:temp temp.tmw.main.ShotCT int 1 run scoreboard players operation $CT2 ui_temp > $CT3 ui_temp
    execute store result score $Spread1 ui_temp run data get storage ui:temp temp.Item1.stats.Spread
    execute store result score $Spread2 ui_temp run data get storage ui:temp temp.Item2.stats.Spread
    execute store result score $Spread3 ui_temp run data get storage ui:temp temp.Item3.stats.Spread
    scoreboard players operation $Spread1 ui_temp += $Spread2 ui_temp
    scoreboard players operation $Spread1 ui_temp += $Spread3 ui_temp
    scoreboard players operation $MultiShot.temp ui_temp = $MultiShot ui_temp
    scoreboard players remove $MultiShot.temp ui_temp 1
    scoreboard players operation $MultiShot.temp ui_temp *= #5 ui_num
    scoreboard players add $MultiShot.temp ui_temp 10
    scoreboard players operation $Spread1 ui_temp *= $MultiShot.temp ui_temp
    execute store result storage ui:temp temp.tmw.main.Spread int 1 run scoreboard players operation $Spread1 ui_temp /= #10 ui_num
    execute store result storage ui:temp temp.tmw.main.AirSpread int 1 run scoreboard players add $Spread1 ui_temp 1500
    execute store result storage ui:temp temp.tmw.main.Barrel int 1 run data get storage ui:temp temp.Item2.stats.Barrel

#
    item replace block ~ ~ ~ container.16 with minecraft:carrot_on_a_stick{tmw:{},display:{Lore:['{"text":"クラフトしたアイテム","color":"gold","italic":false}']}}
    item modify block ~ ~ ~ container.16 ui:tmw255/all