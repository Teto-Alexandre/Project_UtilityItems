#=======================================================================================================

tag @e[distance=..4,type=#ui:notmob,type=!armor_stand,tag=!ui_refr] add ui_refr
execute as @e[tag=ui_refr,distance=..4,tag=!ui_refd] run function ui:tmw/214/ref

#=======================================================================================================
