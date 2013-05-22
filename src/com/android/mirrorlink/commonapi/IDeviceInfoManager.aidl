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
 * Provides the interface related to 4.1 MirrorLink Device Info
 */

package com.android.mirrorlink.commonapi;

import android.os.Bundle;

import com.android.mirrorlink.commonapi.IDeviceInfoListener;

/**
 * Interface used to access the MirrorLink Device Info related features
 */
interface IDeviceInfoManager {

    /**
     * 4.1.1 MirrorLink Session Version
     *
     * @return  MirrorLink Session major version
     *          or -1 if no session has been established yet
     */
    int getMirrorLinkSessionVersionMajor();

    /**
     * 4.1.1 MirrorLink Session Version
     *
     * @return  MirrorLink Session minor version
     *          or -1 if no session has been established yet
     */
    int getMirrorLinkConnectionVersionMinor();
    /**
     * 4.1.4 MirrorLink Client Manufacturer and Model Information
     * Provided MirrorLink client manufacturer and model information
     * @return Bundle containg the client information or null if no client is connected
     */
    Bundle getMirrorLinkClientInformation();

   /**
     * Register the listener for monitoring the DeviceInfoManager
     *
     * @param   listener the listener to register
     *
     * @return  true is the listener was registered, false otherwise
     */
    boolean registerListener(in IDeviceInfoListener listener);

    /**
     * Unregister the listener monitoring the DeviceInfoManager
     *
     * @param   listener the listener to unregister
     *
     * @return  true is the listener was unregistered, false otherwise
     */
    boolean unregisterListener(in IDeviceInfoListener listener);
}
