# スペ以外の時に実行される常駐効果の管理
    #execute if score $ishold ui_temp matches 2.. at @s run particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.3 1 force @s
    #execute if score $ishold ui_temp matches 2.. at @s run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.03 1 force @s
    #execute if score $ishold ui_temp matches 2.. at @s run particle firework ~ ~1.5 ~ 0.5 0.5 0.5 0.03 1 force @s
    #execute at @s[scores={ui_st=0}] run function ui:tmw/255/player/crossbow/constant/shoot
    #execute as @s[scores={ui_st=1..}] at @s run function ui:tmw/255/player/crossbow/constant/sneak

# スペ以外の時に実行される常駐効果の管理
    execute store result score $constantid ui_temp run data get storage ui:gun temp.ConstantID

#
    execute if score $constantid ui_temp matches ..-1 at @s run function ui:tmw/255/player/crossbow/constant/id/downer/con_d
    execute if score $constantid ui_temp matches 1.. at @s run function ui:tmw/255/player/crossbow/constant/id/upper/con_u
