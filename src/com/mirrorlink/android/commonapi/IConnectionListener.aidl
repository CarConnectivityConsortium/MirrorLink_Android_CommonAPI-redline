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
 * Provides the interface related 4.4 Connection Information - Callbacks.
 *
 * This is the interface for callbacks coming from {@link IConnectionManager}.
 */
oneway interface IConnectionListener {

    /**
     * 4.4.2 Established MirrorLink Session Callback.
     *
     * Indicate that the MirrorLink Session status has changed.
     */
    void onMirrorLinkSessionChanged();

    /**
     * 4.4.4 Established Audio Connections Callback.
     *
     * Indicate that the audio connections changed.
     */
    void onAudioConnectionsChanged();

    /**
     * 4.4.6 Established Remote Display Connection Callback.
     *
     * Indicate that the remote display connections changed.
     */
    void onRemoteDisplayConnectionChanged();

}
