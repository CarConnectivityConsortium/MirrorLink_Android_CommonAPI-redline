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

import com.mirrorlink.commonapi.IDataServicesListener;

/**
 * Provides the interface related to 4.8 Data Services
 */
interface IDataServicesManager {
    /**
     * 4.8.1 Get Available Services
     * Retrieve list of available Services provided from the MirrorLink Client
     * and supported from the MirrorLink Server.
     * @return  List of provided services;
     *          an empty list is returned if the CDB connection has not been established.
     */
    List<Bundle> getAvailableServices();

    /**
     * 4.8.3 Register to a Service
     * Register to an available Service
     *
     * @param serviceId Service identifier
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean registerToService(in int serviceId);

    /**
     * 4.8.5 Unregister from a Service
     * Unregister from an available Service
     *
     * @param serviceId Service identifier
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean unregisterFromService(in int serviceId);

    /**
     * 4.8.6 Subscribe to an Object
     * Subscribe a Service Object
     *
     * @param serviceId Service identifier
     *
     * @param objectId Hash value of the object
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean subscribeObject(in int serviceId, in long objectId);

    /**
     * 4.8.8 Unsubscribe from an Object
     * Unsubscribe from a Service Object
     *
     * @param serviceId Service identifier
     *
     * @param objectId Hash value of the object
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean unsubscribeObject(in int serviceId, in long objectId);

    /**
     * 4.8.10 Get an Object
     * Get a Service Object
     *
     * @param serviceId Service identifier
     *
     * @param objectId the hash value of the object
     *
     * @return Flag, to indicate whether the action is successful
     */

    boolean getObject(in int serviceId, in long objectId);

    /**
     * Register the listener for monitoring the DataServicesManager
     *
     * @param   listener the listener to register
     *
     * @return  true is the listener was registered, false otherwise
     */
    boolean registerListener(in IDataServicesListener listener);

    /**
     * Unregister the listener monitoring the DataServicesManager
     *
     * @param   listener the listener to unregister
     *
     * @return  true is the listener was unregistered, false otherwise
     */
    boolean unregisterListener(in IDataServicesListener listener);
}
