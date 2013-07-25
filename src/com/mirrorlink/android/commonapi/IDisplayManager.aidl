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
 * Provides the interface related to 4.5 Display.
 *
 * The callbacks are defined in {@link IDisplayListener}.
 *
 * Module reference: 0x04
 * Server requirement: Mandatory
 */
interface IDisplayManager {

    /**
     * 4.5.1 Display Configuration.
     *
     * Access information on the display properties of the MirrorLink Session; this
     * in-formation is used by MirrorLink certified applications to adapt its user interface to
     * fulfill driver distraction guidelines, in particular regarding font sizes.
     *
     * @return Bundle object containing the display configuration, as defined in {@link
     * Defs.DisplayConfiguration}, of the MirrorLink session.
     */
    Bundle getDisplayConfiguration();

    /**
     * 4.5.3 Client Pixel Format.
     *
     * Access information about the pixel format of the framebuffer data,
     * being transmitted to the MirrorLink Client.
     *
     * @return The pixel format of the framebuffer data. The values are defined in {@link
     * Defs.ClientPixelFormat}.
     */
    int getClientPixelFormat();

    /**
     * 4.5.5 Set Framebuffer Orientation Support.
     * 
     * Inform the MirrorLink Server about the application’s framebuffer orientation support; unless
     * otherwise set by the application, the VNC Server MUST assume that the applica-tion will only
     * support Landscape.
     *
     * @param framebufferOrientation Orientation of the Application Framebuffer.
     *
     * @return true on success, fals if the orientation is not supported by the client.
     */
    boolean setFramebufferOrientationSupport(int framebufferOrientation);

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
