# Multiごとに個別

#
    execute store result score $no_shot ui_temp run data get storage ui:object_maker temp.NoShot
    execute store result score $mass ui_temp run data get storage ui:object_maker temp.Mass
    execute store result score $speed ui_temp run data get storage ui:object_maker temp.Speed
    execute store result score $air_res ui_temp run data get storage ui:object_maker temp.AirRes 100
    execute store result score $gravity ui_temp run data get storage ui:object_maker temp.Gravity
    execute store result score $pack ui_temp run data get storage ui:object_maker temp.Pack
    execute store result score $spread ui_temp run data get storage ui:object_maker temp.Spread
    scoreboard players set $range ui_temp 2000
    execute if data storage ui:object_maker temp.Range store result score $range ui_temp run data get storage ui:object_maker temp.Range
    execute store result score $damage_factor ui_temp run data get storage ui:object_maker temp.DamageFactor
    execute store result score $damage_type ui_temp run data get storage ui:object_maker temp.DamageType
    execute store result score $particle.fly ui_temp run data get storage ui:object_maker temp.FlyParticle
    execute store result score $particle.end ui_temp run data get storage ui:object_maker temp.EndParticle
    execute store result score $weak_mult ui_temp run data get storage ui:object_maker temp.WeakMultiplier
    execute store result score $back_mult ui_temp run data get storage ui:object_maker temp.BackMultiplier
    execute store result score $muzzle ui_temp run data get storage ui:object_maker temp.Muzzle
    execute store result score $sound ui_temp run data get storage ui:object_maker temp.Sound
    execute store result score $pierce_ent ui_temp run data get storage ui:object_maker temp.PierceEntity
    scoreboard players set $break_mult ui_temp 100
    execute if data storage ui:object_maker temp.BreakMult store result score $break_mult ui_temp run data get storage ui:object_maker temp.BreakMult

# id と team は既にあるものを使用

#
function ui:tmw/255/player/crossbow/attack/shot/make_projectile