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
 * The main interface through which the MirrorLink Common API
 * services are to be accessed
 */

package com.android.mirrorlink.commonapi;

import com.android.mirrorlink.commonapi.ICertificationManager;
import com.android.mirrorlink.commonapi.IConnectionManager;
import com.android.mirrorlink.commonapi.IContextManager;
import com.android.mirrorlink.commonapi.IDataServicesManager;
import com.android.mirrorlink.commonapi.IDeviceInfoManager;
import com.android.mirrorlink.commonapi.IDeviceStatusManager;
import com.android.mirrorlink.commonapi.IDisplayManager;
import com.android.mirrorlink.commonapi.IEventMappingManager;
import com.android.mirrorlink.commonapi.INotificationManager;


interface ICommonAPIService {
    /**
     *  reports the current CommonAPI api level supported by the service,
     *  as opposed to the api level specified by this interface.
     */
    int getCommonAPIServiceApiLevel();
    /**
     *  Returns a ICertificationManager for handling certificates
     */
    ICertificationManager getCertificationManager();
    /**
     *  Returns a IConnectionManager for requesting connection information
     */
    IConnectionManager getConnectionManager();
    /**
     *  Returns a IContextManagerManager for handling context information
     */
    IContextManager getContextManager();
    /**
     *  Returns a IDataServiceManager for handling Common Data Bus connections
     */
    IDataServicesManager getDataServicesManager();
    /**
     *  Returns a IDeviceInfoManager for handling device information
     */
    IDeviceInfoManager getDeviceInfoManager();
    /**
     *  Returns a IDeviceStatusManager for handling device status
     */
    IDeviceStatusManager getDeviceStatusManager();
    /**
     *  Returns a IDisplayManager for handling remote displays
     */
    IDisplayManager getDisplayManager();
    /**
     *  Returns a IEventMappingManager for handling event mapping
     */
    IEventMappingManager getEventMappingManager();
    /**
     *  Returns a INotificationManager for handling notifications
     */
    INotificationManager getNotificationManager();
}
