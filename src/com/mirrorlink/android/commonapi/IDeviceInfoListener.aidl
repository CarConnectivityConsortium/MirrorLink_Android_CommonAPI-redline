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

/**
 * Provides the interface related to 4.2 MirrorLink Device Info - Callbacks.
 *
 * This is the interface for callbacks coming from {@link IDeviceInfoManager}.
 */
oneway interface IDeviceInfoListener {

    /**
     * 4.2.4 MirrorLink Client Manufacturer and Model Information Callback.
     *
     * Indicates that the Client information has changed; an application MUST use the function
     * described in {@link IDeviceInfoManager#getMirrorLinkSessionVersionMajor}, {@link
     * IDeviceInfoManager#getMirrorLinkConnectionVersionMinor} and {@link
     * IDeviceInfoManager#getMirrorLinkClientInformation} to retrieve the updated information.
     */
    void onDeviceInfoChanged();

}
