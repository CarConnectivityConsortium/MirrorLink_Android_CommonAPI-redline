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

package com.mirrorlink.commonapi;

import android.os.Bundle;

 /**
 * Provides the interface related to 4.6 Context Information - Callbacks
 */
oneway interface IContextListener {

    /**
     * 4.6.3 Framebuffer Blocking Information Callback
     * Provides information on Framebuffer Blocking
     *
     * @param reason Reason for Framebuffer blocking
     *        Note: Blocking because of the wrong framebuffer orientation, is not reported via this function.
     * @param framebufferArea Framebuffer rectangle for the specified region.
     *
     * The application must switch to an activity with updated context information.
     * If the not, the MirrorLink Server will unblock the framebuffer
     * by terminating the application
     */
    void onFramebufferBlocked(in int reason, in Rect framebufferArea);

    /**
     * 4.6.4 Framebuffer Orientation Blocked Callback
     * A framebuffer orientation is blocked from the MirrorLink Client;
     * the application is requested to switch back to the other orientation.
     * If not implemented, applications will be able to support landscape only.
     *
     * @param orientation the Orientation blocked by the client
     */
    void onFramebufferOrientationBlocked(in byte orientation);

    /**
     * 4.6.6 Audio Blocking Information
     * Provides information on Framebuffer Blocking
     *
     * @param reason Reason for Audio blocking
     *
     * The application must switch to an audio stream with updated context information.
     * If not the server will unblock the audio by muting the audio stream
     */
    void onAudioBlocked(in int reason);
}
