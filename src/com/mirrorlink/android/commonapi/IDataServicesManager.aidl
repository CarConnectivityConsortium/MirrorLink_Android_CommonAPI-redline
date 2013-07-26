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

import com.mirrorlink.android.commonapi.IDataServicesListener;

/**
 * Provides the interface related to 4.11 Data Services.
 *
 * The callbacks are defined in {@link IDataServicesListener}.
 *
 * Module reference: 0x0A
 * Server requirement: Optional
 */
interface IDataServicesManager {
    /**
     * 4.11.1 Get Available Services.
     *
     * Retrieve list of available Services provided from the MirrorLink Client and supported from
     * the MirrorLink Server.
     *
     * @return  List of provided services;
     *          an empty list is returned if the CDB connection has not been established. The list
     *          contains Strings with the names of the available services. The known services are
     *          {@link Defs.LocationService} and {@link Defs.GPSService}. 
     */
    List<String> getAvailableServices();

    /**
     * 4.11.3 Register to a Service.
     *
     * Register to an available Service.
     *
     * @param serviceId Service identifier. Will be one of {@link
     * Defs.LocationService#LOCATION_OBJECT_UID}, or {@link Defs.GPSService#NMEA_OBJECT_UID}.
     */
    void registerToService(in int serviceId);

    /**
     * 4.11.5 Unregister from a Service.
     *
     * Unregister from an available Service.
     *
     * @param serviceId Service identifier.
     */
    void unregisterFromService(in int serviceId);

    /**
     * 4.11.6 Subscribe to an Object.
     *
     * Subscribe a Service Object.
     *
     * @param serviceId Service identifier.
     *
     * @param objectId Hash value of the object.
     */
    void subscribeObject(in int serviceId, in long objectId);

    /**
     * 4.11.8 Unsubscribe from an Object.
     *
     * Unsubscribe from a Service Object.
     *
     * @param serviceId Service identifier.
     *
     * @param objectId Hash value of the object.
     */
    void unsubscribeObject(in int serviceId, in long objectId);

    /**
     * 4.11.9 Set an Object.
     *
     * Set a Service Object. Requires established CDB connection and registered service.
     *
     * @param serviceId Service identifier.
     *
     * @param objectId the hash value of the object.
     *
     * @param object Bundle containing the object payload. Every value in the object is mapped to a corresponding
     *        key in the bundle, using the lowercase hex representation of the field id prefixed by 0x.
     *        Arrays are coded as a Bundle with keys 0,1,2,3 holding a Bundle object for every item in the array.
     */
    void setObject(in int serviceId, in long objectId, in Bundle object);

    /**
     * 4.11.10 Get an Object.
     *
     * Get a Service Object. Requires established CDB connection and registered service.
     *
     * @param serviceId Service identifier
     *
     * @param objectId the hash value of the object
     */
    void getObject(in int serviceId, in long objectId);

    /**
     * Register the listener for monitoring the DataServicesManager.
     *
     * @param   listener The listener to register.
     *
     * @return  true if the listener was registered, false otherwise.
     */
    boolean registerListener(in IDataServicesListener listener);

    /**
     * Unregister the listener monitoring the DataServicesManager.
     
     * @param   listener The listener to unregister.
     *
     * @return  true if the listener was unregistered, false otherwise.
     */
    boolean unregisterListener(in IDataServicesListener listener);
}
