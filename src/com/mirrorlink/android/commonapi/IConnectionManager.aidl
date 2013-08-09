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

import com.mirrorlink.android.commonapi.IConnectionListener;

/**
 * Provides the interface related to 4.4 Connection Information.
 *
 * The callbacks are defined in {@link IConnectionListener}.
 *
 * Module reference: 0x03
 * Server requirement: Mandatory
 */
interface IConnectionManager {

    /**
     *  4.4.1 Indicates whether a MirrorLink session is currently established.
     *  A MirrorLink is considered established if a ClientProfile has been
     *  set on the MirrorLink Server for the current tethering session.
     */
    boolean isMirrorLinkSessionEstablished();

    /**
     * 4.4.3 Established Audio Connections.
     *
     * Established Audio connections within MirrorLink Session
     *
     * @return Bundle containing the status of the audio connections available. The details of the
     * fields available are found in {@link Defs.AudioConnections}.
     */
    Bundle getAudioConnections();

    /**
     * 4.4.5 Established Remote Display Connection.
     *
     * Established remote display connection within MirrorLink Session.
     *
     * @return Value containing the status of the remote display connections available. The values
     * are defined in {@link Defs.RemoteDisplayConnection}.
     */
    int getRemoteDisplayConnections();

    /**
     * Notifies the Manager that the application is not using it anymore.
     *
     * Applications are required to call this method when they no longer need to use the Manager.
     * Once called, if at a later point they need the Manager again, they can re-request access to
     * it from the {@link ICommonAPIService}.
     */
    void unregister();
}
