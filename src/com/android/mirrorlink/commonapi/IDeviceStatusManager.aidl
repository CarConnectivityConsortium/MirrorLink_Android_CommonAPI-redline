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

import com.android.mirrorlink.commonapi.IDeviceStatusListener;

/**
 * Interface used to access the Device Status related features
 */
interface IDeviceStatusManager {

    /**
     *  4.7.1 Drive Mode Callback
     *  Returns whether the server is is DriveMode or not
     *
     *  @return true if DriveMode is enabled
     */
    boolean getDriveMode();

    /**
     *  4.7.2 Night Mode Callback
     *  Returns whether the server is is NightMode or not
     *
     *  @return true if DriveMode is enabled
     */
    boolean getNightMode();

    /**
     *  4.7.1 Drive Mode Callback
     *  Informs the server that the application has switched in and out of DriveMode
     *
     * @param driveModeEnabled true if the application is in Drive Mode
     */
    void setApplicationInDriveMode(in boolean driveModeEnabled);

    /**
     *  4.7.2 Night Mode Callback
     *  Informs the server that the application has switched in and out of NightMode
     *
     *  @param nightModeEnabled true if the application is in Night mode
     */
    void setApplicationInNightMode(in boolean nightModeEnabled);

    /**
     *  4.7.3 Open Microphone Callback
     *  Returns whether the Microphone input is opened or not
     *
     *  @return true if the Microphone input is opened
     */
    boolean getMicrophoneStatus();

    /**
     * 4.7.4 Set Open Microphone
     * Open the Microphone on the MirrorLink Client;
     *
     * @param micInput Flag enabling mic input on the MirrorLink Client.
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean setMicrophoneOpen(in boolean micInput);

    /**
     * Register the listener for monitoring the DeviceStatusManager
     *
     * @param   listener the listener to register
     *
     * @return  true is the listener was registered, false otherwise
     */
    boolean registerListener(in IDeviceStatusListener listener);

    /**
     * Unregister the listener monitoring the DeviceStatusManager
     *
     * @param   listener the listener to unregister
     *
     * @return  true is the listener was unregistered, false otherwise
     */
    boolean unregisterListener(in IDeviceStatusListener listener);
}
