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
##最初のレシピ解放(なくても正常には動く)
recipe give @a musicplayer:kkun_rightclick

scoreboard objectives add kkun_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add kkun_rc minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add kkun_killitem dummy
scoreboard objectives add kkun_mtuner dummy
scoreboard objectives add kkun_death deathCount
scoreboard objectives add tuner_trigger trigger

tellraw @a {"text":"[info] Handy_musicplayerは正常にインストールされています。","color":"gold"}
