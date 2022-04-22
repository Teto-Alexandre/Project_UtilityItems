
# 複数人が持つとバグる可能性が非常に高いもののレアケースなので無視する

#execute if entity @a[tag=tmw_221_old] run say t
#execute if entity @a[tag=tmw_221_old,scores={ui_usep=1..}] run say tp
#execute if entity @a[scores={ui_usep=1..}] run say p

execute as @a[tag=tmw_221_old,scores={ui_usep=1..}] at @s run function ui:tmw/221/act
tag @a[tag=tmw_221_old] remove tmw_221_old