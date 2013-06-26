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

import com.mirrorlink.android.commonapi.IContextListener;

/**
 * Provides the interface related to 4.6 Context Information
 */
interface IContextManager {

    /**
     * 4.6.1 Framebuffer Status
     * Provides information of the application status with respect to
     * rendering to the MirrorLink Server’s framebuffer;
     * the MirrorLink Server will use the information to inform the MirrorLink Client
     * about the application context switch.
     *
     * @param displayStatus the status of the application
     *              True: Foreground: application is rendering to the framebuffer
     *              False: Background: application is not rendering to the framebuffer
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean setFramebufferStatus(in boolean displayStatus);

    /**
     * 4.6.2 Framebuffer Context Information
     * Provides information of the current framebuffer context;
     * the MirrorLink Server MUST use the application and content category
     * values from the UPnP advertisements, unless otherwise stated from
     *
     * @param applicationCategory Category of the application
     *
     * @param contentCategory Category of the content
     *
     * @param framebufferArea the framebuffer rectangle of the specified region
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean setFramebufferContextInformation(in long applicationCategory, in long contentCategory, in Rect framebufferArea);

    /**
     * 4.6.5 Audio Context Information
     * Provides information of the current audio context and
     * whether the application is currently providing audio;
     *
     * @param audioContent Application is providing Audio content
     *        If set to True, the application is creating an audio stream,
     *        which is potentially mixed with other audio sources.
     *
     * @param applicationCategory Category of the application
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean setAudioContextInformation(in boolean audioContent, in long appCategory);

    /**
     * 4.6.7 Context Information Reset
     * Resets the framebuffer and audio context information to the values given in the UPnP advertisements;
     *
     * @param framebufferContext Reset the framebuffer context to the default values from the UPnP Application Listing
     *
     * @param audioContext Reset the audio context to the default values from the UPnP Application Listing.
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean resetContextInformation(in boolean framebufferContext, in boolean audioContext);

    /**
     * Register the listener for monitoring the ContextManager
     *
     * @param   listener the listener to register
     *
     * @return  true is the listener was registered, false otherwise
     */
    boolean registerListener(in IContextListener listener);

    /**
     * Unregister the listener monitoring the ContextManager
     *
     * @param   listener the listener to unregister
     *
     * @return  true is the listener was unregistered, false otherwise
     */
    boolean unregisterListener(in IContextListener listener);
}
