/*
 * Copyright (C) 2013 The Android Open Source Project
 * Copyright (C) 2013 The OpenSEMC Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <healthd.h>

void
healthd_board_init(struct healthd_config *config)
{
    // read from bq24185/bq27520/chargalg/semc_battery_data sys interfaces
    config->batteryCapacityPath    = "/sys/class/power_supply/bq27520/capacity";
    config->batteryStatusPath      = "/sys/class/power_supply/bq24185/status";
    config->batteryVoltagePath     = "/sys/class/power_supply/bq27520/voltage_now";
    config->batteryCurrentNowPath  = "/sys/class/power_supply/bq27520/current_now";
    config->batteryPresentPath     = "/sys/class/power_supply/bq27520/present";
    config->batteryHealthPath      = "/sys/class/power_supply/chargalg/health";
    config->batteryTemperaturePath = "/sys/class/power_supply/semc_battery_data/temp";
    config->batteryTechnologyPath  = "/sys/class/power_supply/semc_battery_data/technology";
    // others use defaults
}

int
healthd_board_battery_update(struct android::BatteryProperties *props)
{
    // return 0 to log periodic polled battery status to kernel log
    return 0;
}
