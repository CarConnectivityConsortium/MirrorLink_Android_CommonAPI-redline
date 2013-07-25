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

import com.mirrorlink.android.commonapi.IEventMappingListener;

/**
 * Provides the interface related to 4.5 Event Features
 *
 * Module reference: 0x05
 * Server requirement: Mandatory
 */
interface IEventMappingManager {

    /**
     * 4.5.1 Event Configuration
     * Access information on the event properties of the MirrorLink connection,
     * i.e. the event properties, which are supported from both,
     * the MirrorLink Server and MirrorLink Client;
     * details on the event configuration are specified in the VNC specification.
     *
     * @return  the event configuration of the connection
     *          as specified in MirrorLink VNC specification
     */
    Bundle getEventConfiguration();


    /**
     * 4.5.4 Get Event Mapping
     * Mapping MirrorLink Client events to local MirrorLink Server events; 
     * this API call gives access to the internal mapping in the MirrorLink Server.
     *
     * @return  the key mapping information about remote events and local events
     */
    List<Bundle> getEventMappings();

    /**
     * Register the listener for monitoring the EventMappingManager
     *
     * @param   listener the listener to register
     *
     * @return  true is the listener was registered, false otherwise
     */
    boolean registerListener(in IEventMappingListener listener);

    /**
     * Unregister the listener monitoring the EventMappingManager
     *
     * @param   listener the listener to unregister
     *
     * @return  true is the listener was unregistered, false otherwise
     */
    boolean unregisterListener(in IEventMappingListener listener);
}
