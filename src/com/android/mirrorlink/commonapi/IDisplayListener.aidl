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
 * Provides the interface related to 4.4 Display
 */

package com.android.mirrorlink.commonapi;

import android.os.Bundle;

import android.os.Parcelable;

/**
 * Interface used to implement the Display call backs
 */
oneway interface IDisplayListener {
    /**
     * 4.4.2 Client Display Configuration Callback
     * Client Display Configuration has changed.
     * 
     * @param clientDisplayConfiguration the display configuration of the MirrorLink Client.
     */
    void onClientDisplayConfigurationChanged(in Bundle clientDisplayConfiguration);

    /**
     * 4.4.4 Client Pixel Format Callback
     * Pixel format has changed.
     *
     * @param pixelFormat the pixel format of the framebuffer data
     */
    void onPixelFormatChanged(in int pixelFormat);

    /**
     * 4.4.6 Server Scaling Configuration Callback
     * Server scaling configuration changed.
     *
     * @param serverScalingConfiguration the scaled display configuration of the MirrorLink Server.
     */
    void onServerDisplayConfigurationChanged(in Bundle serverScalingConfiguration);
}
