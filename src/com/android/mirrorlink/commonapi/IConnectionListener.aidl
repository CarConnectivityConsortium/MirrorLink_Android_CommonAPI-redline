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
 * Provides the interface related 4.3 Connection Information
 */

package com.android.mirrorlink.commonapi;

import android.os.Bundle;

 /**
 * Interface used to implement the Connection Information call backs
 */
oneway interface IConnectionListener {

    /**
     * 4.3.2 Established MirrorLink Session Callback
     * Indicate that the MirrorLink Session status has changed.
     *
     * @param mirrolinkSessionIsEstablished the new status of the MirrorLink session
     */
    void onMirrorLinkSessionChanged(in boolean mirrolinkSessionIsEstablished);

    /**
     * 4.3.4 Established Audio Connections Callback
     * Indicate that the audio connections changed.
     *
     * @param audioConnections Bundle containing the status of the audio connections available
     */
    void onAudioConnectionsChanged(in Bundle audioConnections);

    /**
     * 4.3.6 Established Remote Display Connection Callback
     * Indicate that the remote display connections changed.
     *
     * @param remoteConnection Bundle containing the status of the remote display connections available
     */
    void onRemoteDisplayConnectionChanged(in Bundle remoteDisplayConnection);

}
