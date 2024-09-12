/********************************** (C) COPYRIGHT *******************************
 * File Name          : hidkbdservice.c
 * Author             : WCH
 * Version            : V1.0
 * Date               : 2018/12/10
 * Description        : ���̷���
 *********************************************************************************
 * Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
 * Attention: This software (modified or not) and binary are used for 
 * microcontroller manufactured by Nanjing Qinheng Microelectronics.
 *******************************************************************************/

/*********************************************************************
 * INCLUDES
 */
#include "CONFIG.h"
#include "hidkbdservice.h"
#include "hiddev.h"
#include "battservice.h"
#include "hoja_includes.h"

/*********************************************************************
 * MACROS
 */

/*********************************************************************
 * CONSTANTS
 */

/*********************************************************************
 * TYPEDEFS
 */

/*********************************************************************
 * GLOBAL VARIABLES
 */
// HID service
const uint8_t hidServUUID[ATT_BT_UUID_SIZE] = {
    LO_UINT16(HID_SERV_UUID), HI_UINT16(HID_SERV_UUID)};

// HID Boot Keyboard Input Report characteristic
const uint8_t hidBootKeyInputUUID[ATT_BT_UUID_SIZE] = {
    LO_UINT16(BOOT_KEY_INPUT_UUID), HI_UINT16(BOOT_KEY_INPUT_UUID)};

// HID Boot Keyboard Output Report characteristic
const uint8_t hidBootKeyOutputUUID[ATT_BT_UUID_SIZE] = {
    LO_UINT16(BOOT_KEY_OUTPUT_UUID), HI_UINT16(BOOT_KEY_OUTPUT_UUID)};

// HID Information characteristic
const uint8_t hidInfoUUID[ATT_BT_UUID_SIZE] = {
    LO_UINT16(HID_INFORMATION_UUID), HI_UINT16(HID_INFORMATION_UUID)};

// HID Report Map characteristic
const uint8_t hidReportMapUUID[ATT_BT_UUID_SIZE] = {
    LO_UINT16(REPORT_MAP_UUID), HI_UINT16(REPORT_MAP_UUID)};

// HID Control Point characteristic
const uint8_t hidControlPointUUID[ATT_BT_UUID_SIZE] = {
    LO_UINT16(HID_CTRL_PT_UUID), HI_UINT16(HID_CTRL_PT_UUID)};

// HID Report characteristic
const uint8_t hidReportUUID[ATT_BT_UUID_SIZE] = {
    LO_UINT16(REPORT_UUID), HI_UINT16(REPORT_UUID)};

// HID Protocol Mode characteristic
const uint8_t hidProtocolModeUUID[ATT_BT_UUID_SIZE] = {
    LO_UINT16(PROTOCOL_MODE_UUID), HI_UINT16(PROTOCOL_MODE_UUID)};

/*********************************************************************
 * EXTERNAL VARIABLES
 */

/*********************************************************************
 * EXTERNAL FUNCTIONS
 */

/*********************************************************************
 * LOCAL VARIABLES
 */

// HID Information characteristic value
static const uint8_t hidInfo[HID_INFORMATION_LEN] = {
    LO_UINT16(0x0111), HI_UINT16(0x0111), // bcdHID (USB HID version)
    0x00,                                 // bCountryCode
    HID_FEATURE_FLAGS                     // Flags
};

// HID Report Map characteristic value
//static const uint8_t hidReportMap[] = {
//    0x05, 0x01, // Usage Pg (Generic Desktop)
//    0x09, 0x06, // Usage (Keyboard)
//    0xA1, 0x01, // Collection: (Application)
//                //
//    0x05, 0x07, // Usage Pg (Key Codes)
//    0x19, 0xE0, // Usage Min (224)
//    0x29, 0xE7, // Usage Max (231)
//    0x15, 0x00, // Log Min (0)
//    0x25, 0x01, // Log Max (1)
//                //
//                // Modifier byte
//    0x75, 0x01, // Report Size (1)
//    0x95, 0x08, // Report Count (8)
//    0x81, 0x02, // Input: (Data, Variable, Absolute)
//                //
//                // Reserved byte
//    0x95, 0x01, // Report Count (1)
//    0x75, 0x08, // Report Size (8)
//    0x81, 0x01, // Input: (Constant)
//                //
//                // LED report
//    0x95, 0x05, // Report Count (5)
//    0x75, 0x01, // Report Size (1)
//    0x05, 0x08, // Usage Pg (LEDs)
//    0x19, 0x01, // Usage Min (1)
//    0x29, 0x05, // Usage Max (5)
//    0x91, 0x02, // Output: (Data, Variable, Absolute)
//                //
//                // LED report padding
//    0x95, 0x01, // Report Count (1)
//    0x75, 0x03, // Report Size (3)
//    0x91, 0x01, // Output: (Constant)
//                //
//                // Key arrays (6 bytes)
//    0x95, 0x06, // Report Count (6)
//    0x75, 0x08, // Report Size (8)
//    0x15, 0x00, // Log Min (0)
//    0x25, 0x65, // Log Max (101)
//    0x05, 0x07, // Usage Pg (Key Codes)
//    0x19, 0x00, // Usage Min (0)
//    0x29, 0x65, // Usage Max (101)
//    0x81, 0x00, // Input: (Data, Array)
//                //
//    0xC0        // End Collection
//};
static const uint8_t hidReportMap[] = {
		0x05, 0x01,        // Usage Page (Generic Desktop Ctrls)
		0x09, 0x05,        // Usage (Game Pad)
		0xA1, 0x01,        // Collection (Application)
		0x85, 0x01,        //   Report ID (1)
		0x09, 0x01,        //   Usage (Pointer)
		0xA1, 0x00,        //   Collection (Physical)
		0x09, 0x30,        //     Usage (X)
		0x09, 0x31,        //     Usage (Y)
		0x15, 0x00,        //     Logical Minimum (0)
		0x27, 0xFF, 0xFF, 0x00, 0x00,  //     Logical Maximum (65534)
		0x95, 0x02,        //     Report Count (2)
		0x75, 0x10,        //     Report Size (16)
		0x81, 0x02,        //     Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0xC0,              //   End Collection
		0x09, 0x01,        //   Usage (Pointer)
		0xA1, 0x00,        //   Collection (Physical)
		0x09, 0x32,        //     Usage (Z)
		0x09, 0x35,        //     Usage (Rz)
		0x15, 0x00,        //     Logical Minimum (0)
		0x27, 0xFF, 0xFF, 0x00, 0x00,  //     Logical Maximum (65534)
		0x95, 0x02,        //     Report Count (2)
		0x75, 0x10,        //     Report Size (16)
		0x81, 0x02,        //     Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0xC0,              //   End Collection
		0x05, 0x02,        //   Usage Page (Sim Ctrls)
		0x09, 0xC5,        //   Usage (Brake)
		0x15, 0x00,        //   Logical Minimum (0)
		0x26, 0xFF, 0x03,  //   Logical Maximum (1023)
		0x95, 0x01,        //   Report Count (1)
		0x75, 0x0A,        //   Report Size (10)
		0x81, 0x02,        //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0x15, 0x00,        //   Logical Minimum (0)
		0x25, 0x00,        //   Logical Maximum (0)
		0x75, 0x06,        //   Report Size (6)
		0x95, 0x01,        //   Report Count (1)
		0x81, 0x03,        //   Input (Const,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0x05, 0x02,        //   Usage Page (Sim Ctrls)
		0x09, 0xC4,        //   Usage (Accelerator)
		0x15, 0x00,        //   Logical Minimum (0)
		0x26, 0xFF, 0x03,  //   Logical Maximum (1023)
		0x95, 0x01,        //   Report Count (1)
		0x75, 0x0A,        //   Report Size (10)
		0x81, 0x02,        //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0x15, 0x00,        //   Logical Minimum (0)
		0x25, 0x00,        //   Logical Maximum (0)
		0x75, 0x06,        //   Report Size (6)
		0x95, 0x01,        //   Report Count (1)
		0x81, 0x03,        //   Input (Const,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0x05, 0x01,        //   Usage Page (Generic Desktop Ctrls)
		0x09, 0x39,        //   Usage (Hat switch)
		0x15, 0x01,        //   Logical Minimum (1)
		0x25, 0x08,        //   Logical Maximum (8)
		0x35, 0x00,        //   Physical Minimum (0)
		0x46, 0x3B, 0x01,  //   Physical Maximum (315)
		0x66, 0x14, 0x00,  //   Unit (System: English Rotation, Length: Centimeter)
		0x75, 0x04,        //   Report Size (4)
		0x95, 0x01,        //   Report Count (1)
		0x81, 0x42,        //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,Null State)
		0x75, 0x04,        //   Report Size (4)
		0x95, 0x01,        //   Report Count (1)
		0x15, 0x00,        //   Logical Minimum (0)
		0x25, 0x00,        //   Logical Maximum (0)
		0x35, 0x00,        //   Physical Minimum (0)
		0x45, 0x00,        //   Physical Maximum (0)
		0x65, 0x00,        //   Unit (None)
		0x81, 0x03,        //   Input (Const,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0x05, 0x09,        //   Usage Page (Button)
		0x19, 0x01,        //   Usage Minimum (0x01)
		0x29, 0x0F,        //   Usage Maximum (0x0F)
		0x15, 0x00,        //   Logical Minimum (0)
		0x25, 0x01,        //   Logical Maximum (1)
		0x75, 0x01,        //   Report Size (1)
		0x95, 0x0F,        //   Report Count (15)
		0x81, 0x02,        //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0x15, 0x00,        //   Logical Minimum (0)
		0x25, 0x00,        //   Logical Maximum (0)
		0x75, 0x01,        //   Report Size (1)
		0x95, 0x01,        //   Report Count (1)
		0x81, 0x03,        //   Input (Const,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0x05, 0x0C,        //   Usage Page (Consumer)
		0x0A, 0x24, 0x02,  //   Usage (AC Back)
		0x15, 0x00,        //   Logical Minimum (0)
		0x25, 0x01,        //   Logical Maximum (1)
		0x95, 0x01,        //   Report Count (1)
		0x75, 0x01,        //   Report Size (1)
		0x81, 0x02,        //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0x15, 0x00,        //   Logical Minimum (0)
		0x25, 0x00,        //   Logical Maximum (0)
		0x75, 0x07,        //   Report Size (7)
		0x95, 0x01,        //   Report Count (1)
		0x81, 0x03,        //   Input (Const,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0x05, 0x0C,        //   Usage Page (Consumer)
		0x09, 0x01,        //   Usage (Consumer Control)
		0x85, 0x02,        //   Report ID (2)
		0xA1, 0x01,        //   Collection (Application)
		0x05, 0x0C,        //     Usage Page (Consumer)
		0x0A, 0x23, 0x02,  //     Usage (AC Home)
		0x15, 0x00,        //     Logical Minimum (0)
		0x25, 0x01,        //     Logical Maximum (1)
		0x95, 0x01,        //     Report Count (1)
		0x75, 0x01,        //     Report Size (1)
		0x81, 0x02,        //     Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0x15, 0x00,        //     Logical Minimum (0)
		0x25, 0x00,        //     Logical Maximum (0)
		0x75, 0x07,        //     Report Size (7)
		0x95, 0x01,        //     Report Count (1)
		0x81, 0x03,        //     Input (Const,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0xC0,              //   End Collection
		0x05, 0x0F,        //   Usage Page (PID Page)
		0x09, 0x21,        //   Usage (0x21)
		0x85, 0x03,        //   Report ID (3)
		0xA1, 0x02,        //   Collection (Logical)
		0x09, 0x97,        //     Usage (0x97)
		0x15, 0x00,        //     Logical Minimum (0)
		0x25, 0x01,        //     Logical Maximum (1)
		0x75, 0x04,        //     Report Size (4)
		0x95, 0x01,        //     Report Count (1)
		0x91, 0x02,        //     Output (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position,Non-volatile)
		0x15, 0x00,        //     Logical Minimum (0)
		0x25, 0x00,        //     Logical Maximum (0)
		0x75, 0x04,        //     Report Size (4)
		0x95, 0x01,        //     Report Count (1)
		0x91, 0x03,        //     Output (Const,Var,Abs,No Wrap,Linear,Preferred State,No Null Position,Non-volatile)
		0x09, 0x70,        //     Usage (0x70)
		0x15, 0x00,        //     Logical Minimum (0)
		0x25, 0x64,        //     Logical Maximum (100)
		0x75, 0x08,        //     Report Size (8)
		0x95, 0x04,        //     Report Count (4)
		0x91, 0x02,        //     Output (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position,Non-volatile)
		0x09, 0x50,        //     Usage (0x50)
		0x66, 0x01, 0x10,  //     Unit (System: SI Linear, Time: Seconds)
		0x55, 0x0E,        //     Unit Exponent (-2)
		0x15, 0x00,        //     Logical Minimum (0)
		0x26, 0xFF, 0x00,  //     Logical Maximum (255)
		0x75, 0x08,        //     Report Size (8)
		0x95, 0x01,        //     Report Count (1)
		0x91, 0x02,        //     Output (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position,Non-volatile)
		0x09, 0xA7,        //     Usage (0xA7)
		0x15, 0x00,        //     Logical Minimum (0)
		0x26, 0xFF, 0x00,  //     Logical Maximum (255)
		0x75, 0x08,        //     Report Size (8)
		0x95, 0x01,        //     Report Count (1)
		0x91, 0x02,        //     Output (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position,Non-volatile)
		0x65, 0x00,        //     Unit (None)
		0x55, 0x00,        //     Unit Exponent (0)
		0x09, 0x7C,        //     Usage (0x7C)
		0x15, 0x00,        //     Logical Minimum (0)
		0x26, 0xFF, 0x00,  //     Logical Maximum (255)
		0x75, 0x08,        //     Report Size (8)
		0x95, 0x01,        //     Report Count (1)
		0x91, 0x02,        //     Output (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position,Non-volatile)
		0xC0,              //   End Collection
		0x05, 0x06,        //   Usage Page (Generic Dev Ctrls)
		0x09, 0x20,        //   Usage (Battery Strength)
		0x85, 0x04,        //   Report ID (4)
		0x15, 0x00,        //   Logical Minimum (0)
		0x26, 0xFF, 0x00,  //   Logical Maximum (255)
		0x75, 0x08,        //   Report Size (8)
		0x95, 0x01,        //   Report Count (1)
		0x81, 0x02,        //   Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
		0xC0,              // End Collection

		// 334 bytes
		};
//static const uint8_t hidReportMap[] = {
//		0x05, 0x01,        // Usage Page (Generic Desktop)
//		0x09, 0x05,        // Usage (Game Pad)
//		0xA1, 0x01,        // Collection (Application)
//
//		    0x85, 0x01,        // Report ID (1)
//		    0x09, 0x01,        // Usage (Pointer)
//		    0xA1, 0x00,        // Collection (Physical)
//
//		    // Left Stick X (16-bit)
//		    0x09, 0x30,        // Usage (X)
//		    0x16, 0x00, 0x80,  // Logical Minimum (-32768)
//		    0x26, 0xFF, 0x7F,  // Logical Maximum (32767)
//		    0x75, 0x10,        // Report Size (16)
//		    0x95, 0x01,        // Report Count (1)
//		    0x81, 0x02,        // Input (Data, Variable, Absolute)
//
//		    // Left Stick Y (16-bit)
//		    0x09, 0x31,        // Usage (Y)
//		    0x16, 0x00, 0x80,  // Logical Minimum (-32768)
//		    0x26, 0xFF, 0x7F,  // Logical Maximum (32767)
//		    0x75, 0x10,        // Report Size (16)
//		    0x95, 0x01,        // Report Count (1)
//		    0x81, 0x02,        // Input (Data, Variable, Absolute)
//
//		    // Right Stick X (16-bit)
//		    0x09, 0x32,        // Usage (Z)
//		    0x16, 0x00, 0x80,  // Logical Minimum (-32768)
//		    0x26, 0xFF, 0x7F,  // Logical Maximum (32767)
//		    0x75, 0x10,        // Report Size (16)
//		    0x95, 0x01,        // Report Count (1)
//		    0x81, 0x02,        // Input (Data, Variable, Absolute)
//
//		    // Right Stick Y (16-bit)
//		    0x09, 0x35,        // Usage (Rz)
//		    0x16, 0x00, 0x80,  // Logical Minimum (-32768)
//		    0x26, 0xFF, 0x7F,  // Logical Maximum (32767)
//		    0x75, 0x10,        // Report Size (16)
//		    0x95, 0x01,        // Report Count (1)
//		    0x81, 0x02,        // Input (Data, Variable, Absolute)
//
//		    // D-Pad (Hat Switch)
//		    0x09, 0x39,        // Usage (Hat switch)
//		    0x15, 0x00,        // Logical Minimum (0)
//		    0x25, 0x07,        // Logical Maximum (7)
//		    0x35, 0x00,        // Physical Minimum (0)
//		    0x46, 0x3B, 0x01,  // Physical Maximum (315)
//		    0x65, 0x14,        // Unit (Eng Rot:Angular Pos)
//		    0x75, 0x04,        // Report Size (4)
//		    0x95, 0x01,        // Report Count (1)
//		    0x81, 0x02,        // Input (Data, Variable, Absolute)
//
//		    // Buttons (10 buttons in a 16-bit field)
//		    0x05, 0x09,        // Usage Page (Button)
//		    0x19, 0x01,        // Usage Minimum (Button 1)
//		    0x29, 0x0A,        // Usage Maximum (Button 10)
//		    0x15, 0x00,        // Logical Minimum (0)
//		    0x25, 0x01,        // Logical Maximum (1)
//		    0x75, 0x01,        // Report Size (1)
//		    0x95, 0x0A,        // Report Count (10)
//		    0x81, 0x02,        // Input (Data, Variable, Absolute)
//
//		    0xC0,              // End Collection (Physical)
//
//		0xC0,              // End Collection (Application)
//		};

// HID report map length
uint16_t hidReportMapLen = sizeof(hidReportMap);

// HID report mapping table
static hidRptMap_t hidRptMap[HID_NUM_REPORTS];

/*********************************************************************
 * Profile Attributes - variables
 */

// HID Service attribute
static const gattAttrType_t hidService = {ATT_BT_UUID_SIZE, hidServUUID};

// Include attribute (Battery service)
static uint16_t include = GATT_INVALID_HANDLE;

// HID Information characteristic
static uint8_t hidInfoProps = GATT_PROP_READ;

// HID Report Map characteristic
static uint8_t hidReportMapProps = GATT_PROP_READ;

// HID External Report Reference Descriptor
static uint8_t hidExtReportRefDesc[ATT_BT_UUID_SIZE] =
    {LO_UINT16(BATT_LEVEL_UUID), HI_UINT16(BATT_LEVEL_UUID)};

// HID Control Point characteristic
static uint8_t hidControlPointProps = GATT_PROP_WRITE_NO_RSP;
static uint8_t hidControlPoint;

// HID Protocol Mode characteristic
static uint8_t hidProtocolModeProps = GATT_PROP_READ | GATT_PROP_WRITE_NO_RSP;
uint8_t        hidProtocolMode = HID_PROTOCOL_MODE_REPORT;

// HID Report characteristic, key input
static uint8_t       hidReportKeyInProps = GATT_PROP_READ | GATT_PROP_NOTIFY;
static uint8_t       hidReportKeyIn;
static gattCharCfg_t hidReportKeyInClientCharCfg[GATT_MAX_NUM_CONN];

// HID Report Reference characteristic descriptor, key input
static uint8_t hidReportRefKeyIn[HID_REPORT_REF_LEN] =
    {HID_RPT_ID_MOUSE_IN, HID_REPORT_TYPE_INPUT};

// HID Report characteristic, LED output
static uint8_t hidReportLedOutProps = GATT_PROP_READ | GATT_PROP_WRITE | GATT_PROP_WRITE_NO_RSP;
static uint8_t hidReportLedOut;

// HID Report Reference characteristic descriptor, LED output
static uint8_t hidReportRefLedOut[HID_REPORT_REF_LEN] =
    {HID_RPT_ID_LED_OUT, HID_REPORT_TYPE_OUTPUT};

// HID Boot Keyboard Input Report
static uint8_t       hidReportBootKeyInProps = GATT_PROP_READ | GATT_PROP_NOTIFY;
static uint8_t       hidReportBootKeyIn;
static gattCharCfg_t hidReportBootKeyInClientCharCfg[GATT_MAX_NUM_CONN];

// HID Boot Keyboard Output Report
static uint8_t hidReportBootKeyOutProps = GATT_PROP_READ | GATT_PROP_WRITE | GATT_PROP_WRITE_NO_RSP;
static uint8_t hidReportBootKeyOut;

// Feature Report
static uint8_t hidReportFeatureProps = GATT_PROP_READ | GATT_PROP_WRITE;
static uint8_t hidReportFeature;

// HID Report Reference characteristic descriptor, Feature
static uint8_t hidReportRefFeature[HID_REPORT_REF_LEN] =
    {HID_RPT_ID_FEATURE, HID_REPORT_TYPE_FEATURE};

/*********************************************************************
 * Profile Attributes - Table
 */

static gattAttribute_t hidAttrTbl[] = {
    // HID Service
    {
        {ATT_BT_UUID_SIZE, primaryServiceUUID}, /* type */
        GATT_PERMIT_READ,                       /* permissions */
        0,                                      /* handle */
        (uint8_t *)&hidService                  /* pValue */
    },

    // Included service (battery)
    {
        {ATT_BT_UUID_SIZE, includeUUID},
        GATT_PERMIT_READ,
        0,
        (uint8_t *)&include},

    // HID Information characteristic declaration
    {
        {ATT_BT_UUID_SIZE, characterUUID},
        GATT_PERMIT_READ,
        0,
        &hidInfoProps},

    // HID Information characteristic
    {
        {ATT_BT_UUID_SIZE, hidInfoUUID},
        GATT_PERMIT_ENCRYPT_READ,
        0,
        (uint8_t *)hidInfo},

    // HID Control Point characteristic declaration
    {
        {ATT_BT_UUID_SIZE, characterUUID},
        GATT_PERMIT_READ,
        0,
        &hidControlPointProps},

    // HID Control Point characteristic
    {
        {ATT_BT_UUID_SIZE, hidControlPointUUID},
        GATT_PERMIT_ENCRYPT_WRITE,
        0,
        &hidControlPoint},

    // HID Protocol Mode characteristic declaration
    {
        {ATT_BT_UUID_SIZE, characterUUID},
        GATT_PERMIT_READ,
        0,
        &hidProtocolModeProps},

    // HID Protocol Mode characteristic
    {
        {ATT_BT_UUID_SIZE, hidProtocolModeUUID},
        GATT_PERMIT_ENCRYPT_READ | GATT_PERMIT_ENCRYPT_WRITE,
        0,
        &hidProtocolMode},

    // HID Report Map characteristic declaration
    {
        {ATT_BT_UUID_SIZE, characterUUID},
        GATT_PERMIT_READ,
        0,
        &hidReportMapProps},

    // HID Report Map characteristic
    {
        {ATT_BT_UUID_SIZE, hidReportMapUUID},
        GATT_PERMIT_ENCRYPT_READ,
        0,
        (uint8_t *)hidReportMap},

    // HID External Report Reference Descriptor
    {
        {ATT_BT_UUID_SIZE, extReportRefUUID},
        GATT_PERMIT_READ,
        0,
        hidExtReportRefDesc

    },

    // HID Report characteristic, key input declaration
    {
        {ATT_BT_UUID_SIZE, characterUUID},
        GATT_PERMIT_READ,
        0,
        &hidReportKeyInProps},

    // HID Report characteristic, key input
    {
        {ATT_BT_UUID_SIZE, hidReportUUID},
        GATT_PERMIT_ENCRYPT_READ,
        0,
        &hidReportKeyIn},

    // HID Report characteristic client characteristic configuration
    {
        {ATT_BT_UUID_SIZE, clientCharCfgUUID},
        GATT_PERMIT_READ | GATT_PERMIT_ENCRYPT_WRITE,
        0,
        (uint8_t *)&hidReportKeyInClientCharCfg},

    // HID Report Reference characteristic descriptor, key input
    {
        {ATT_BT_UUID_SIZE, reportRefUUID},
        GATT_PERMIT_READ,
        0,
        hidReportRefKeyIn},

    // HID Report characteristic, LED output declaration
    {
        {ATT_BT_UUID_SIZE, characterUUID},
        GATT_PERMIT_READ,
        0,
        &hidReportLedOutProps},

    // HID Report characteristic, LED output
    {
        {ATT_BT_UUID_SIZE, hidReportUUID},
        GATT_PERMIT_ENCRYPT_READ | GATT_PERMIT_ENCRYPT_WRITE,
        0,
        &hidReportLedOut},

    // HID Report Reference characteristic descriptor, LED output
    {
        {ATT_BT_UUID_SIZE, reportRefUUID},
        GATT_PERMIT_READ,
        0,
        hidReportRefLedOut},

    // HID Boot Keyboard Input Report declaration
    {
        {ATT_BT_UUID_SIZE, characterUUID},
        GATT_PERMIT_READ,
        0,
        &hidReportBootKeyInProps},

    // HID Boot Keyboard Input Report
    {
        {ATT_BT_UUID_SIZE, hidBootKeyInputUUID},
        GATT_PERMIT_ENCRYPT_READ,
        0,
        &hidReportBootKeyIn},

    // HID Boot Keyboard Input Report characteristic client characteristic configuration
    {
        {ATT_BT_UUID_SIZE, clientCharCfgUUID},
        GATT_PERMIT_READ | GATT_PERMIT_ENCRYPT_WRITE,
        0,
        (uint8_t *)&hidReportBootKeyInClientCharCfg},

    // HID Boot Keyboard Output Report declaration
    {
        {ATT_BT_UUID_SIZE, characterUUID},
        GATT_PERMIT_READ,
        0,
        &hidReportBootKeyOutProps},

    // HID Boot Keyboard Output Report
    {
        {ATT_BT_UUID_SIZE, hidBootKeyOutputUUID},
        GATT_PERMIT_ENCRYPT_READ | GATT_PERMIT_ENCRYPT_WRITE,
        0,
        &hidReportBootKeyOut},

    // Feature Report declaration
    {
        {ATT_BT_UUID_SIZE, characterUUID},
        GATT_PERMIT_READ,
        0,
        &hidReportFeatureProps},

    // Feature Report
    {
        {ATT_BT_UUID_SIZE, hidReportUUID},
        GATT_PERMIT_ENCRYPT_READ | GATT_PERMIT_ENCRYPT_WRITE,
        0,
        &hidReportFeature},

    // HID Report Reference characteristic descriptor, feature
    {
        {ATT_BT_UUID_SIZE, reportRefUUID},
        GATT_PERMIT_READ,
        0,
        hidReportRefFeature},
};

// Attribute index enumeration-- these indexes match array elements above
enum
{
    HID_SERVICE_IDX,             // HID Service
    HID_INCLUDED_SERVICE_IDX,    // Included Service
    HID_INFO_DECL_IDX,           // HID Information characteristic declaration
    HID_INFO_IDX,                // HID Information characteristic
    HID_CONTROL_POINT_DECL_IDX,  // HID Control Point characteristic declaration
    HID_CONTROL_POINT_IDX,       // HID Control Point characteristic
    HID_PROTOCOL_MODE_DECL_IDX,  // HID Protocol Mode characteristic declaration
    HID_PROTOCOL_MODE_IDX,       // HID Protocol Mode characteristic
    HID_REPORT_MAP_DECL_IDX,     // HID Report Map characteristic declaration
    HID_REPORT_MAP_IDX,          // HID Report Map characteristic
    HID_EXT_REPORT_REF_DESC_IDX, // HID External Report Reference Descriptor
    HID_REPORT_KEY_IN_DECL_IDX,  // HID Report characteristic, key input declaration
    HID_REPORT_KEY_IN_IDX,       // HID Report characteristic, key input
    HID_REPORT_KEY_IN_CCCD_IDX,  // HID Report characteristic client characteristic configuration
    HID_REPORT_REF_KEY_IN_IDX,   // HID Report Reference characteristic descriptor, key input
    HID_REPORT_LED_OUT_DECL_IDX, // HID Report characteristic, LED output declaration
    HID_REPORT_LED_OUT_IDX,      // HID Report characteristic, LED output
    HID_REPORT_REF_LED_OUT_IDX,  // HID Report Reference characteristic descriptor, LED output
    HID_BOOT_KEY_IN_DECL_IDX,    // HID Boot Keyboard Input Report declaration
    HID_BOOT_KEY_IN_IDX,         // HID Boot Keyboard Input Report
    HID_BOOT_KEY_IN_CCCD_IDX,    // HID Boot Keyboard Input Report characteristic client characteristic configuration
    HID_BOOT_KEY_OUT_DECL_IDX,   // HID Boot Keyboard Output Report declaration
    HID_BOOT_KEY_OUT_IDX,        // HID Boot Keyboard Output Report
    HID_FEATURE_DECL_IDX,        // Feature Report declaration
    HID_FEATURE_IDX,             // Feature Report
    HID_REPORT_REF_FEATURE_IDX   // HID Report Reference characteristic descriptor, feature
};

/*********************************************************************
 * LOCAL FUNCTIONS
 */

/*********************************************************************
 * PROFILE CALLBACKS
 */

// Service Callbacks
gattServiceCBs_t hidKbdCBs = {
    HidDev_ReadAttrCB,  // Read callback function pointer
    HidDev_WriteAttrCB, // Write callback function pointer
    NULL                // Authorization callback function pointer
};

/*********************************************************************
 * PUBLIC FUNCTIONS
 */

/*********************************************************************
 * @fn      Hid_AddService
 *
 * @brief   Initializes the HID Service by registering
 *          GATT attributes with the GATT server.
 *
 * @return  Success or Failure
 */
bStatus_t Hid_AddService(void)
{
    uint8_t status = SUCCESS;

    // Initialize Client Characteristic Configuration attributes
    GATTServApp_InitCharCfg(INVALID_CONNHANDLE, hidReportKeyInClientCharCfg);
    GATTServApp_InitCharCfg(INVALID_CONNHANDLE, hidReportBootKeyInClientCharCfg);

    // Register GATT attribute list and CBs with GATT Server App
    status = GATTServApp_RegisterService(hidAttrTbl, GATT_NUM_ATTRS(hidAttrTbl), GATT_MAX_ENCRYPT_KEY_SIZE, &hidKbdCBs);

    // Set up included service
    Batt_GetParameter(BATT_PARAM_SERVICE_HANDLE,
                      &GATT_INCLUDED_HANDLE(hidAttrTbl, HID_INCLUDED_SERVICE_IDX));

    // Construct map of reports to characteristic handles
    // Each report is uniquely identified via its ID and type

    // Key input report
    hidRptMap[0].id = hidReportRefKeyIn[0];
    hidRptMap[0].type = hidReportRefKeyIn[1];
    hidRptMap[0].handle = hidAttrTbl[HID_REPORT_KEY_IN_IDX].handle;
    hidRptMap[0].cccdHandle = hidAttrTbl[HID_REPORT_KEY_IN_CCCD_IDX].handle;
    hidRptMap[0].mode = HID_PROTOCOL_MODE_REPORT;

    // LED output report
    hidRptMap[1].id = hidReportRefLedOut[0];
    hidRptMap[1].type = hidReportRefLedOut[1];
    hidRptMap[1].handle = hidAttrTbl[HID_REPORT_LED_OUT_IDX].handle;
    hidRptMap[1].cccdHandle = 0;
    hidRptMap[1].mode = HID_PROTOCOL_MODE_REPORT;

    // Boot keyboard input report
    // Use same ID and type as key input report
    hidRptMap[2].id = hidReportRefKeyIn[0];
    hidRptMap[2].type = hidReportRefKeyIn[1];
    hidRptMap[2].handle = hidAttrTbl[HID_BOOT_KEY_IN_IDX].handle;
    hidRptMap[2].cccdHandle = hidAttrTbl[HID_BOOT_KEY_IN_CCCD_IDX].handle;
    hidRptMap[2].mode = HID_PROTOCOL_MODE_BOOT;

    // Boot keyboard output report
    // Use same ID and type as LED output report
    hidRptMap[3].id = hidReportRefLedOut[0];
    hidRptMap[3].type = hidReportRefLedOut[1];
    hidRptMap[3].handle = hidAttrTbl[HID_BOOT_KEY_OUT_IDX].handle;
    hidRptMap[3].cccdHandle = 0;
    hidRptMap[3].mode = HID_PROTOCOL_MODE_BOOT;

    // Feature report
    hidRptMap[4].id = hidReportRefFeature[0];
    hidRptMap[4].type = hidReportRefFeature[1];
    hidRptMap[4].handle = hidAttrTbl[HID_FEATURE_IDX].handle;
    hidRptMap[4].cccdHandle = 0;
    hidRptMap[4].mode = HID_PROTOCOL_MODE_REPORT;

    // Battery level input report
    Batt_GetParameter(BATT_PARAM_BATT_LEVEL_IN_REPORT, &(hidRptMap[5]));

    // Setup report ID map
    HidDev_RegisterReports(HID_NUM_REPORTS, hidRptMap);

    return (status);
}

/*********************************************************************
 * @fn      Hid_SetParameter
 *
 * @brief   Set a HID Kbd parameter.
 *
 * @param   id - HID report ID.
 * @param   type - HID report type.
 * @param   uuid - attribute uuid.
 * @param   len - length of data to right.
 * @param   pValue - pointer to data to write.  This is dependent on
 *          the input parameters and WILL be cast to the appropriate
 *          data type (example: data type of uint16_t will be cast to
 *          uint16_t pointer).
 *
 * @return  GATT status code.
 */
uint8_t Hid_SetParameter(uint8_t id, uint8_t type, uint16_t uuid, uint8_t len, void *pValue)
{
    bStatus_t ret = SUCCESS;

    switch(uuid)
    {
        case REPORT_UUID:
            if(type == HID_REPORT_TYPE_OUTPUT)
            {
                if(len == 1)
                {
                    hidReportLedOut = *((uint8_t *)pValue);
                }
                else
                {
                    ret = ATT_ERR_INVALID_VALUE_SIZE;
                }
            }
            else if(type == HID_REPORT_TYPE_FEATURE)
            {
                if(len == 1)
                {
                    hidReportFeature = *((uint8_t *)pValue);
                }
                else
                {
                    ret = ATT_ERR_INVALID_VALUE_SIZE;
                }
            }
            else
            {
                ret = ATT_ERR_ATTR_NOT_FOUND;
            }
            break;

        case BOOT_KEY_OUTPUT_UUID:
            if(len == 1)
            {
                hidReportBootKeyOut = *((uint8_t *)pValue);
            }
            else
            {
                ret = ATT_ERR_INVALID_VALUE_SIZE;
            }
            break;

        default:
            // ignore the request
            break;
    }

    return (ret);
}

/*********************************************************************
 * @fn      Hid_GetParameter
 *
 * @brief   Get a HID Kbd parameter.
 *
 * @param   id - HID report ID.
 * @param   type - HID report type.
 * @param   uuid - attribute uuid.
 * @param   pLen - length of data to be read
 * @param   pValue - pointer to data to get.  This is dependent on
 *          the input parameters and WILL be cast to the appropriate
 *          data type (example: data type of uint16_t will be cast to
 *          uint16_t pointer).
 *
 * @return  GATT status code.
 */
uint8_t Hid_GetParameter(uint8_t id, uint8_t type, uint16_t uuid, uint16_t *pLen, void *pValue)
{
    switch(uuid)
    {
        case REPORT_UUID:
            if(type == HID_REPORT_TYPE_OUTPUT)
            {
                *((uint8_t *)pValue) = hidReportLedOut;
                *pLen = 1;
            }
            else if(type == HID_REPORT_TYPE_FEATURE)
            {
                *((uint8_t *)pValue) = hidReportFeature;
                *pLen = 1;
            }
            else
            {
                *pLen = 0;
            }
            break;

        case BOOT_KEY_OUTPUT_UUID:
            *((uint8_t *)pValue) = hidReportBootKeyOut;
            *pLen = 1;
            break;

        default:
            *pLen = 0;
            break;
    }

    return (SUCCESS);
}

/*********************************************************************
*********************************************************************/
