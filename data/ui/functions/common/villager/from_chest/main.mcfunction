#

#
data modify storage ui:common input.Offers set value []

#
data merge storage ui:common {input:{Offer:{buy:{id:"air",Count:0b},buyB:{id:"air",Count:0b},sell:{id:"air",Count:0b},rewardExp:0b,maxUses:2147483647,uses:0}}}
execute if block ~ ~ ~ chest{Items:[{Slot:0b}]} run data modify storage ui:common input.Offer.buy set from block ~ ~ ~ Items[{Slot:0b}]
execute if block ~ ~ ~ chest{Items:[{Slot:9b}]} run data modify storage ui:common input.Offer.buyB set from block ~ ~ ~ Items[{Slot:9b}]
execute if block ~ ~ ~ chest{Items:[{Slot:18b}]} run data modify storage ui:common input.Offer.sell set from block ~ ~ ~ Items[{Slot:18b}]
execute if block ~ ~ ~ chest{Items:[{Slot:18b}]} run data modify storage ui:common input.Offers append from storage ui:common input.Offer
data merge storage ui:common {input:{Offer:{buy:{id:"air",Count:0b},buyB:{id:"air",Count:0b},sell:{id:"air",Count:0b},rewardExp:0b,maxUses:2147483647,uses:0}}}
execute if block ~ ~ ~ chest{Items:[{Slot:1b}]} run data modify storage ui:common input.Offer.buy set from block ~ ~ ~ Items[{Slot:1b}]
execute if block ~ ~ ~ chest{Items:[{Slot:10b}]} run data modify storage ui:common input.Offer.buyB set from block ~ ~ ~ Items[{Slot:10b}]
execute if block ~ ~ ~ chest{Items:[{Slot:19b}]} run data modify storage ui:common input.Offer.sell set from block ~ ~ ~ Items[{Slot:19b}]
execute if block ~ ~ ~ chest{Items:[{Slot:19b}]} run data modify storage ui:common input.Offers append from storage ui:common input.Offer
data merge storage ui:common {input:{Offer:{buy:{id:"air",Count:0b},buyB:{id:"air",Count:0b},sell:{id:"air",Count:0b},rewardExp:0b,maxUses:2147483647,uses:0}}}
execute if block ~ ~ ~ chest{Items:[{Slot:2b}]} run data modify storage ui:common input.Offer.buy set from block ~ ~ ~ Items[{Slot:2b}]
execute if block ~ ~ ~ chest{Items:[{Slot:11b}]} run data modify storage ui:common input.Offer.buyB set from block ~ ~ ~ Items[{Slot:11b}]
execute if block ~ ~ ~ chest{Items:[{Slot:20b}]} run data modify storage ui:common input.Offer.sell set from block ~ ~ ~ Items[{Slot:20b}]
execute if block ~ ~ ~ chest{Items:[{Slot:20b}]} run data modify storage ui:common input.Offers append from storage ui:common input.Offer
data merge storage ui:common {input:{Offer:{buy:{id:"air",Count:0b},buyB:{id:"air",Count:0b},sell:{id:"air",Count:0b},rewardExp:0b,maxUses:2147483647,uses:0}}}
execute if block ~ ~ ~ chest{Items:[{Slot:3b}]} run data modify storage ui:common input.Offer.buy set from block ~ ~ ~ Items[{Slot:3b}]
execute if block ~ ~ ~ chest{Items:[{Slot:12b}]} run data modify storage ui:common input.Offer.buyB set from block ~ ~ ~ Items[{Slot:12b}]
execute if block ~ ~ ~ chest{Items:[{Slot:21b}]} run data modify storage ui:common input.Offer.sell set from block ~ ~ ~ Items[{Slot:21b}]
execute if block ~ ~ ~ chest{Items:[{Slot:21b}]} run data modify storage ui:common input.Offers append from storage ui:common input.Offer
data merge storage ui:common {input:{Offer:{buy:{id:"air",Count:0b},buyB:{id:"air",Count:0b},sell:{id:"air",Count:0b},rewardExp:0b,maxUses:2147483647,uses:0}}}
execute if block ~ ~ ~ chest{Items:[{Slot:4b}]} run data modify storage ui:common input.Offer.buy set from block ~ ~ ~ Items[{Slot:4b}]
execute if block ~ ~ ~ chest{Items:[{Slot:13b}]} run data modify storage ui:common input.Offer.buyB set from block ~ ~ ~ Items[{Slot:13b}]
execute if block ~ ~ ~ chest{Items:[{Slot:22b}]} run data modify storage ui:common input.Offer.sell set from block ~ ~ ~ Items[{Slot:22b}]
execute if block ~ ~ ~ chest{Items:[{Slot:22b}]} run data modify storage ui:common input.Offers append from storage ui:common input.Offer
data merge storage ui:common {input:{Offer:{buy:{id:"air",Count:0b},buyB:{id:"air",Count:0b},sell:{id:"air",Count:0b},rewardExp:0b,maxUses:2147483647,uses:0}}}
execute if block ~ ~ ~ chest{Items:[{Slot:5b}]} run data modify storage ui:common input.Offer.buy set from block ~ ~ ~ Items[{Slot:5b}]
execute if block ~ ~ ~ chest{Items:[{Slot:14b}]} run data modify storage ui:common input.Offer.buyB set from block ~ ~ ~ Items[{Slot:14b}]
execute if block ~ ~ ~ chest{Items:[{Slot:23b}]} run data modify storage ui:common input.Offer.sell set from block ~ ~ ~ Items[{Slot:23b}]
execute if block ~ ~ ~ chest{Items:[{Slot:23b}]} run data modify storage ui:common input.Offers append from storage ui:common input.Offer
data merge storage ui:common {input:{Offer:{buy:{id:"air",Count:0b},buyB:{id:"air",Count:0b},sell:{id:"air",Count:0b},rewardExp:0b,maxUses:2147483647,uses:0}}}
execute if block ~ ~ ~ chest{Items:[{Slot:6b}]} run data modify storage ui:common input.Offer.buy set from block ~ ~ ~ Items[{Slot:6b}]
execute if block ~ ~ ~ chest{Items:[{Slot:15b}]} run data modify storage ui:common input.Offer.buyB set from block ~ ~ ~ Items[{Slot:15b}]
execute if block ~ ~ ~ chest{Items:[{Slot:24b}]} run data modify storage ui:common input.Offer.sell set from block ~ ~ ~ Items[{Slot:24b}]
execute if block ~ ~ ~ chest{Items:[{Slot:24b}]} run data modify storage ui:common input.Offers append from storage ui:common input.Offer
data merge storage ui:common {input:{Offer:{buy:{id:"air",Count:0b},buyB:{id:"air",Count:0b},sell:{id:"air",Count:0b},rewardExp:0b,maxUses:2147483647,uses:0}}}
execute if block ~ ~ ~ chest{Items:[{Slot:7b}]} run data modify storage ui:common input.Offer.buy set from block ~ ~ ~ Items[{Slot:7b}]
execute if block ~ ~ ~ chest{Items:[{Slot:16b}]} run data modify storage ui:common input.Offer.buyB set from block ~ ~ ~ Items[{Slot:16b}]
execute if block ~ ~ ~ chest{Items:[{Slot:25b}]} run data modify storage ui:common input.Offer.sell set from block ~ ~ ~ Items[{Slot:25b}]
execute if block ~ ~ ~ chest{Items:[{Slot:25b}]} run data modify storage ui:common input.Offers append from storage ui:common input.Offer
data merge storage ui:common {input:{Offer:{buy:{id:"air",Count:0b},buyB:{id:"air",Count:0b},sell:{id:"air",Count:0b},rewardExp:0b,maxUses:2147483647,uses:0}}}
execute if block ~ ~ ~ chest{Items:[{Slot:8b}]} run data modify storage ui:common input.Offer.buy set from block ~ ~ ~ Items[{Slot:8b}]
execute if block ~ ~ ~ chest{Items:[{Slot:17b}]} run data modify storage ui:common input.Offer.buyB set from block ~ ~ ~ Items[{Slot:17b}]
execute if block ~ ~ ~ chest{Items:[{Slot:26b}]} run data modify storage ui:common input.Offer.sell set from block ~ ~ ~ Items[{Slot:26b}]
execute if block ~ ~ ~ chest{Items:[{Slot:26b}]} run data modify storage ui:common input.Offers append from storage ui:common input.Offer

data modify entity @s Offers.Recipes set from storage ui:common input.Offers