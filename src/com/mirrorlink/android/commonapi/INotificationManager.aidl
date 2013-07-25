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

import com.mirrorlink.android.commonapi.INotificationListener;

/**
 * Provides the interface related to 4.9 Notifications.
 *
 * Module reference: 0x0B
 * Server requirement: Optional
 */
interface INotificationManager {
    /**
     * 4.9.1 Notifications Supported
     * Indicate support for UPnP notifications from the application;
     * the MirrorLink Server will issue a NotiAppListUpdate event,
     * to inform the MirrorLink Client that the notification support
     * for this application has changed.
     *
     * @param notificationSupported Flag indicating notification support from the application
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean setNotificationSupported(in boolean notificationSupported);

    /**
     * 4.9.2 Notifications Enabled
     * Checks whether notifications are enabled for the application
     * from the MirrorLink Server and Client.
     *
     * @return Flag indicating that notifications are enabled from MirrorLink
     *         Server and Client for the application
     */
    boolean getNotificationEnabled();

    /**
     * 4.9.4 Notification Configuration
     * Get information, in case the MirrorLink client is providing 
     * configuration information for the notification service.
     *
     * @return Bundle containing the notification configuration
     */
    Bundle getNotificationConfiguration();

    /**
     * 4.9.6 Send Notification for client-based Notification UI
     * Send a notification from the application; this notification replaces a previously send notification.
     *
     * @param   title Title of the notification event
     *
     * @param   body Body of the notification event
     *
     * @param   iconUrl Url to icon belonging to the notification
     *
     * @param   actionList List of actions belonging to the notification
     *
     * @return The notification identifier; a Zero value will be returned, if the action was not successful.
     */
     long sendClientNotification(in String title, in String body, in Uri iconUrl, in List<Bundle> actionList);

    /**
     * 4.9.7 Send Notification for VNC-based Notification UI
     * Send a notification from the application; this notification replaces a previously send notification.
     *
     * @return The notification identifier; a Zero value will be returned, if the action was not successful.
     */
    boolean sendVncNotification();

    /**
     * 4.9.9 Cancel Notification 
     * Cancel a notification from the application;
     *
     * @param notificationId Identifier of the notification, which needs to get canceled. 
     *
     * @return Flag, to indicate whether the action is successful
     */
    boolean cancelNotification(in long notificationId);

    /**
     * Register the listener for monitoring the NotificationManager
     *
     * @param   listener the listener to register
     *
     * @return  true is the listener was registered, false otherwise
     */
    boolean registerListener(in INotificationListener listener);

    /**
     * Unregister the listener monitoring the NotificationManager
     *
     * @param   listener the listener to unregister
     *
     * @return  true is the listener was unregistered, false otherwise
     */
    boolean unregisterListener(in INotificationListener listener);
}
