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
 * Provides the interface related to 4.5 Event Features - Callbacks
 */
oneway interface IEventMappingListener {
    /**
     * 4.5.2 Event Configuration Callback
     * MirrorLink session event configuration information has changed.
     *
     * @param eventConfiguration the event configuration of the MirrorLink session
     */
    void onEventConfigurationChanged(in Bundle eventConfiguration);

    /**
     * 4.5.5 Get Event Mapping Callback
     * The application MUST be notified, whenever the MirrorLink Server and Client change the mapping.
     *
     * @param eventMapping the mapping information about remote events and local events
     */
    void onEventMappingChanged(in Bundle eventMapping);

}
