/* Copyright 2013 RealVNC ltd.
 * Portions Copyright 2011-2013 Car Connectivity Consortium LLC
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

/**
 * Provides the interface related to 4.7 Device Status
 */

package com.android.mirrorlink.commonapi;

/**
 * Interface used to implement the Device Status call backs
 */
oneway interface IDeviceStatusListener {

    /**
     * 4.7.1 Drive Mode Callback
     * Indicates the DriveMode status of the client has changed
     * The application should respond using setApplicationInDriveMode
     *
     * @param driveMode Flag indicating drive mode
     */
    void onDriveModeChange(in boolean driveMode);

    /**
     * 4.7.1 Night Mode Callback
     * Indicates the NightMode status of the client has changed
     * The application should respond using setApplicationInNightMode
     *
     * @param nightMode Flag indicating night mode
     */
    void onNightModeChanged(in boolean nightMode);

    /**
     * 4.7.3 Open Microphone Callback
     * Response on opening the Microphone from the MirrorLink Client
     *
     * @param  micInput Flag whether mic input is enabled on MirrorLink Client
     */
    void onMicrohphoneStatusChanged(in boolean micInput);

}
