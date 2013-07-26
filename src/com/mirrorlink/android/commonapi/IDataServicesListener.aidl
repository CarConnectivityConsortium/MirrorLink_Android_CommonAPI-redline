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
 * Provides the interface related to 4.11 Data Services - Callbacks.
 *
 * This is the interface for callbacks coming from {@link IDataServicesManager}.
 */
oneway interface IDataServicesListener {

    /**
     * 4.11.2 Available Services Callback.
     *
     * Change in available services. Callback must be called, when CDB connection is established.
     *
     * @param  services List of provided services. The list contains Strings with the names of the
     * available services. The known services are {@link Defs.LocationService} and {@link
     * Defs.GPSService}. 
     */
    void onAvailableServicesChanged(in List<Bundle> services);

    /**
     * 4.11.4 Register to a Service Callback.
     *
     * Registration completed.
     *
     * @param serviceId Service identifier.
     *
     * @param success Flag, to indicate whether the action is successful.
     */
    void onRegisterForService(in int serviceId, in boolean success);

    /**
     * 4.11.7 Subscribe to an Object Callback.
     *
     * Subscription complete.
     *
     * @param serviceId Service identifier.
     *
     * @param objectId Hash value of the object.
     *
     * @param success Flag, to indicate whether the action is successful.
     *
     * @param subscriptionType The subscription type. Will have one of the values defined in {@link
     * Defs.SubscriptionType}.
     *
     * @param interval Regular time interval in ms, in which updates are sent. MUST be 0 for
     * subscription types {@link Defs.SubscriptionType#ON_CHANGE} and {@link
     * Defs.SubscriptionType#AUTOMATIC}.
     */
    void onSubscribeResponse(in int serviceId, in long objectId, in boolean success,
            in byte subscriptionType, in int interval);

    /**
     * 4.11.? Subscribe Data Object Changed Callback.
     *
     * Object received.
     *
     * @param serviceId Service identifier
     *
     * @param objectId Hash value of the object
     *
     * @param object Bundle containing the object payload. Every value in the object is mapped to a corresponding
     *        key in the bundle, using the lowercase hex representation of the field id prefixed by 0x.
     *        Arrays are coded as a Bundle with keys 0,1,2,3 holding a Bundle object for every item in the array.
     */
    void onSubscribeDataObjectChanged(in int serviceId, in long objectId, in Bundle object);

    /**
     * 4.11.11 Get an Object Callback.
     *
     * Object received.
     *
     * @param serviceId Service identifier
     *
     * @param objectId Hash value of the object
     *
     * @param success Flag to indicate whether the action is successful.
     *
     * @param object Bundle containing the object payload. Every value in the object is mapped to a corresponding
     *        key in the bundle, using the lowercase hex representation of the field id prefixed by 0x.
     *        Arrays are coded as a Bundle with keys 0,1,2,3 holding a Bundle object for every item in the array.
     */
    void onGetDataObjectResponse(in int serviceId, in long objectId, boolean success, in Bundle object);

}


