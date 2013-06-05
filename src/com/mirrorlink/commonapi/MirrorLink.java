/* Copyright 2013 RealVNC, ltd.
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

/**
 * The Common API specifies an interface to the MirrorLink Server,
 * which allows any application to either get information about
 * MirrorLink Server or Client properties or to set them to specific values.
 * In addition, the API specifies callback functions, which are used from the
 * MirrorLink Server to inform the application about any change.
 *
 * The Common API uses a set of Data Types, given in the table below, together
 * with the Java type used to represent the original Data type.
 * <pre>
 * Data Type | Java Type | Description
 * ----------|-----------|-----------------------------------------------------
 * bool      | boolean   | the logical values true and false.
 * uint8     | short     | integer values ranging from 0 to positive 255 (0xFF)
 * uint16    | int       | integer values ranging from 0 to positive 65,535 (0xFFFF)
 * uint32    | long      | integer values ranging from 0 to positive 4,294,967,295 (0xFFFFFFFF)
 * int8      | byte      | integer values ranging from negative 128 (0x80) to positive 127 (0x7F)
 * int16     | short     | integer values ranging from negative 32,768 (0x8000) to positive 32,767 (0x7FFF)
 * int32     | int       | an integer values ranging from negative 2,147,483,648 (0x80000000) to positive 2,147,483,647 (0x7FFFFFFF)
 * float     | Float     | a 32 bit  floating point value according IEEE754-1985, single-precision
 * double    | Double    | a 64 bit  floating point value according IEEE754-1985, double-precision
 * string8   | String    | Array of UTF8 characters. Each character takes 1 byte (UTF8).
 * string16  | String    | Array of UTF16 characters. Each character takes 2 bytes (UTF16).
 * url       | String    | Data type representing a URL
 * </pre>
 */
public class MirrorLink {
    /**
     *  Common API Level provided by this interface
     */
    public static final int API_LEVEL = 10;

    /**
     *  Intent used to bind to the MirrorLink Server CommonAPI service
     */
    public static final class Intents {
        public static final String BIND_MIRRORLINK_API = "com.mirrorlink.service.BIND";
        public static final String LAUNCH_MIRRORLINK_APP = "com.mirrorlink.app.LAUNCH";
        public static final String TERMINATE_MIRRORLINK_APP = "com.mirrorlink.app.TERMINATE";
    }
    /*****************************************************************************
     3 DEFINITIONS
     *****************************************************************************/
    /**
     *  3.1 Rect Bundle property names
     */
    public static final class Rect {
        /**
         * Horizontal offset of the upper left corner
         * uint16 packaged as an int
         */
        public static final String X = "X";
        /**
         * Vertical offset of the upper left corner
         * uint16 packaged as an int
         */
        public static final String Y = "Y";
        /**
         * Width of the rectangle
         * uint16 packaged as an int
         */
        public static final String WIDTH = "WIDTH";
        /**
         * Height of the rectangle
         * uint16 packaged as an int
         */
        public static final String HEIGHT = "HEIGHT";

    }
    /**
     *  3.2 ServiceInformation Bundle property names
     */
    public static final class ServiceInformation {
        /**
         * Major service version
         * uint8 packaged as a short
         */
        public static final String VERSION_MAJOR = "VERSION_MAJOR";
        /**
         * Minor service version
         * uint8 packaged as a short
         */
        public static final String VERSION_MINOR = "VERSION_MINOR";
        /**
         * Service identifier
         * uint16 packaged as an int
         */
        public static final String SERVICE_ID = "SERVICE_ID";
        /**
         * Service name
         * String
         */
        public static final String SERVICE_NAME = "SERVICE_NAME";
    }
    /**
     *  3.3 Action Bundle property names
     */
    public static final class Action {
        /**
         * Action identifier
         * uint16 packaged as an int
         */
        public static final String ACTION_ID = "ACTION_ID";
        /**
         * Action name
         * String
         */
        public static final String ACTION_NAME = "ACTION_NAME";
        /**
         * Flag whether to launch the app
         * Boolean
         */
        public static final String LAUNCH_APP = "LAUNCH_APP";
        /**
         * URL to the con associated with the action
         * url packaged as a String
         */
        public static final String ICON_URL = "ICON_URL";
    }
    /*****************************************************************************
     4 COMMON API ELEMENTS
     *****************************************************************************/
    /** 4.1 MirrorLink Device Info */

    /**
     * 4.1.4 ClientInformation Bundle property names
     */
    public static final class ClientInformation {
        /**
         * Identifier of the MirrorLink client
         * String
         */
        public static final String CLIENT_IDENTIFIER = "CLIENT_IDENTIFIER";
        /**
         * Short user-friendly description of the MirrorLink client
         * String
         */
        public static final String CLIENT_FRIENDLY_NAME = "CLIENT_FRIENDLY_NAME";
        /**
         * Manufacturer Name of the MirrorLink client
         * String
         */
        public static final String CLIENT_MANUFACTURER = "CLIENT_MANUFACTURER";
        /**
         * Model name of the MirrorLink client
         * String
         */
        public static final String CLIENT_MODEL_NAME = "CLIENT_MODEL_NAME";
        /**
         * Model number of the MirrorLink client
         * String
         */
        public static final String CLIENT_MODEL_NUMBER = "CLIENT_MODEL_NUMBER";
    }

    /** 4.2 Certification Information */

    /**
     * 4.2.1 ApplicationCertificationStatus Bundle property names and values
     */
    public static final class ApplicationCertificationStatus {
        /**
         * Flag, indicating whether the MirrorLink server has a valid certificate for the application
         * Boolean
         */
        public static final String HAS_VALID_CERTIFICATE = "HAS_VALID_CERTIFICATE";
        /**
         * Flag, indicating, whether the MirrorLink server has included the application into its UPnP advertisements as a certified application.
         * Boolean
         */
        public static final String ADVERTISED_AS_CERTIFIEDAPP = "ADVERTISED_AS_CERTIFIEDAPP";
    }
    /**
     *  4.2.3 CertificateInformation Bundle property names and values
     */
    public static final class CertificateInformation {
        /**
         * Name of the certifying entity
         * String
         */
        public static final String ENTITY = "ENTITY";
        /**
         * flag, whether the application has been certified from the given entity
         * Boolean
         */
        public static final String CERTIFIED = "CERTIFIED";
        /**
         * Comma-separated list of locales for which the application has been certified
         * for restricted use (drive-level) from the given entity
         * String
         */
        public static final String RESTRICED = "RESTRICTED";
        /**
         * Comma-separated list of locales for which the application has been certified
         * for non-restricted use (base-level) from the given entity
         * String
         */
        public static final String NONRESTRICTED = "NONRESTRICTED";
    }

    /** 4.3 Connection Information */

    /**
     *  4.3.1 AudioConnections Bundle property names and values
     */
    public static final class AudioConnections {
        /**
         * Identifier of the audio connection for media audio (output)
         * uint8 packaged as a short
         */
        public static final String MEDIA_AUDIO_OUT = "MEDIA_AUDIO_OUT";
        /**
         * Identifier of the audio connection for media audio (input)
         * uint8 packaged as a short
         */
        public static final String MEDIA_AUDIO_IN = "MEDIA_AUDIO_IN";
        /**
         * Identifier of the audio connection for Voice Control audio (input)
         * uint8 packaged as a short
         */
        public static final String VOICE_CONTROL = "VOICE_CONTROL";
        /**
         * Identifier of the audio connection for Phone audio (input & output)
         * uint8 packaged as a short
         */
        public static final String PHONE_AUDIO = "PHONE_AUDIO";
        /**
         * Comma separated list of supported RTP payload types in case an RTP connection is used.
         * String
         */
        public static final String PAYLOAD_TYPES = "PAYLOAD_TYPES";

        /**
         * AudioConnections MEDIA_AUDIO_OUT values
         */
        /** Not established */
        public static final byte MEDIA_OUT_NONE = 0x00;
        /** BT A2DP */
        public static final byte MEDIA_OUT_BT_AD2DP = 0x01;
        /** RTP */
        public static final byte MEDIA_OUT_RTP = 0x02;

        /**
         * AudioConnections MEDIA_AUDIO_IN values
         */
        /** Not established */
        public static final byte MEDIA_IN_NONE = 0x00;
        /** RTP */
        public static final byte MEDIA_IN_RTP = 0x02;

        /**
         * AudioConnections VOICE_CONTROL values
         */
        /** Not established */
        public static final byte VOICE_CONTROL_NONE = 0x00;
        /** BT HFP + BVRA (Voice Control is outside MirrorLink Server’s responsibility; application must use existing platform APIs) */
        public static final byte VOICE_CONTROL_BT_HFP = 0x01;
        /** RTP */
        public static final byte VOICE_CONTROL_RTP = 0x02;

        /**
         * AudioConnections PHONE_AUDIO values
         */
        /** Not established */
        public static final byte INCALL_AUDIO_NONE = 0x00;
        /** BT HFP */
        public static final byte INCALL_AUDIO_BT_HFP = 0x01;
        /** RTP */
        public static final byte INCALL_AUDIO_RTP = 0x02;
    }
    /**
     *  4.3.3 RemoteDisplayConnection Bundle property names and values
     */
    public static final class RemoteDisplayConnection {
        /**
         * Identifier of the remote display type.
         * String
         */
        public static final String TYPE = "Type";
        /**
         * RemoteDisplayConnection.RemoteDisplayType values
         */
        public static final byte REMOTEDISPLAY_NONE = 0x00;
        public static final byte REMOTEDISPLAY_VNC = 0x01;
        public static final byte REMOTEDISPLAY_HSML = 0x02;
        public static final byte REMOTEDISPLAY_WFD = 0x03;
    }

    /** 4.4 Display Related Features */

    /**
     *  4.4.1 ClientDisplayConfiguration Bundle property names and values
     */
    public static final class ClientDisplayConfiguration {
        /**
         * Horizontal resolution in pixel of the MirrorLink Client framebuffer,
         * available for rendering the MirrorLink Server’s screen.
         * uint16 packaged as an int
         */
        public static final String PIXEL_WIDTH = "PIXEL_WIDTH";
        /**
         * Vertical resolution in pixel of the MirrorLink Client framebuffer,
         * available for rendering the MirrorLink Server’s screen
         * uint16 packaged as an int
         */
        public static final String PIXEL_HEIGHT = "PIXEL_HEIGHT";
        /**
         * Physical width in mm of the MirrorLink Client display,
         * where the MirrorLink Server’s screen appears.
         * uint16 packaged as an int
         */
        public static final String MM_WIDTH = "MM_WIDTH";
        /**
         * Physical height in mm of the MirrorLink Client display,
         * where the MirrorLink Server’s screen appears.
         * uint16 packaged as an int
         */
        public static final String MM_HEIGHT = "MM_HEIGHT";
        /**
         * Physical distance in mm of the MirrorLink Client display
         * from the driver’s head position.
         * uint16 packaged as an int
         */
        public static final String DISTANCE = "DISTANCE";
    }
    /**
     * 4.4.3 IDisplayManager.getClientPixelFormat values
     */
    public static final class ClientPixelFormat {
        public static final byte ARGB8888 = 0x01;
        public static final byte RGB888 = 0x02;
        public static final byte ARGB565 = 0x03;
        public static final byte RGB555 = 0x04;
        public static final byte RGB444 = 0x05;
        public static final byte RGB343 = 0x06;
        public static final byte GRAY16 = 0x07;
        public static final byte GRAY8 = 0x08;
    }
    /**
     *  4.4.5 ServerScalingConfiguration Bundle property names and values
     */
    public static final class ServerScalingConfiguration {
        /**
         * Horizontal resolution in pixel of the MirrorLink Server’s framebuffer,
         * which gets replicated to the MirrorLink Client (after scaling).
         * uint16 packaged as an int
         */
        public static final String SCALED_WIDTH = "SCALED_WIDTH";
        /**
         * Vertical resolution in pixel of the MirrorLink Server’s framebuffer,
         * which gets replicated to the MirrorLink Client (after scaling).
         * uint16 packaged as an int
         */
        public static final String SCALED_HEIGHT = "SCALED_HEIGHT";
        /**
         * Algorithm used for scaling
         * uint8 packaged as a short
         */
        public static final String ALGORITHM = "ALGORITHM";
        /**
         * ServerScalingConfiguration ALGORITHM values
         */
        public static final byte SCALING_NONE = 0x00;
        public static final byte SCALING_LINEAR = 0x01;
        public static final byte SCALING_BILINEAR = 0x02;
    }
    /**
     * 4.4.7 Set Framebuffer Orientation Support
     */
    public static final class FramebufferOrientationSupport {
        public static final byte LANDSCAPE_ONLY = 0x01;
        public static final byte PORTRAIT_ONLY = 0x02;
        public static final byte LANDSCAPE_AND_PORTRAIT = 0x03;
    }

    /** 4.5 Event Related Features */
    /**
     * 4.5.1 EventConfiguration Bundle property names and values
     */
    public static final class EventConfiguration {
        /**
         * Supported knob events from the MirrorLink Session.
         * Bit mask as defined in the VNC specification.
         * uint32 packaged as a long
         */
        public static final String KNOB_KEY_SUPPORT = "KNOB_KEY_SUPPORT";
        /**
         * Supported device key events from the MirrorLink Session.
         * Bit mask as defined in the VNC specification.
         * uint32 packaged as a long
         */
        public static final String DEVICE_KEY_SUPPORT = "DEVICE_KEY_SUPPORT";
        /**
         * Supported multimedia key events from the MirrorLink Session.
         * Bit mask as defined in the VNC specification.
         * uint32 packaged as a long
         */
        public static final String MULTIMEDIA_KEY_SUPPORT = "MULTIMEDIA_KEY_SUPPORT";
        /**
         * Number of supported function keys from the MirrorLink Session.
         * uint8 packaged as a short
         */
        public static final String FUNC_KEY_SUPPORT = "FUNC_KEY_SUPPORT";
        /**
         * Support for ITU keys from the MirrorLink Session
         * boolean
         */
        public static final String ITU_KEY_SUPPORT = "ITU_KEY_SUPPORT";
        /**
         * Number of simultaneous touch events, supported from the MirrorLink Client
         * uint8 packaged as a short
         */
        public static final String POINTER_SUPPORT = "POINTER_SUPPORT";
        /**
         * KNOB_KEY_SUPPORT values
         */
        public static final long KNOB_KEY_SUPPORT_SHIFT_Y_0  = 0x00000002;
        public static final long KNOB_KEY_SUPPORT_SHIFT_XY_0 = 0x00000004;
        public static final long KNOB_KEY_SUPPORT_PUSH_Z_0   = 0x00000008;
        public static final long KNOB_KEY_SUPPORT_PULL_Z_0   = 0x00000010;
        public static final long KNOB_KEY_SUPPORT_ROTATE_X_0 = 0x00000020;
        public static final long KNOB_KEY_SUPPORT_ROTATE_Y_0 = 0x00000040;
        public static final long KNOB_KEY_SUPPORT_ROTATE_Z_0 = 0x00000080;
        public static final long KNOB_KEY_SUPPORT_SHIFT_X_1  = 0x00000100;
        public static final long KNOB_KEY_SUPPORT_SHIFT_Y_1  = 0x00000200;
        public static final long KNOB_KEY_SUPPORT_SHIFT_XY_1 = 0x00000400;
        public static final long KNOB_KEY_SUPPORT_PUSH_Z_1   = 0x00000800;
        public static final long KNOB_KEY_SUPPORT_PULL_Z_1   = 0x00001000;
        public static final long KNOB_KEY_SUPPORT_ROTATE_X_1 = 0x00002000;
        public static final long KNOB_KEY_SUPPORT_ROTATE_Y_1 = 0x00004000;
        public static final long KNOB_KEY_SUPPORT_ROTATE_Z_1 = 0x00008000;
        public static final long KNOB_KEY_SUPPORT_SHIFT_X_2  = 0x00010000;
        public static final long KNOB_KEY_SUPPORT_SHIFT_Y_2  = 0x00020000;
        public static final long KNOB_KEY_SUPPORT_SHIFT_XY_2 = 0x00040000;
        public static final long KNOB_KEY_SUPPORT_PUSH_Z_2   = 0x00080000;
        public static final long KNOB_KEY_SUPPORT_PULL_Z_2   = 0x00100000;
        public static final long KNOB_KEY_SUPPORT_ROTATE_X_2 = 0x00200000;
        public static final long KNOB_KEY_SUPPORT_ROTATE_Y_2 = 0x00400000;
        public static final long KNOB_KEY_SUPPORT_ROTATE_Z_2 = 0x00800000;
        public static final long KNOB_KEY_SUPPORT_SHIFT_X_3  = 0x01000000;
        public static final long KNOB_KEY_SUPPORT_SHIFT_Y_3  = 0x02000000;
        public static final long KNOB_KEY_SUPPORT_SHIFT_XY_3 = 0x04000000;
        public static final long KNOB_KEY_SUPPORT_PUSH_Z_3   = 0x08000000;
        public static final long KNOB_KEY_SUPPORT_PULL_Z_3   = 0x10000000;
        public static final long KNOB_KEY_SUPPORT_ROTATE_X_3 = 0x20000000;
        public static final long KNOB_KEY_SUPPORT_ROTATE_Y_3 = 0x40000000;
        public static final long KNOB_KEY_SUPPORT_ROTATE_Z_3 = 0x80000000;
        /**
         * DEVICE_KEY_SUPPORT values
         */
        public static final long DEVICE_KEY_SUPPORT_PHONE_CALL  = 0x00000001;
        public static final long DEVICE_KEY_SUPPORT_PHONE_END   = 0x00000002;
        public static final long DEVICE_KEY_SUPPORT_SOFT_LEFT   = 0x00000004;
        public static final long DEVICE_KEY_SUPPORT_SOFT_MIDDLE = 0x00000008;
        public static final long DEVICE_KEY_SUPPORT_SOFT_RIGHT  = 0x00000010;
        public static final long DEVICE_KEY_SUPPORT_APPLICATION = 0x00000020;
        public static final long DEVICE_KEY_SUPPORT_OK          = 0x00000040;
        public static final long DEVICE_KEY_SUPPORT_DELETE      = 0x00000080;
        public static final long DEVICE_KEY_SUPPORT_ZOOM_IN     = 0x00000100;
        public static final long DEVICE_KEY_SUPPORT_ZOOM_OUT    = 0x00000200;
        public static final long DEVICE_KEY_SUPPORT_CLEAR       = 0x00000400;
        public static final long DEVICE_KEY_SUPPORT_FORWARD     = 0x00000800;
        public static final long DEVICE_KEY_SUPPORT_BACKWARD    = 0x00001000;
        public static final long DEVICE_KEY_SUPPORT_HOME        = 0x00002000;
        public static final long DEVICE_KEY_SUPPORT_SEARCH      = 0x00004000;
        public static final long DEVICE_KEY_SUPPORT_MENU        = 0x00008000;
        public static final long DEVICE_KEY_SUPPORT_ALL         = 0x00007fff;
        /**
         * MULTIMEDIA_KEY_SUPPORT values
         */
        public static final long MULTIMEDIA_KEY_SUPPORT_PLAY     = 0x00000001;
        public static final long MULTIMEDIA_KEY_SUPPORT_PAUSE    = 0x00000002;
        public static final long MULTIMEDIA_KEY_SUPPORT_STOP     = 0x00000004;
        public static final long MULTIMEDIA_KEY_SUPPORT_FORWARD  = 0x00000008;
        public static final long MULTIMEDIA_KEY_SUPPORT_REWIND   = 0x00000010;
        public static final long MULTIMEDIA_KEY_SUPPORT_NEXT     = 0x00000020;
        public static final long MULTIMEDIA_KEY_SUPPORT_PREVIOUS = 0x00000040;
        public static final long MULTIMEDIA_KEY_SUPPORT_MUTE     = 0x00000080;
        public static final long MULTIMEDIA_KEY_SUPPORT_UNMUTE   = 0x00000100;
        public static final long MULTIMEDIA_KEY_SUPPORT_PHOTO    = 0x00000200;
        /**
         * POINTER_SUPPORT values
         */
        public static final byte POINTER_SUPPORT_NONE                     = 0x00;
        public static final byte POINTER_SUPPORT_POINTER                  = 0x01;
        public static final byte POINTER_SUPPORT_TOUCH                    = 0x02;
    }
    /**
     * 4.5.4 EventMapping Bundle property names and values
     */
    public static final class EventMapping {
        /**
         * Key event value of the remote event
         * uint32 packaged as a long
         */
        public static final String REMOTE_EVENT = "REMOTE_EVENT";
        /**
         * Key event value of the local event, as it will be emulated on the
         * MirrorLink Server device in response to the received remote event.
         * uint32 packaged as a long
         */
        public static final String LOCAL_EVENT = "LOCAL_EVENT";
    }

    /** 4.6 Context Information Related Features */
    /**
     *  4.6.3 BlockingInformation values
     */
    public static final class BlockingInformation {
        /**
         * IContextListener.onAudioBlocked reason values
         */
        public static final int AUDIOBLOCKED_APPLICATION_CATEGORY_NOT_ALLOWED = 0x0001;
        public static final int AUDIOBLOCKED_APPLICATION_NOT_TRUSTED = 0x0002;
        public static final int AUDIOBLOCKED_APPLICATION_UNIQUE_ID_NOT_ALLOWED = 0x0004;
        public static final int AUDIOBLOCKED_GLOBALLY_MUTED = 0x0008;
        public static final int AUDIOBLOCKED_STREAM_MUTED = 0x0010;
        /**
         * IContextListener.onFramebufferBlocked reason values
         */
        public static final int DISPLAYBLOCKED_CONTENT_CATEGORY_NOT_ALLOWED = 0x0001;
        public static final int DISPLAYBLOCKED_APPLICATION_CATEGORY_NOT_ALLOWED = 0x0002;
        public static final int DISPLAYBLOCKED_CONTENT_NOT_TRUSTED = 0x0004;
        public static final int DISPLAYBLOCKED_APPLICATION_NOT_TRUSTED = 0x0008;
        public static final int DISPLAYBLOCKED_CONTENT_RULES_NOT_FOLLOWED = 0x0010;
        public static final int DISPLAYBLOCKED_APPLICATION_UNIQUE_ID_NOT_ALLOWED = 0x0020;
        public static final int DISPLAYBLOCKED_UI_NOT_IN_FOCUS = 0x0100;
        public static final int DISPLAYBLOCKED_UI_NOT_VISIBLE = 0x0200;
        /**
         * IContextListener.onFramebufferOrientationBlocked values
         */
        public static final int ORIENTATIONBLOCKED_LANDSCAPE = 0x01;
        public static final int ORIENTATIONBLOCKED_PORTRAIT = 0x02;
    }
    /**
     *  4.6.2, 4.6.5 Framebuffer and Audio Context Information values
     */
    public static final class ContextInformation {
        /**
         * Application Categories
         */
        public static final long APPLICATION_CATEGORY_MASK = 0xffff0000;
        public static final long APPLICATION_CATEGORY_UNKNOWN = 0x00000000;
        public static final long APPLICATION_CATEGORY_UI = 0x00010000;
        public static final long APPLICATION_CATEGORY_UI_HOME_SCREEN = 0x00010001;
        public static final long APPLICATION_CATEGORY_UI_MENU = 0x00010002;
        public static final long APPLICATION_CATEGORY_UI_NOTIFICATION = 0x00010003;
        public static final long APPLICATION_CATEGORY_UI_APPLICATION_LISTING = 0x00010004;
        public static final long APPLICATION_CATEGORY_UI_SETTINGS = 0x00010005;
        public static final long APPLICATION_CATEGORY_PHONE = 0x00020000;
        public static final long APPLICATION_CATEGORY_PHONE_CONTACT_LIST = 0x00020001;
        public static final long APPLICATION_CATEGORY_PHONE_CALL_LOG = 0x00020002;
        public static final long APPLICATION_CATEGORY_MEDIA = 0x00030000;
        public static final long APPLICATION_CATEGORY_MEDIA_MUSIC = 0x00030001;
        public static final long APPLICATION_CATEGORY_MEDIA_VIDEO = 0x00030002;
        public static final long APPLICATION_CATEGORY_MEDIA_GAMING = 0x00030003;
        public static final long APPLICATION_CATEGORY_MEDIA_IMAGE = 0x00030004;
        public static final long APPLICATION_CATEGORY_MESSAGING = 0x00040000;
        public static final long APPLICATION_CATEGORY_MESSAGING_SMS = 0x00040001;
        public static final long APPLICATION_CATEGORY_MESSAGING_MMS = 0x00040002;
        public static final long APPLICATION_CATEGORY_MESSAGING_EMAIL = 0x00040003;
        public static final long APPLICATION_CATEGORY_NAVIGATION = 0x00050000;
        public static final long APPLICATION_CATEGORY_BROWSER = 0x00060000;
        public static final long APPLICATION_CATEGORY_BROWSER_APPLICATION_STORE = 0x00060001;
        public static final long APPLICATION_CATEGORY_PRODUCTIVITY = 0x00070000;
        public static final long APPLICATION_CATEGORY_PRODUCTIVITY_DOCUMENT_VIEWER = 0x00070001;
        public static final long APPLICATION_CATEGORY_PRODUCTIVITY_DOCUMENT_EDITOR = 0x00070002;
        public static final long APPLICATION_CATEGORY_INFORMATION = 0x00080000;
        public static final long APPLICATION_CATEGORY_INFORMATION_NEWS = 0x00080001;
        public static final long APPLICATION_CATEGORY_INFORMATION_WEATHER = 0x00080002;
        public static final long APPLICATION_CATEGORY_INFORMATION_STOCKS = 0x00080003;
        public static final long APPLICATION_CATEGORY_INFORMATION_TRAVEL = 0x00080004;
        public static final long APPLICATION_CATEGORY_INFORMATION_SPORTS = 0x00080005;
        public static final long APPLICATION_CATEGORY_INFORMATION_CLOCK = 0x00080006;
        public static final long APPLICATION_CATEGORY_SOCIAL_NETWORKING = 0x00090000;
        public static final long APPLICATION_CATEGORY_PIM = 0x000a0000;
        public static final long APPLICATION_CATEGORY_PIM_CALENDAR = 0x000a0001;
        public static final long APPLICATION_CATEGORY_PIM_NOTES = 0x000a0002;
        public static final long APPLICATION_CATEGORY_NO_UI = 0xf0000000;
        public static final long APPLICATION_CATEGORY_NO_UI_AUDIO_SERVER = 0xf0000001;
        public static final long APPLICATION_CATEGORY_NO_UI_AUDIO_CLIENT = 0xf0000002;
        public static final long APPLICATION_CATEGORY_NO_UI_VOICE_COMMAND_ENGINE = 0xf0000010;
        public static final long APPLICATION_CATEGORY_NO_UI_CONVERSATIONAL_AUDIO = 0xf0000020;
        public static final long APPLICATION_CATEGORY_SWITCH_TO_CLIENT_NATIVE_UI = 0xf000ffff;
        public static final long APPLICATION_CATEGORY_SYSTEM = 0xffff0000;
        public static final long APPLICATION_CATEGORY_SYSTEM_INPUT_UNLOCK_PIN = 0xffff0001;
        public static final long APPLICATION_CATEGORY_SYSTEM_INPUT_BLUETOOTH_PIN = 0xffff0002;
        public static final long APPLICATION_CATEGORY_SYSTEM_INPUT_OTHER_PASSWORD = 0xffff000f;
        public static final long APPLICATION_CATEGORY_SYSTEM_VOICE_COMMAND_CONFIRMATION = 0xffff0010;
        /**
         * Content Categories
         */
        public static final long VISUAL_CONTENT_CATEGORY_TEXT = 0x00000001;
        public static final long VISUAL_CONTENT_CATEGORY_VIDEO = 0x00000002;
        public static final long VISUAL_CONTENT_CATEGORY_IMAGE = 0x00000004;
        public static final long VISUAL_CONTENT_CATEGORY_GRAPHICS_VECTOR = 0x00000080;
        public static final long VISUAL_CONTENT_CATEGORY_GRAPHICS_3D = 0x00000010;
        public static final long VISUAL_CONTENT_CATEGORY_UI = 0x00000020;
        public static final long VISUAL_CONTENT_CATEGORY_CAR_MODE = 0x00010000;
        public static final long VISUAL_CONTENT_CATEGORY_MISC = 0x80000000;
    }

    /** 4.8 Data Services  */

    /**
     * Constants used when interacting with the Location data service
     */
    public static final class LocationService {
        /**
         *  Location Service name
         */
        public static final String SERVICE_NAME = "com.mirrorlink.LOCATION";
        /**
         *  Location Object uid
         */
        public static final long LOCATION_OBJECT_UID = 0x572a6461;
        /**
         *  Location Object Bundle property names
         */
        public static final String COORD_FIELD_UID = "0xbad026d0";
        public static final String LATITUDE_FIELD_UID = "0x64f8f3f1";
        public static final String LONGITUDE_FIELD_UID = "0x7581892a";
        public static final String ACCURACY_FIELD_UID = "0x5ec654de";
        public static final String ALTITUDE_FIELD_UID = "0x970e9047";
        public static final String ALTITUDEACCURACY_FIELD_UID = "0xc28b9440";
        public static final String HEADING_FIELD_UID = "0x813c675d";
        public static final String SPEED_FIELD_UID = "0x23234962";
        public static final String TIMESTAMP_FIELD_UID = "0x59413fd1";
    }
    /**
     * Constants used when interacting with the GPS data service
     */
    public static final class GPSService {
        /**
         *  GPS Service name
         */
        public static final String SERVICE_NAME = "com.mirrorlink.GPS";
        /**
         *  NMEA Object uid
         */
        public static final long NMEA_OBJECT_UID = 0x0aac4540;
        /**
         *  NMEA Object Bundle property names
         */
        public static final String NMEA_DATA_FIELD_UID      = "0x144a776f";
        public static final String NMEA_TIMESTAMP_FIELD_UID = "0x59413fd1";
        /**
         *  NMEADescription Object uid
         */
        public static final long NMEADESCRIPTION_OBJECT_UID = 0x9d08b19d;
        /**
         *  NMEADescription Object Bundle property names
         */
        public static final String NMEADESCRIPTION_SUPPORTED_FIELD_UID = "0x6e72b167";
        /**
         *  GPS supported sentences flags.
         */
        public static final int SUPPORT_GGA              = 0x01;
        public static final int SUPPORT_GLL              = 0x02;
        public static final int SUPPORT_GSA              = 0x04;
        public static final int SUPPORT_GSV              = 0x08;
        public static final int SUPPORT_RMC              = 0x10;
        public static final int SUPPORT_VTG              = 0x20;
        public static final int SUPPORT_GST              = 0x40;
    }
    /** 4.9 Notifications */
    /**
     * 4.9.4 NotificationConfiguration Bundle property names
     */
    public static final class NotificationConfiguration {
        /**
         * Flag, whether the MirrorLink client supports its own notification UI
         * boolean
         */
        public static final String NOTIFICATION_SUPPORTED = "NOTIFICATION_SUPPORTED";
        /**
         * Maximum number of actions
         * uint8 packaged as a short
         */
        public static final String MAX_ACTIONS = "MAX_ACTIONS";
        /**
         * Maximum number of characters of the Action Name
         * uint8 packaged as a short
         */
        public static final String MAX_ACTION_NAME_LENGTH = "MAX_ACTION_NAME_LENGTH";
        /**
         * Maximum number of characters of the notification title
         * uint16 packaged as an int
         */
        public static final String MAX_TITLE_LENGTH = "MAX_TITLE_LENGTH";
        /**
         * Maximum number of characters of the notification body
         * uint16 packaged as an int
         */
        public static final String MAX_BODY_LENGTH = "MAX_BODY_LENGTH";
    }
}
