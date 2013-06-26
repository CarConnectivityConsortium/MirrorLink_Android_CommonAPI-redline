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

import com.mirrorlink.android.commonapi.IDisplayListener;

/**
 * Provides the interface related to 4.4 Display
 */
interface IDisplayManager {

    /**
     * 4.4.1 Client Display Configuration
     * ccess information on the display properties of the MirrorLink Client;
     * this information is used by MirrorLink certified applications to adapt
     * its user interface to fulfill driver distraction guidelines,
     * in particular regarding font sizes.
     *
     * @return Bundle object containing the display configuration of the MirrorLink Client.
     */
    Bundle getClientDisplayConfiguration();

    /**
     * 4.4.3 Client Pixel Format
     * Access information about the pixel format of the framebuffer data,
     * being transmitted to the MirrorLink Client
     *
     * @return the pixel format of the framebuffer data
     */
    int getClientPixelFormat();

    /**
     * 4.4.5 Server Scaling Configuration
     * Access information on the scaling properties of the MirrorLink Server;
     * this information is used from MirrorLink certified applications to adapt
     * its user interface to fulfill driver distraction guidelines.
     *
     * @return Bundle object containing the scaled display configuration of the MirrorLink Server.
     */
    Bundle getServerScalingConfiguration();

    /**
     * Register the listener for monitoring the DisplayManager
     *
     * @param   listener the listener to register
     *
     * @return  true is the listener was registered, false otherwise
     */
    boolean registerListener(in IDisplayListener listener);

    /**
     * Unregister the listener monitoring the DisplayManager
     *
     * @param   listener the listener to unregister
     *
     * @return  true is the listener was unregistered, false otherwise
     */
    boolean unregisterListener(in IDisplayListener listener);

}
