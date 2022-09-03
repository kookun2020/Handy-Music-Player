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
##それぞれのクリック時の動き
execute as @s[tag=insta_set,scores={tuner_trigger=..-1}] run scoreboard players set @s kkun_mtuner -10
execute as @s[tag=insta_set,scores={tuner_trigger=..-1}] run tellraw @s [{"text":"ピッチを"},{"text":" 0 ","color":"dark_blue"},{"text":"に設定した！"}]
execute as @s[tag=insta_set,scores={tuner_trigger=1}] run scoreboard players set @s kkun_mtuner -10
execute as @s[tag=insta_set,scores={tuner_trigger=1}] run tellraw @s [{"text":"ピッチを"},{"text":" 0 ","color":"dark_blue"},{"text":"に設定した！"}]

execute as @s[tag=insta_set,scores={tuner_trigger=2}] run scoreboard players set @s kkun_mtuner -5
execute as @s[tag=insta_set,scores={tuner_trigger=2}] run tellraw @s [{"text":"ピッチを"},{"text":" 0.5 ","color":"blue"},{"text":"に設定した！"}]

execute as @s[tag=insta_set,scores={tuner_trigger=3}] run scoreboard players set @s kkun_mtuner 0
execute as @s[tag=insta_set,scores={tuner_trigger=3}] run tellraw @s [{"text":"ピッチを"},{"text":" 1 ","color":"aqua"},{"text":"に設定した！"}]

execute as @s[tag=insta_set,scores={tuner_trigger=4}] run scoreboard players set @s kkun_mtuner 5
execute as @s[tag=insta_set,scores={tuner_trigger=4}] run tellraw @s [{"text":"ピッチを"},{"text":" 1.5 ","color":"red"},{"text":"に設定した！"}]

execute as @s[tag=insta_set,scores={tuner_trigger=5..}] run scoreboard players set @s kkun_mtuner 10
execute as @s[tag=insta_set,scores={tuner_trigger=5..}] run tellraw @s [{"text":"ピッチを"},{"text":" 2 ","color":"dark_red"},{"text":"に設定した！"}]

execute at @s[scores={kkun_mtuner=-10}] run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 0
execute at @s[scores={kkun_mtuner=-5}] run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 0.5
execute at @s[scores={kkun_mtuner=0}] run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1
execute at @s[scores={kkun_mtuner=5}] run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1.5
execute at @s[scores={kkun_mtuner=10}] run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 2

tag @s remove insta_set
scoreboard players set @s tuner_trigger 0