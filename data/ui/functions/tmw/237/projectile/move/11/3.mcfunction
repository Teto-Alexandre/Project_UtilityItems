particle dust 1 1 0.5 1.2 ~ ~ ~ 0.3 0 0.3 0 1 force
particle block yellow_concrete ^0.6 ^ ^-0.2 0 0 0 0 1 force
particle block yellow_concrete ^0.3 ^ ^-0.1 0 0 0 0 1 force
particle block yellow_concrete ^0.0 ^ ^ 0 0 0 0 1 force
particle block yellow_concrete ^-0.3 ^ ^-0.1 0 0 0 0 1 force
particle block yellow_concrete ^-0.6 ^ ^-0.2 0 0 0 0 1 force
execute if predicate ui:percentage/40 store result score $paint ui_temp run fill ~-0.3 ~ ~-0.3 ~0.3 ~-2 ~0.3 yellow_wool replace #ui:wools