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
 * Provides the interface related to 4.12 Notifications - Callbacks.
 *
 * This is the interface for callbacks coming from {@link INotificationManager}.
 */
oneway interface INotificationListener {
    /**
     * 4.12.3 Notifications Enabled Callback.
     *
     * Notification that enablement has changed.
     *
     * @param   notiEnabled The flag indicating the notifications are enabled or not.
     */
    void onNotificationEnabledChanged(in boolean notiEnabled);

    /**
     * 4.12.5 Notification Configuration Callback.
     *
     * Notification Configuration information has changed.
     *
     * @param   notificationConfiguration The UPnP notification service related preference of
     * Client. The fields available are defined in {@link Defs.NotificationConfiguration}.
     */
    void onNotificationConfigurationChanged(in Bundle notificationConfiguration);

    /**
     * 4.12.9 Receive Action Callback
     * Receive action from the MirrorLink Client for a notification;
     *
     * @param notificationId Identifier of the notification
     *
     * @param actionId Action identifier
     */
    void onNotificationActionReceived(in long notificationId, in int actionId);
}
