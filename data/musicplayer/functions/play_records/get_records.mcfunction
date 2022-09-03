#   Copyright © 2022 kookun

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
execute if entity @s[tag=reco_5] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_5",Count:1b}}
execute if entity @s[tag=reco_11] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_11",Count:1b}}
execute if entity @s[tag=reco_13] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_13",Count:1b}}
execute if entity @s[tag=reco_cat] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_cat",Count:1b}}
execute if entity @s[tag=reco_blocks] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_blocks",Count:1b}}
execute if entity @s[tag=reco_chirp] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_chirp",Count:1b}}
execute if entity @s[tag=reco_far] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_far",Count:1b}}
execute if entity @s[tag=reco_mall] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_mall",Count:1b}}
execute if entity @s[tag=reco_mellohi] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_mellohi",Count:1b}}
execute if entity @s[tag=reco_stal] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_stal",Count:1b}}
execute if entity @s[tag=reco_strad] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_strad",Count:1b}}
execute if entity @s[tag=reco_ward] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_ward",Count:1b}}
execute if entity @s[tag=reco_wait] at @r run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_wait",Count:1b}}
execute if entity @s[tag=reco_otherside] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_otherside",Count:1b}}
execute if entity @s[tag=reco_pigstep] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:music_disc_pigstep",Count:1b}}
execute if entity @s[tag=reco_credits] at @s run summon item ~ ~ ~ {PickupDelay:1,Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Name:'{"text":"レコード","color":"aqua","italic":false}',Lore:['{"text":"C418 - alpha","color":"gray","italic":false}']},CustomModelData:2001,specialdisc:1}}}

tag @s remove reco_5
tag @s remove reco_11
tag @s remove reco_13
tag @s remove reco_cat
tag @s remove reco_blocks
tag @s remove reco_chirp
tag @s remove reco_far
tag @s remove reco_mall
tag @s remove reco_mellohi
tag @s remove reco_stal
tag @s remove reco_strad
tag @s remove reco_ward
tag @s remove reco_wait
tag @s remove reco_otherside
tag @s remove reco_pigstep
tag @s remove reco_credits

tag @s remove mplaying
stopsound @s record

##演出
execute at @s run playsound block.piston.extend master @s ~ ~ ~ 1 1.5
execute at @s anchored eyes run particle composter ^ ^ ^0.5 0.2 0.2 0.2 1 10 normal @s
