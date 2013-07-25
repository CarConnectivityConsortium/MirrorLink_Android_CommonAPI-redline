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

import com.mirrorlink.android.commonapi.ICertificationManager;
import com.mirrorlink.android.commonapi.IConnectionManager;
import com.mirrorlink.android.commonapi.IContextManager;
import com.mirrorlink.android.commonapi.IDataServicesManager;
import com.mirrorlink.android.commonapi.IDeviceInfoManager;
import com.mirrorlink.android.commonapi.IDeviceStatusManager;
import com.mirrorlink.android.commonapi.IDisplayManager;
import com.mirrorlink.android.commonapi.IEventMappingManager;
import com.mirrorlink.android.commonapi.INotificationManager;

/**
 * The main interface through which the MirrorLink Common API
 * services are to be accessed.
 *
 * Module reference: 0x00
 * Server requirement: Mandatory
 */
interface ICommonAPIService {
    /**
     *  Reports the current CommonAPI api level supported by the service,
     *  as opposed to the api level specified by this interface.
     */
    int getCommonAPIServiceApiLevel();
    /**
     *  Returns a ICertificationManager for handling certificates.
     *
     *  This service is mandatory so a reference to the manager should be returned.
     *
     * @return An instance of {@link ICertificationManager}.
     */
    ICertificationManager getCertificationManager();
    /**
     *  Returns a IConnectionManager for requesting connection information.
     *
     *  This service is mandatory so a reference to the manager should be returned.
     *
     * @return An instance of {@link IConnectionManager}.
     */
    IConnectionManager getConnectionManager();
    /**
     *  Returns a IContextManagerManager for handling context information.
     *
     *  This service is mandatory so a reference to the manager should be returned.
     *
     * @return An instance of {@link IContextManager}.
     */
    IContextManager getContextManager();
    /**
     *  Returns a IDataServiceManager for handling Common Data Bus connections.
     *
     *  This service is optional so null may be returned.
     *
     * @return An instance of {@link IDataServicesManager}.
     */
    IDataServicesManager getDataServicesManager();
    /**
     *  Returns a IDeviceInfoManager for handling device information.
     *
     *  This service is mandatory so a reference to the manager should be returned.
     *
     * @return An instance of {@link IDeviceInfoManager}.
     */
    IDeviceInfoManager getDeviceInfoManager();
    /**
     *  Returns a IDeviceStatusManager for handling device status.
     *
     *  This service is mandatory so a reference to the manager should be returned.
     *
     * @return An instance of {@link IDeviceStatusManager}.
     */
    IDeviceStatusManager getDeviceStatusManager();
    /**
     *  Returns a IDisplayManager for handling remote displays.
     *
     *  This service is mandatory so a reference to the manager should be returned.
     *
     * @return An instance of {@link IDisplayManager}.
     */
    IDisplayManager getDisplayManager();
    /**
     *  Returns a IEventMappingManager for handling event mapping.
     *
     *  This service is mandatory so a reference to the manager should be returned.
     *
     * @return An instance of {@link IEventMappingManager}.
     */
    IEventMappingManager getEventMappingManager();
    /**
     *  Returns a INotificationManager for handling notifications.
     *
     *  This service is optional so null may be returned.
     *
     * @return An instance of {@link INotificationManager}.
     */
    INotificationManager getNotificationManager();
}
