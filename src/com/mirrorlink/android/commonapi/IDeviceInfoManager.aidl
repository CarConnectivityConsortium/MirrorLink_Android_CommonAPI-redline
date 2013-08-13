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

import android.os.Bundle;

import com.mirrorlink.android.commonapi.IDeviceInfoListener;

/**
 * Provides the interface related to 4.2 MirrorLink Device Info.
 *
 * The callbacks are defined in {@link IDeviceInfoListener}.
 *
 * Module reference: 0x01
 * Server requirement: Mandatory
 */
interface IDeviceInfoManager {

    /**
     * 4.2.1 MirrorLink Session Version.
     *
     * Available MirrorLink Version for the established connection, as agreed between the MirrorLink
     * Server and Client. Information MUST be available as soon as the MirrorLink session is
     * connected
     *
     * @return  MirrorLink Session major version
     *          or 1 if version information is not available.
     */
    int getMirrorLinkSessionVersionMajor();

    /**
     * 4.2.1 MirrorLink Session Version.
     *
     * Available MirrorLink Version for the established connection, as agreed between the MirrorLink
     * Server and Client. Information MUST be available as soon as the MirrorLink session is
     * connected
     *
     * @return  MirrorLink Session minor version
     *          or 0 if version information is not available.
     */
    int getMirrorLinkSessionVersionMinor();

    /**
     * 4.2.2 MirrorLink Client Manufacturer and Model Information.
     *
     * Provided MirrorLink client manufacturer and model information, as received through the UPnP
     * Client Profile Service; any later change to the provided information MUST be notified via the
     * callback function.
     *
     * @return Bundle containg the client information or null if no client is connected. The bundle
     * will contain the values defined in {@link Defs.ClientInformation}.
     */
    Bundle getMirrorLinkClientInformation();

    /**
     * Notifies the Manager that the application is not using it anymore.
     *
     * Applications are required to call this method when they no longer need to use the Manager.
     * Once called, if at a later point they need the Manager again, they can re-request access to
     * it from the {@link ICommonAPIService}.
     */
    void unregister();
}
