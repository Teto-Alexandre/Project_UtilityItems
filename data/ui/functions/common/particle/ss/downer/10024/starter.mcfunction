#
execute if score $is ui_temp matches -179 run function ui:common/particle/ss/downer/10024/period1
execute if score $is ui_temp matches -179 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.5 0.5 0
execute if score $is ui_temp matches -174..-110 if predicate ui:percentage/5 run function ui:common/particle/ss/downer/10024/before_line
execute if score $is ui_temp matches -109 run function ui:common/particle/ss/downer/10024/line
execute if score $is ui_temp matches -104 run particle firework ~ ~ ~ 4 0 4 0 100 force
execute if score $is ui_temp matches -99 run particle firework ~ ~ ~ 8 0 8 0 400 force

execute if score $is ui_temp matches -99 run function ui:common/particle/ss/downer/10024/period
execute if score $is ui_temp matches -79 run function ui:common/particle/ss/downer/10024/period
execute if score $is ui_temp matches -59 run function ui:common/particle/ss/downer/10024/period

execute if score $is ui_temp matches -39 run function ui:common/particle/ss/downer/10024/eye1close
execute if score $is ui_temp matches -19 run function ui:common/particle/ss/downer/10024/eye1mid
