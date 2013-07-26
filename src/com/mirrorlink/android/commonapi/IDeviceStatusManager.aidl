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

package com.mirrorlink.android.commonapi;

import com.mirrorlink.android.commonapi.IDeviceStatusListener;

/**
 * Provides the interface related to 4.10 Device Status.
 *
 * The callbacks are defined in {@link IDeviceStatusListener}.
 *
 * Module reference: 0x09
 * Server requirement: Mandatory
 */
interface IDeviceStatusManager {

    /**
     * 4.10.4 Set Open Microphone.
     *
     * Open the Microphone on the MirrorLink Client.
     *
     * @param micInput Flag enabling mic input on the MirrorLink Client.
     */
    boolean setMicrophoneOpen(in boolean micInput);

    /**
     * Register the listener for monitoring the DeviceStatusManager.
     *
     * @param   listener The listener to register.
     *
     * @return  true if the listener was registered, false otherwise.
     */
    boolean registerListener(in IDeviceStatusListener listener);

    /**
     * Unregister the listener monitoring the DeviceStatusManager.
     *
     * @param   listener The listener to unregister.
     *
     * @return  true if the listener was unregistered, false otherwise.
     */
    boolean unregisterListener(in IDeviceStatusListener listener);
}
