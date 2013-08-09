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
 * Provides the interface related to 4.3 Certification Information.
 *
 * Module reference: 0x02
 * Server requirement: Mandatory
 */
interface ICertificationManager {

    /**
     * 4.3.1 Get Application Certification Status.
     *
     * Provided application certificate status, as captured from the application certificate.
     *
     * @return A bundle detailing {@link Defs.ApplicationCertificationStatus}.
     */
    Bundle getApplicationCertificationStatus();

    /**
     * 4.3.2 Get Application Certifying Entities.
     *
     * Provide information on the certifying entities.
     *
     * @return Comma-separated list of certifying entities, which certified the application,
     */
    String getApplicationCertifyingEntities();

    /**
     * 4.3.3 Get Application Certification Information.
     *
     * Provide application certificate information.
     *
     * @param   entity the name of the certifying entity,
     *
     * @return  Bundle containing {@link Defs.CertificateInformation} for the given entity 
     *          or null if the application isn't certified or the entity is not part of the list of
     *          certifying entities for the application,
     */
    Bundle getApplicationCertificationInformation(in String entity);

    /**
     * Notifies the Manager that the application is not using it anymore.
     *
     * Applications are required to call this method when they no longer need to use the Manager.
     * Once called, if at a later point they need the Manager again, they can re-request access to
     * it from the {@link ICommonAPIService}.
     */
    void unregister();
}
