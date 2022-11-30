    execute store result score $range ui_temp run data get storage ui:gun temp2.Range2
    execute store result score $damage ui_temp run data get storage ui:gun temp2.Damage2
    execute store result score $speed ui_temp run data get storage ui:gun temp2.Speed2
    execute unless score $burst ui_temp matches 1 store result score $ct ui_temp run data get storage ui:gun temp2.ShotCT2
    execute if entity @s[nbt={OnGround:1b}] store result score $spread ui_temp run data get storage ui:gun temp2.Spread2
    execute if entity @s[nbt={OnGround:0b}] store result score $spread ui_temp run data get storage ui:gun temp2.AirSpread2