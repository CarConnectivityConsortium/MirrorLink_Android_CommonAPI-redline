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
     * Notifies the Manager that the application is not using it anymore.
     *
     * Applications are required to call this method when they no longer need to use the Manager.
     * Once called, if at a later point they need the Manager again, they can re-request access to
     * it from the {@link ICommonAPIService}.
     */
    void unregister();
}
