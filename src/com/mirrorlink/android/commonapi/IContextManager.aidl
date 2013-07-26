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
 * Provides the interface related to 4.9 Context Information.
 *
 * The callbacks are defined in {@link IContextListener}.
 *
 * Module reference: 0x08
 * Server requirement: Mandatory
 */
interface IContextManager {

    /**
     * 4.9.1 Framebuffer Context Information.
     *
     * Provides information of the current framebuffer context; the MirrorLink Server MUST use the
     * application and content category values from the UPnP advertisements, unless otherwise stated
     * from the application using this function. The MirrorLink Server MUST use the given values
     * until a new set function is called. Unless set by the application, the MirrorLink Server MUST
     * treat the "Handle Blocking" flag as being set to a FALSE value.
     *
     * @param applicationCategory Category of the application. Should be one defined in {@link
     * Defs.ContextInformation}.
     *
     * @param contentCategory Category of the content. Should be one defined in {@link
     * Defs.ContextInformation}.
     *
     * @param framebufferArea The framebuffer rectangle of the specified region.
     *
     * @param handleBlocking Flag indicating whether the application will take care of the blocking
     * if the MirrorLink Client blocks the content.
     */
    void setFramebufferContextInformation(in long applicationCategory, in long contentCategory,
            in Rect framebufferArea, in boolean handleBlocking);

    /**
     * 4.9.3 Audio Context Information.
     *
     * Provides information of the current audio context and whether the application is currently
     * providing audio; The MirrorLink Server MUST use the application category value from the UPnP
     * advertisements, unless otherwise stated from the application using this SET function. The
     * MirrorLink Server MUST use the given values until a new SET function call is issued. The
     * application has to set the application context information prior to starting the audio
     * stream. Unless set by the application, the MirrorLink Sever MUST treat the "Handle Blocking"
     * flag as being set to a FALSE value.
     *
     * @param audioContent Application is providing Audio content
     *        If set to True, the application is creating an audio stream,
     *        which is potentially mixed with other audio sources. Should be one defined in {@link
     *        Defs.ContextInformation}.
     *
     * @param appCategory Category of the application. Should be one defined in {@link
     * Defs.ContextInformation}.
     *
     * @param handleBlocking Flag indicating whether the application will take care of the blocking
     * if the MirrorLink Client blocks the content.
     */
    void setAudioContextInformation(in boolean audioContent, in long appCategory, in boolean handleBlocking);

    /**
     * 4.9.5 Context Information Reset.
     *
     * Resets the framebuffer and audio context information to the values given in the UPnP
     * advertisements; the Framebuffer Context.
     *
     * @param framebufferContext Reset the framebuffer context to the default values from the UPnP
     * Application Listing.
     *
     * @param audioContext Reset the audio context to the default values from the UPnP Application
     * Listing.
     */
    void resetContextInformation(in boolean framebufferContext, in boolean audioContext);

    /**
     * Register the listener for monitoring the ContextManager.
     *
     * @param   listener The listener to register.
     *
     * @return  true if the listener was registered, false otherwise.
     */
    boolean registerListener(in IContextListener listener);

    /**
     * Unregister the listener monitoring the ContextManager.
     *
     * @param   listener The listener to unregister.
     *
     * @return  true if the listener was unregistered, false otherwise.
     */
    boolean unregisterListener(in IContextListener listener);
}
