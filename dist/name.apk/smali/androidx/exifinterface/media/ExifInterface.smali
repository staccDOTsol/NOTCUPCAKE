.class public Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterface$OsApi21Impl;,
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$IfdType;,
        Landroidx/exifinterface/media/ExifInterface$ExifTag;,
        Landroidx/exifinterface/media/ExifInterface$ExifAttribute;,
        Landroidx/exifinterface/media/ExifInterface$Rational;,
        Landroidx/exifinterface/media/ExifInterface$ExifStreamType;
    }
.end annotation


# static fields
.field public static final ALTITUDE_ABOVE_SEA_LEVEL:S = 0x0s

.field public static final ALTITUDE_BELOW_SEA_LEVEL:S = 0x1s

.field static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field static final BYTE_ALIGN_II:S = 0x4949s

.field static final BYTE_ALIGN_MM:S = 0x4d4ds

.field public static final COLOR_SPACE_S_RGB:I = 0x1

.field public static final COLOR_SPACE_UNCALIBRATED:I = 0xffff

.field public static final CONTRAST_HARD:S = 0x2s

.field public static final CONTRAST_NORMAL:S = 0x0s

.field public static final CONTRAST_SOFT:S = 0x1s

.field public static final DATA_DEFLATE_ZIP:I = 0x8

.field public static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field public static final DATA_JPEG:I = 0x6

.field public static final DATA_JPEG_COMPRESSED:I = 0x7

.field public static final DATA_LOSSY_JPEG:I = 0x884c

.field public static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field public static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DEBUG:Z

.field static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final EXPOSURE_MODE_AUTO:S = 0x0s

.field public static final EXPOSURE_MODE_AUTO_BRACKET:S = 0x2s

.field public static final EXPOSURE_MODE_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_ACTION:S = 0x6s

.field public static final EXPOSURE_PROGRAM_APERTURE_PRIORITY:S = 0x3s

.field public static final EXPOSURE_PROGRAM_CREATIVE:S = 0x5s

.field public static final EXPOSURE_PROGRAM_LANDSCAPE_MODE:S = 0x8s

.field public static final EXPOSURE_PROGRAM_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_NORMAL:S = 0x2s

.field public static final EXPOSURE_PROGRAM_NOT_DEFINED:S = 0x0s

.field public static final EXPOSURE_PROGRAM_PORTRAIT_MODE:S = 0x7s

.field public static final EXPOSURE_PROGRAM_SHUTTER_PRIORITY:S = 0x4s

.field public static final FILE_SOURCE_DSC:S = 0x3s

.field public static final FILE_SOURCE_OTHER:S = 0x0s

.field public static final FILE_SOURCE_REFLEX_SCANNER:S = 0x2s

.field public static final FILE_SOURCE_TRANSPARENT_SCANNER:S = 0x1s

.field public static final FLAG_FLASH_FIRED:S = 0x1s

.field public static final FLAG_FLASH_MODE_AUTO:S = 0x18s

.field public static final FLAG_FLASH_MODE_COMPULSORY_FIRING:S = 0x8s

.field public static final FLAG_FLASH_MODE_COMPULSORY_SUPPRESSION:S = 0x10s

.field public static final FLAG_FLASH_NO_FLASH_FUNCTION:S = 0x20s

.field public static final FLAG_FLASH_RED_EYE_SUPPORTED:S = 0x40s

.field public static final FLAG_FLASH_RETURN_LIGHT_DETECTED:S = 0x6s

.field public static final FLAG_FLASH_RETURN_LIGHT_NOT_DETECTED:S = 0x4s

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_CHUNKY:S = 0x1s

.field public static final FORMAT_PLANAR:S = 0x2s

.field public static final GAIN_CONTROL_HIGH_GAIN_DOWN:S = 0x4s

.field public static final GAIN_CONTROL_HIGH_GAIN_UP:S = 0x2s

.field public static final GAIN_CONTROL_LOW_GAIN_DOWN:S = 0x3s

.field public static final GAIN_CONTROL_LOW_GAIN_UP:S = 0x1s

.field public static final GAIN_CONTROL_NONE:S = 0x0s

.field public static final GPS_DIRECTION_MAGNETIC:Ljava/lang/String; = "M"

.field public static final GPS_DIRECTION_TRUE:Ljava/lang/String; = "T"

.field public static final GPS_DISTANCE_KILOMETERS:Ljava/lang/String; = "K"

.field public static final GPS_DISTANCE_MILES:Ljava/lang/String; = "M"

.field public static final GPS_DISTANCE_NAUTICAL_MILES:Ljava/lang/String; = "N"

.field public static final GPS_MEASUREMENT_2D:Ljava/lang/String; = "2"

.field public static final GPS_MEASUREMENT_3D:Ljava/lang/String; = "3"

.field public static final GPS_MEASUREMENT_DIFFERENTIAL_CORRECTED:S = 0x1s

.field public static final GPS_MEASUREMENT_INTERRUPTED:Ljava/lang/String; = "V"

.field public static final GPS_MEASUREMENT_IN_PROGRESS:Ljava/lang/String; = "A"

.field public static final GPS_MEASUREMENT_NO_DIFFERENTIAL:S = 0x0s

.field public static final GPS_SPEED_KILOMETERS_PER_HOUR:Ljava/lang/String; = "K"

.field public static final GPS_SPEED_KNOTS:Ljava/lang/String; = "N"

.field public static final GPS_SPEED_MILES_PER_HOUR:Ljava/lang/String; = "M"

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IDENTIFIER_XMP_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field static final IFD_TYPE_PREVIEW:I = 0x5

.field static final IFD_TYPE_PRIMARY:I = 0x0

.field static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_HEIF:I = 0xc

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_PNG:I = 0xd

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final IMAGE_TYPE_WEBP:I = 0xe

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final JPEG_SIGNATURE:[B

.field public static final LATITUDE_NORTH:Ljava/lang/String; = "N"

.field public static final LATITUDE_SOUTH:Ljava/lang/String; = "S"

.field public static final LIGHT_SOURCE_CLOUDY_WEATHER:S = 0xas

.field public static final LIGHT_SOURCE_COOL_WHITE_FLUORESCENT:S = 0xes

.field public static final LIGHT_SOURCE_D50:S = 0x17s

.field public static final LIGHT_SOURCE_D55:S = 0x14s

.field public static final LIGHT_SOURCE_D65:S = 0x15s

.field public static final LIGHT_SOURCE_D75:S = 0x16s

.field public static final LIGHT_SOURCE_DAYLIGHT:S = 0x1s

.field public static final LIGHT_SOURCE_DAYLIGHT_FLUORESCENT:S = 0xcs

.field public static final LIGHT_SOURCE_DAY_WHITE_FLUORESCENT:S = 0xds

.field public static final LIGHT_SOURCE_FINE_WEATHER:S = 0x9s

.field public static final LIGHT_SOURCE_FLASH:S = 0x4s

.field public static final LIGHT_SOURCE_FLUORESCENT:S = 0x2s

.field public static final LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN:S = 0x18s

.field public static final LIGHT_SOURCE_OTHER:S = 0xffs

.field public static final LIGHT_SOURCE_SHADE:S = 0xbs

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_A:S = 0x11s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_B:S = 0x12s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_C:S = 0x13s

.field public static final LIGHT_SOURCE_TUNGSTEN:S = 0x3s

.field public static final LIGHT_SOURCE_UNKNOWN:S = 0x0s

.field public static final LIGHT_SOURCE_WARM_WHITE_FLUORESCENT:S = 0x10s

.field public static final LIGHT_SOURCE_WHITE_FLUORESCENT:S = 0xfs

.field public static final LONGITUDE_EAST:Ljava/lang/String; = "E"

.field public static final LONGITUDE_WEST:Ljava/lang/String; = "W"

.field static final MARKER:B = -0x1t

.field static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field public static final METERING_MODE_AVERAGE:S = 0x1s

.field public static final METERING_MODE_CENTER_WEIGHT_AVERAGE:S = 0x2s

.field public static final METERING_MODE_MULTI_SPOT:S = 0x4s

.field public static final METERING_MODE_OTHER:S = 0xffs

.field public static final METERING_MODE_PARTIAL:S = 0x6s

.field public static final METERING_MODE_PATTERN:S = 0x5s

.field public static final METERING_MODE_SPOT:S = 0x3s

.field public static final METERING_MODE_UNKNOWN:S = 0x0s

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field public static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field public static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field public static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final PNG_CHUNK_CRC_BYTE_LENGTH:I = 0x4

.field private static final PNG_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final PNG_CHUNK_TYPE_EXIF:[B

.field private static final PNG_CHUNK_TYPE_IEND:[B

.field private static final PNG_CHUNK_TYPE_IHDR:[B

.field private static final PNG_SIGNATURE:[B

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field public static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field public static final RENDERED_PROCESS_CUSTOM:S = 0x1s

.field public static final RENDERED_PROCESS_NORMAL:S = 0x0s

.field public static final RESOLUTION_UNIT_CENTIMETERS:S = 0x3s

.field public static final RESOLUTION_UNIT_INCHES:S = 0x2s

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RW2_SIGNATURE:S = 0x55s

.field public static final SATURATION_HIGH:S = 0x0s

.field public static final SATURATION_LOW:S = 0x0s

.field public static final SATURATION_NORMAL:S = 0x0s

.field public static final SCENE_CAPTURE_TYPE_LANDSCAPE:S = 0x1s

.field public static final SCENE_CAPTURE_TYPE_NIGHT:S = 0x3s

.field public static final SCENE_CAPTURE_TYPE_PORTRAIT:S = 0x2s

.field public static final SCENE_CAPTURE_TYPE_STANDARD:S = 0x0s

.field public static final SCENE_TYPE_DIRECTLY_PHOTOGRAPHED:S = 0x1s

.field public static final SENSITIVITY_TYPE_ISO_SPEED:S = 0x3s

.field public static final SENSITIVITY_TYPE_REI:S = 0x2s

.field public static final SENSITIVITY_TYPE_REI_AND_ISO:S = 0x6s

.field public static final SENSITIVITY_TYPE_SOS:S = 0x1s

.field public static final SENSITIVITY_TYPE_SOS_AND_ISO:S = 0x5s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI:S = 0x4s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI_AND_ISO:S = 0x7s

.field public static final SENSITIVITY_TYPE_UNKNOWN:S = 0x0s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL:S = 0x5s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL_LINEAR:S = 0x8s

.field public static final SENSOR_TYPE_NOT_DEFINED:S = 0x1s

.field public static final SENSOR_TYPE_ONE_CHIP:S = 0x2s

.field public static final SENSOR_TYPE_THREE_CHIP:S = 0x4s

.field public static final SENSOR_TYPE_TRILINEAR:S = 0x7s

.field public static final SENSOR_TYPE_TWO_CHIP:S = 0x3s

.field public static final SHARPNESS_HARD:S = 0x2s

.field public static final SHARPNESS_NORMAL:S = 0x0s

.field public static final SHARPNESS_SOFT:S = 0x1s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field static final START_CODE:B = 0x2at

.field public static final STREAM_TYPE_EXIF_DATA_ONLY:I = 0x1

.field public static final STREAM_TYPE_FULL_IMAGE_DATA:I = 0x0

.field public static final SUBJECT_DISTANCE_RANGE_CLOSE_VIEW:S = 0x2s

.field public static final SUBJECT_DISTANCE_RANGE_DISTANT_VIEW:S = 0x3s

.field public static final SUBJECT_DISTANCE_RANGE_MACRO:S = 0x1s

.field public static final SUBJECT_DISTANCE_RANGE_UNKNOWN:S = 0x0s

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BODY_SERIAL_NUMBER:Ljava/lang/String; = "BodySerialNumber"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CAMARA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_CAMERA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GAMMA:Ljava/lang/String; = "Gamma"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_H_POSITIONING_ERROR:Ljava/lang/String; = "GPSHPositioningError"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO_SPEED:Ljava/lang/String; = "ISOSpeed"

.field public static final TAG_ISO_SPEED_LATITUDE_YYY:Ljava/lang/String; = "ISOSpeedLatitudeyyy"

.field public static final TAG_ISO_SPEED_LATITUDE_ZZZ:Ljava/lang/String; = "ISOSpeedLatitudezzz"

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LENS_MAKE:Ljava/lang/String; = "LensMake"

.field public static final TAG_LENS_MODEL:Ljava/lang/String; = "LensModel"

.field public static final TAG_LENS_SERIAL_NUMBER:Ljava/lang/String; = "LensSerialNumber"

.field public static final TAG_LENS_SPECIFICATION:Ljava/lang/String; = "LensSpecification"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_OFFSET_TIME:Ljava/lang/String; = "OffsetTime"

.field public static final TAG_OFFSET_TIME_DIGITIZED:Ljava/lang/String; = "OffsetTimeDigitized"

.field public static final TAG_OFFSET_TIME_ORIGINAL:Ljava/lang/String; = "OffsetTimeOriginal"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOGRAPHIC_SENSITIVITY:Ljava/lang/String; = "PhotographicSensitivity"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final TAG_RECOMMENDED_EXPOSURE_INDEX:Ljava/lang/String; = "RecommendedExposureIndex"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SENSITIVITY_TYPE:Ljava/lang/String; = "SensitivityType"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STANDARD_OUTPUT_SENSITIVITY:Ljava/lang/String; = "StandardOutputSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field public static final TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_XMP:Ljava/lang/String; = "Xmp"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field private static final WEBP_CHUNK_SIZE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_CHUNK_TYPE_ANIM:[B

.field private static final WEBP_CHUNK_TYPE_ANMF:[B

.field private static final WEBP_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_CHUNK_TYPE_EXIF:[B

.field private static final WEBP_CHUNK_TYPE_VP8:[B

.field private static final WEBP_CHUNK_TYPE_VP8L:[B

.field private static final WEBP_CHUNK_TYPE_VP8X:[B

.field private static final WEBP_CHUNK_TYPE_VP8X_DEFAULT_LENGTH:I = 0xa

.field private static final WEBP_FILE_SIZE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_SIGNATURE_1:[B

.field private static final WEBP_SIGNATURE_2:[B

.field private static final WEBP_VP8L_SIGNATURE:B = 0x2ft

.field private static final WEBP_VP8_SIGNATURE:[B

.field public static final WHITEBALANCE_AUTO:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITEBALANCE_MANUAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITE_BALANCE_AUTO:S = 0x0s

.field public static final WHITE_BALANCE_MANUAL:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CENTERED:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CO_SITED:S = 0x2s

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAreThumbnailStripsConsecutive:Z

.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mAttributesOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mHasThumbnailStrips:Z

.field private mIsExifDataOnly:Z

.field private mMimeType:I

.field private mModified:Z

.field private mOffsetToExifData:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I

.field private mXmpIsFromSeparateMarker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    .line 2234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Integer;

    const/4 v4, 0x1

    .line 2233
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v7, 0x6

    .line 2234
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v8, 0x2

    .line 2236
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v2, v3, v8

    const/16 v10, 0x8

    .line 2234
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v1

    .line 2233
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    new-array v3, v0, [Ljava/lang/Integer;

    aput-object v9, v3, v6

    const/4 v12, 0x7

    .line 2236
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v8

    const/4 v14, 0x5

    .line 2237
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v1

    .line 2235
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    new-array v3, v1, [I

    .line 2878
    fill-array-data v3, :array_0

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    new-array v3, v4, [I

    aput v0, v3, v6

    .line 2883
    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    new-array v3, v4, [I

    aput v10, v3, v6

    .line 2888
    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    new-array v3, v1, [B

    .line 2940
    fill-array-data v3, :array_1

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    new-array v3, v0, [B

    .line 2944
    fill-array-data v3, :array_2

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    new-array v3, v0, [B

    .line 2945
    fill-array-data v3, :array_3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    new-array v3, v0, [B

    .line 2946
    fill-array-data v3, :array_4

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    new-array v3, v7, [B

    .line 2954
    fill-array-data v3, :array_5

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v3, 0xa

    new-array v12, v3, [B

    .line 2956
    fill-array-data v12, :array_6

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    new-array v12, v10, [B

    .line 2972
    fill-array-data v12, :array_7

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    new-array v12, v0, [B

    .line 2976
    fill-array-data v12, :array_8

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    new-array v12, v0, [B

    .line 2978
    fill-array-data v12, :array_9

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    new-array v12, v0, [B

    .line 2980
    fill-array-data v12, :array_a

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    new-array v12, v0, [B

    .line 2986
    fill-array-data v12, :array_b

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    new-array v12, v0, [B

    .line 2987
    fill-array-data v12, :array_c

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    new-array v12, v0, [B

    .line 2989
    fill-array-data v12, :array_d

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    new-array v12, v1, [B

    .line 2991
    fill-array-data v12, :array_e

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 2994
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    const-string v3, "VP8X"

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 2995
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "VP8L"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 2996
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "VP8 "

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 2997
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "ANIM"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 2998
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "ANMF"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    const-string v16, ""

    const-string v17, "BYTE"

    const-string v18, "STRING"

    const-string v19, "USHORT"

    const-string v20, "ULONG"

    const-string v21, "URATIONAL"

    const-string v22, "SBYTE"

    const-string v23, "UNDEFINED"

    const-string v24, "SSHORT"

    const-string v25, "SLONG"

    const-string v26, "SRATIONAL"

    const-string v27, "SINGLE"

    const-string v28, "DOUBLE"

    const-string v29, "IFD"

    .line 3034
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v3, 0xe

    new-array v12, v3, [I

    .line 3039
    fill-array-data v12, :array_f

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    new-array v12, v10, [B

    .line 3044
    fill-array-data v12, :array_10

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    const/16 v12, 0x2a

    new-array v12, v12, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3499
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v7, 0xfe

    invoke-direct {v3, v10, v7, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v3, v7, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v4

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ImageWidth"

    const/16 v10, 0x100

    invoke-direct {v3, v7, v10, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v3, v12, v8

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ImageLength"

    const/16 v10, 0x101

    invoke-direct {v3, v7, v10, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v3, v12, v1

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v3, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v0

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Compression"

    const/16 v10, 0x103

    invoke-direct {v3, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v14

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "PhotometricInterpretation"

    const/16 v10, 0x106

    invoke-direct {v3, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ImageDescription"

    const/16 v10, 0x10e

    invoke-direct {v3, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x7

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Make"

    const/16 v10, 0x10f

    invoke-direct {v3, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x8

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Model"

    const/16 v10, 0x110

    invoke-direct {v3, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x9

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "StripOffsets"

    const/16 v7, 0x111

    invoke-direct {v3, v10, v7, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xa

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Orientation"

    const/16 v10, 0x112

    invoke-direct {v3, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xb

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SamplesPerPixel"

    const/16 v7, 0x115

    invoke-direct {v3, v10, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xc

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "RowsPerStrip"

    const/16 v7, 0x116

    invoke-direct {v3, v10, v7, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xd

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "StripByteCounts"

    const/16 v7, 0x117

    invoke-direct {v3, v10, v7, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xe

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "XResolution"

    const/16 v10, 0x11a

    invoke-direct {v3, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xf

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "YResolution"

    const/16 v7, 0x11b

    invoke-direct {v3, v10, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x10

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "PlanarConfiguration"

    const/16 v7, 0x11c

    invoke-direct {v3, v10, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x11

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ResolutionUnit"

    const/16 v7, 0x128

    invoke-direct {v3, v10, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x12

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "TransferFunction"

    const/16 v7, 0x12d

    invoke-direct {v3, v10, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x13

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "Software"

    const/16 v7, 0x131

    invoke-direct {v3, v10, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x14

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "DateTime"

    const/16 v7, 0x132

    invoke-direct {v3, v10, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x15

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Artist"

    const/16 v10, 0x13b

    invoke-direct {v3, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x16

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "WhitePoint"

    const/16 v10, 0x13e

    invoke-direct {v3, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x17

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "PrimaryChromaticities"

    const/16 v6, 0x13f

    invoke-direct {v3, v10, v6, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubIFDPointer"

    const/16 v10, 0x14a

    invoke-direct {v3, v6, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v3, v6, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormatLength"

    const/16 v10, 0x202

    invoke-direct {v3, v6, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrCoefficients"

    const/16 v10, 0x211

    invoke-direct {v3, v6, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrSubSampling"

    const/16 v10, 0x212

    invoke-direct {v3, v6, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "YCbCrPositioning"

    const/16 v10, 0x213

    invoke-direct {v3, v6, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ReferenceBlackWhite"

    const/16 v10, 0x214

    invoke-direct {v3, v6, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Copyright"

    const v10, 0x8298

    invoke-direct {v3, v6, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExifIFDPointer"

    const v10, 0x8769

    invoke-direct {v3, v6, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSInfoIFDPointer"

    const v10, 0x8825

    invoke-direct {v3, v6, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensorTopBorder"

    invoke-direct {v3, v6, v0, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensorLeftBorder"

    invoke-direct {v3, v6, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensorBottomBorder"

    const/4 v10, 0x6

    invoke-direct {v3, v6, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensorRightBorder"

    const/4 v10, 0x7

    invoke-direct {v3, v6, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x26

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ISO"

    invoke-direct {v3, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x27

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "JpgFromRaw"

    const/16 v7, 0x2e

    invoke-direct {v3, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Xmp"

    const/16 v7, 0x2bc

    invoke-direct {v3, v6, v7, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v3, v12, v6

    sput-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v3, 0x4a

    new-array v3, v3, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3549
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ExposureTime"

    const v10, 0x829a

    invoke-direct {v6, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x0

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FNumber"

    const v10, 0x829d

    invoke-direct {v6, v7, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v4

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ExposureProgram"

    const v10, 0x8822

    invoke-direct {v6, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v8

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SpectralSensitivity"

    const v10, 0x8824

    invoke-direct {v6, v7, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v1

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "PhotographicSensitivity"

    const v10, 0x8827

    invoke-direct {v6, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v0

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "OECF"

    const v10, 0x8828

    const/4 v4, 0x7

    invoke-direct {v6, v7, v10, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v14

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SensitivityType"

    const v10, 0x8830

    invoke-direct {v6, v7, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "StandardOutputSensitivity"

    const v10, 0x8831

    invoke-direct {v6, v7, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v4

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "RecommendedExposureIndex"

    const v7, 0x8832

    invoke-direct {v4, v6, v7, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x8

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ISOSpeed"

    const v7, 0x8833

    invoke-direct {v4, v6, v7, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ISOSpeedLatitudeyyy"

    const v7, 0x8834

    invoke-direct {v4, v6, v7, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xa

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ISOSpeedLatitudezzz"

    const v7, 0x8835

    invoke-direct {v4, v6, v7, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExifVersion"

    const v7, 0x9000

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xc

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DateTimeOriginal"

    const v7, 0x9003

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xd

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DateTimeDigitized"

    const v7, 0x9004

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xe

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "OffsetTime"

    const v7, 0x9010

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xf

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "OffsetTimeOriginal"

    const v7, 0x9011

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x10

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "OffsetTimeDigitized"

    const v7, 0x9012

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x11

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ComponentsConfiguration"

    const v7, 0x9101

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x12

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CompressedBitsPerPixel"

    const v7, 0x9102

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ShutterSpeedValue"

    const v7, 0x9201

    const/16 v10, 0xa

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ApertureValue"

    const v7, 0x9202

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "BrightnessValue"

    const v7, 0x9203

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExposureBiasValue"

    const v7, 0x9204

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x17

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "MaxApertureValue"

    const v7, 0x9205

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubjectDistance"

    const v7, 0x9206

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "MeteringMode"

    const v7, 0x9207

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "LightSource"

    const v7, 0x9208

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Flash"

    const v7, 0x9209

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FocalLength"

    const v7, 0x920a

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubjectArea"

    const v7, 0x9214

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "MakerNote"

    const v7, 0x927c

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "UserComment"

    const v7, 0x9286

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubSecTime"

    const v7, 0x9290

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubSecTimeOriginal"

    const v7, 0x9291

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubSecTimeDigitized"

    const v7, 0x9292

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FlashpixVersion"

    const v7, 0xa000

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ColorSpace"

    const v7, 0xa001

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PixelXDimension"

    const v7, 0xa002

    invoke-direct {v4, v6, v7, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x26

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PixelYDimension"

    const v7, 0xa003

    invoke-direct {v4, v6, v7, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x27

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "RelatedSoundFile"

    const v7, 0xa004

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "InteroperabilityIFDPointer"

    const v7, 0xa005

    invoke-direct {v4, v6, v7, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FlashEnergy"

    const v7, 0xa20b

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2a

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SpatialFrequencyResponse"

    const v7, 0xa20c

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2b

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneXResolution"

    const v7, 0xa20e

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2c

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneYResolution"

    const v7, 0xa20f

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2d

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneResolutionUnit"

    const v7, 0xa210

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2e

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubjectLocation"

    const v7, 0xa214

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2f

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExposureIndex"

    const v7, 0xa215

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x30

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SensingMethod"

    const v7, 0xa217

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x31

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FileSource"

    const v7, 0xa300

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x32

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SceneType"

    const v7, 0xa301

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x33

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CFAPattern"

    const v7, 0xa302

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x34

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CustomRendered"

    const v7, 0xa401

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x35

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ExposureMode"

    const v7, 0xa402

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x36

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "WhiteBalance"

    const v7, 0xa403

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x37

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DigitalZoomRatio"

    const v7, 0xa404

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x38

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "FocalLengthIn35mmFilm"

    const v7, 0xa405

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x39

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SceneCaptureType"

    const v7, 0xa406

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3a

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GainControl"

    const v7, 0xa407

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3b

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Contrast"

    const v7, 0xa408

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3c

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Saturation"

    const v7, 0xa409

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3d

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Sharpness"

    const v7, 0xa40a

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3e

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DeviceSettingDescription"

    const v7, 0xa40b

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3f

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "SubjectDistanceRange"

    const v7, 0xa40c

    invoke-direct {v4, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x40

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ImageUniqueID"

    const v7, 0xa420

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x41

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CameraOwnerName"

    const v7, 0xa430

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x42

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "BodySerialNumber"

    const v7, 0xa431

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x43

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "LensSpecification"

    const v7, 0xa432

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x44

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "LensMake"

    const v7, 0xa433

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x45

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "LensModel"

    const v7, 0xa434

    invoke-direct {v4, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x46

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "Gamma"

    const v7, 0xa500

    invoke-direct {v4, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x47

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DNGVersion"

    const v7, 0xc612

    const/4 v10, 0x1

    invoke-direct {v4, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x48

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "DefaultCropSize"

    const v7, 0xc620

    invoke-direct {v4, v6, v7, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x49

    aput-object v4, v3, v6

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v4, 0x20

    new-array v4, v4, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3627
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSVersionID"

    const/4 v0, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v10

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "GPSLatitudeRef"

    invoke-direct {v6, v7, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v0

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSLatitude"

    invoke-direct {v0, v6, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v8

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSLongitudeRef"

    invoke-direct {v0, v6, v1, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSLongitude"

    const/4 v7, 0x4

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSAltitudeRef"

    const/4 v7, 0x1

    invoke-direct {v0, v6, v14, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v14

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSAltitude"

    const/4 v7, 0x6

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSTimeStamp"

    const/4 v7, 0x7

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSSatellites"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSStatus"

    const/16 v7, 0x9

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSMeasureMode"

    const/16 v7, 0xa

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDOP"

    const/16 v7, 0xb

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSSpeedRef"

    const/16 v7, 0xc

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSSpeed"

    const/16 v7, 0xd

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSTrackRef"

    const/16 v7, 0xe

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSTrack"

    const/16 v7, 0xf

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSImgDirectionRef"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSImgDirection"

    const/16 v7, 0x11

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSMapDatum"

    const/16 v7, 0x12

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestLatitudeRef"

    const/16 v7, 0x13

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestLatitude"

    const/16 v7, 0x14

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestLongitudeRef"

    const/16 v7, 0x15

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v0, v4, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestLongitude"

    const/16 v7, 0x16

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v0, v4, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestBearingRef"

    const/16 v7, 0x17

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestBearing"

    const/16 v7, 0x18

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v0, v4, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestDistanceRef"

    const/16 v7, 0x19

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v0, v4, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDestDistance"

    const/16 v7, 0x1a

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v0, v4, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSProcessingMethod"

    const/16 v7, 0x1b

    const/4 v10, 0x7

    invoke-direct {v0, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v0, v4, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSAreaInformation"

    const/16 v7, 0x1c

    invoke-direct {v0, v6, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v0, v4, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDateStamp"

    const/16 v7, 0x1d

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v0, v4, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSDifferential"

    const/16 v7, 0x1e

    invoke-direct {v0, v6, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v0, v4, v6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "GPSHPositioningError"

    const/16 v7, 0x1f

    invoke-direct {v0, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v0, v4, v6

    sput-object v4, Landroidx/exifinterface/media/ExifInterface;->IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v0, 0x1

    new-array v6, v0, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3662
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "InteroperabilityIndex"

    invoke-direct {v7, v10, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v0, 0x0

    aput-object v7, v6, v0

    sput-object v6, Landroidx/exifinterface/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v7, 0x25

    new-array v7, v7, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3666
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "NewSubfileType"

    const/16 v8, 0xfe

    const/4 v1, 0x4

    invoke-direct {v10, v14, v8, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v10, v7, v0

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v0, v8, v10, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v0, v7, v8

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImageWidth"

    const/16 v10, 0x100

    const/4 v14, 0x3

    invoke-direct {v0, v8, v10, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/4 v8, 0x2

    aput-object v0, v7, v8

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImageLength"

    const/16 v10, 0x101

    invoke-direct {v0, v8, v10, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v7, v14

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v0, v8, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Compression"

    const/16 v8, 0x103

    invoke-direct {v0, v1, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "PhotometricInterpretation"

    const/16 v8, 0x106

    invoke-direct {v0, v1, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ImageDescription"

    const/16 v8, 0x10e

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Make"

    const/16 v8, 0x10f

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Model"

    const/16 v8, 0x110

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    const/4 v10, 0x4

    const/4 v14, 0x3

    invoke-direct {v0, v1, v8, v14, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ThumbnailOrientation"

    const/16 v8, 0x112

    invoke-direct {v0, v1, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "SamplesPerPixel"

    const/16 v8, 0x115

    invoke-direct {v0, v1, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "RowsPerStrip"

    const/16 v8, 0x116

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v14, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "StripByteCounts"

    const/16 v8, 0x117

    invoke-direct {v0, v1, v8, v14, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "XResolution"

    const/16 v8, 0x11a

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x10

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "PlanarConfiguration"

    const/16 v8, 0x11c

    const/4 v10, 0x3

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x11

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ResolutionUnit"

    const/16 v8, 0x128

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x12

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "TransferFunction"

    const/16 v8, 0x12d

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x13

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Software"

    const/16 v8, 0x131

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x14

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "DateTime"

    const/16 v8, 0x132

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x15

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Artist"

    const/16 v8, 0x13b

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x16

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "WhitePoint"

    const/16 v8, 0x13e

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x17

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "PrimaryChromaticities"

    const/16 v8, 0x13f

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "SubIFDPointer"

    const/16 v8, 0x14a

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x19

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v8, 0x201

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1a

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v8, 0x202

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1b

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "YCbCrCoefficients"

    const/16 v8, 0x211

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "YCbCrSubSampling"

    const/16 v8, 0x212

    const/4 v10, 0x3

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1d

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "YCbCrPositioning"

    const/16 v8, 0x213

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1e

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ReferenceBlackWhite"

    const/16 v8, 0x214

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1f

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "Copyright"

    const v8, 0x8298

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x20

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ExifIFDPointer"

    const v8, 0x8769

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x21

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x22

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "DNGVersion"

    const v8, 0xc612

    const/4 v10, 0x1

    invoke-direct {v0, v1, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x23

    aput-object v0, v7, v1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "DefaultCropSize"

    const v8, 0xc620

    const/4 v10, 0x4

    const/4 v14, 0x3

    invoke-direct {v0, v1, v8, v14, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x24

    aput-object v0, v7, v1

    sput-object v7, Landroidx/exifinterface/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3709
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    invoke-direct {v0, v1, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-array v0, v14, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3713
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImage"

    const/16 v10, 0x100

    const/4 v14, 0x7

    invoke-direct {v1, v8, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x0

    aput-object v1, v0, v8

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "CameraSettingsIFDPointer"

    const/16 v10, 0x2020

    const/4 v14, 0x4

    invoke-direct {v1, v8, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v1, v0, v8

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ImageProcessingIFDPointer"

    const/16 v10, 0x2040

    invoke-direct {v1, v8, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x2

    aput-object v1, v0, v8

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-array v1, v8, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3718
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "PreviewImageStart"

    move-object/from16 v16, v11

    const/16 v11, 0x101

    invoke-direct {v8, v10, v11, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v8, v1, v10

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "PreviewImageLength"

    const/16 v11, 0x102

    invoke-direct {v8, v10, v11, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x1

    aput-object v8, v1, v10

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-array v8, v10, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3722
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "AspectFrame"

    const/16 v10, 0x1113

    move-object/from16 v20, v13

    const/4 v13, 0x3

    invoke-direct {v11, v14, v10, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v11, v8, v10

    sput-object v8, Landroidx/exifinterface/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v11, 0x1

    new-array v14, v11, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3726
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ColorSpace"

    move-object/from16 v21, v2

    const/16 v2, 0x37

    invoke-direct {v11, v10, v2, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v11, v14, v2

    sput-object v14, Landroidx/exifinterface/media/ExifInterface;->PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v10, 0xa

    new-array v10, v10, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v12, v10, v2

    const/4 v2, 0x1

    aput-object v3, v10, v2

    const/4 v2, 0x2

    aput-object v4, v10, v2

    aput-object v6, v10, v13

    const/4 v2, 0x4

    aput-object v7, v10, v2

    const/4 v3, 0x5

    aput-object v12, v10, v3

    const/4 v3, 0x6

    aput-object v0, v10, v3

    const/4 v0, 0x7

    aput-object v1, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    .line 3754
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-array v0, v3, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3760
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    invoke-direct {v1, v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v1, v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v1, v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v1, v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v1, v3, v4, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3770
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v3, 0x201

    invoke-direct {v0, v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3772
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v3, 0x202

    invoke-direct {v0, v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3777
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3781
    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3783
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "DigitalZoomRatio"

    const-string v3, "ExposureTime"

    const-string v4, "SubjectDistance"

    const-string v6, "GPSTimeStamp"

    filled-new-array {v1, v2, v3, v4, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 3788
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    .line 3795
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 3797
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 3800
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 3842
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    .line 3843
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v7, 0x0

    .line 3846
    :goto_0
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    if-ge v7, v1, :cond_1

    .line 3847
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 3848
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 3849
    aget-object v0, v0, v7

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3850
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget v6, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3851
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget-object v6, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3856
    :cond_1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 3857
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 3858
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 3859
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 3860
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 3861
    aget-object v1, v1, v2

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 3892
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 3895
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_3
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_4
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_8
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_a
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_b
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_c
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_d
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_e
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_10
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3869
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3871
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3872
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const-string v0, "file cannot be null"

    .line 3907
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3909
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3869
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3871
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3872
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const-string v0, "fileDescriptor cannot be null"

    .line 3939
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3941
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 3942
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3945
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3946
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 3950
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface$OsApi21Impl;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_0

    .line 3953
    :cond_0
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 3957
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3958
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3960
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_1

    .line 3962
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    .line 3960
    :goto_1
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_2

    .line 3962
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 3964
    :cond_2
    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3977
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3869
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3871
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3872
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const-string v0, "inputStream cannot be null"

    .line 3995
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3997
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 4001
    new-instance p2, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {p2, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4002
    move-object p1, p2

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->isExifDataOnly(Ljava/io/BufferedInputStream;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ExifInterface"

    const-string p2, "Given data does not follow the structure of an Exif-only data."

    .line 4003
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4006
    :cond_1
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    .line 4007
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4008
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    move-object p1, p2

    goto :goto_1

    .line 4010
    :cond_2
    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_3

    .line 4011
    move-object p2, p1

    check-cast p2, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4012
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 4013
    :cond_3
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    .line 4014
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4015
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4016
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 4018
    :cond_4
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 4019
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 4022
    :goto_1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3869
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3871
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3872
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const-string v0, "filename cannot be null"

    .line 3922
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3924
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 6664
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 6665
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6666
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 6667
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 6666
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 6671
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 6672
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6673
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 6672
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 6675
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 6676
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6677
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 6676
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 6679
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 6680
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6681
    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 6680
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 6683
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 6684
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6685
    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 6684
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5

    .line 8063
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8064
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 8065
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8067
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 7988
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7989
    invoke-static {p0}, Landroidx/exifinterface/media/ExifInterface$OsApi21Impl;->close(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_0
    const-string p0, "ExifInterface"

    const-string v0, "closeFileDescriptor is called in API < 21, which must be wrong."

    .line 7991
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 7974
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7976
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private convertDecimalDegree(D)Ljava/lang/String;
    .locals 8

    double-to-long v0, p1

    long-to-double v2, v0

    sub-double/2addr p1, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v4, p1, v2

    double-to-long v4, v4

    long-to-double v6, v4

    div-double/2addr v6, v2

    sub-double/2addr p1, v6

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double p1, p1, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double p1, p1, v2

    .line 5253
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 5254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/1,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/10000000"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 11

    const-string v0, "/"

    :try_start_0
    const-string v1, ","

    const/4 v2, -0x1

    .line 5220
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 5223
    aget-object v3, p0, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5224
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v3, v3, v6

    .line 5225
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 5227
    aget-object v3, p0, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5228
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v3, v3, v6

    .line 5229
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v7, v9

    const/4 v3, 0x2

    .line 5231
    aget-object p0, p0, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 5232
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    aget-object p0, p0, v6

    .line 5233
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v2

    add-double/2addr v4, v7

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    add-double/2addr v4, v0

    const-string p0, "S"

    .line 5236
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "N"

    .line 5238
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "E"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 5242
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-wide v4

    :cond_3
    :goto_1
    neg-double p0, v4

    return-wide p0

    .line 5246
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static convertToLongArray(Ljava/lang/Object;)[J
    .locals 4

    .line 8034
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 8035
    check-cast p0, [I

    .line 8036
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 8037
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 8038
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 8041
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 8042
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8003
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    .line 8005
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    :goto_0
    if-lez p2, :cond_1

    .line 8018
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    .line 8019
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v2, :cond_0

    sub-int/2addr p2, v4

    .line 8025
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 8021
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to copy the given amount of bytes from the inputstream to the output stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private copyChunksUpToGivenChunkType(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 6627
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 6628
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encountered invalid length while copying WebP chunks up tochunk type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_1

    const-string p3, ""

    goto :goto_0

    .line 6630
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " or "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6633
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface;->copyWebPChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 6634
    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_0

    .line 6635
    invoke-static {v1, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    return-void
.end method

.method private copyWebPChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6643
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 6644
    invoke-virtual {p2, p3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6645
    invoke-virtual {p2, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6647
    rem-int/lit8 p3, v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {p1, p2, v0}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2

    const-string v0, "tag shouldn\'t be null"

    .line 4068
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ISOSpeedRatings"

    .line 4071
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4072
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "ExifInterface"

    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 4073
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "PhotographicSensitivity"

    :cond_1
    const/4 v0, 0x0

    .line 4080
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 4081
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "yes"

    .line 5746
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5748
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 5749
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$1;

    invoke-direct {v2, p0, p1}, Landroidx/exifinterface/media/ExifInterface$1;-><init>(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    goto :goto_0

    .line 5802
    :cond_0
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_1

    .line 5803
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 5804
    :cond_1
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 5805
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const/16 v2, 0x21

    .line 5811
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    .line 5813
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    .line 5815
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    .line 5817
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 5827
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    const/16 v0, 0x1d

    .line 5828
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x1e

    .line 5830
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1f

    .line 5832
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 5834
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    .line 5835
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x13

    .line 5837
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x18

    .line 5839
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v0, v6

    move-object v4, v0

    :goto_1
    const/4 v5, 0x0

    if-eqz v6, :cond_4

    .line 5844
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    const-string v8, "ImageWidth"

    .line 5845
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 5844
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v0, :cond_5

    .line 5849
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    const-string v8, "ImageLength"

    .line 5850
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 5849
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v7, 0x6

    if-eqz v4, :cond_9

    const/4 v8, 0x1

    .line 5857
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_8

    const/16 v10, 0xb4

    if-eq v9, v10, :cond_7

    const/16 v10, 0x10e

    if-eq v9, v10, :cond_6

    goto :goto_2

    :cond_6
    const/16 v8, 0x8

    goto :goto_2

    :cond_7
    const/4 v8, 0x3

    goto :goto_2

    :cond_8
    const/4 v8, 0x6

    .line 5869
    :goto_2
    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v5

    const-string v10, "Orientation"

    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5870
    invoke-static {v8, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 5869
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 5874
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5875
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v7, :cond_d

    int-to-long v8, v2

    .line 5879
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    new-array v8, v7, [B

    .line 5881
    invoke-virtual {p1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v9

    if-ne v9, v7, :cond_c

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, -0x6

    .line 5886
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 5891
    new-array v7, v3, [B

    .line 5892
    invoke-virtual {p1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result p1

    if-ne p1, v3, :cond_a

    .line 5896
    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 5897
    invoke-direct {p0, v7, v5}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_3

    .line 5893
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read exif"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5887
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5882
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5877
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid exif length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5900
    :cond_e
    :goto_3
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "ExifInterface"

    .line 5901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Heif meta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rotation "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5904
    :cond_f
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :cond_10
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 5905
    throw p1
.end method

.method private getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 5500
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_0

    .line 5501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getJpegAttributes starting with: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    .line 5505
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mark(I)V

    .line 5508
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5513
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    const-string v6, "Invalid marker: "

    const/4 v7, -0x1

    if-ne v5, v7, :cond_11

    .line 5517
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v8

    const/16 v9, -0x28

    if-ne v8, v9, :cond_10

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 5522
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v8

    if-ne v8, v7, :cond_f

    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 5527
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v9

    .line 5528
    sget-boolean v10, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 5529
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found JPEG segment indicator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v12, v9, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/2addr v6, v8

    const/16 v11, -0x27

    if-eq v9, v11, :cond_e

    const/16 v11, -0x26

    if-ne v9, v11, :cond_2

    goto/16 :goto_6

    .line 5538
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    sub-int/2addr v11, v5

    add-int/2addr v6, v5

    if-eqz v10, :cond_3

    .line 5541
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JPEG segment: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v12, v9, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " (length: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v11, 0x2

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v10, "Invalid length"

    if-ltz v11, :cond_d

    const/16 v12, -0x1f

    if-eq v9, v12, :cond_8

    const/4 v12, -0x2

    if-eq v9, v12, :cond_5

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    packed-switch v9, :pswitch_data_3

    :goto_1
    move-object/from16 v20, v4

    goto/16 :goto_5

    .line 5607
    :pswitch_0
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v9

    if-ne v9, v8, :cond_4

    .line 5610
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    .line 5611
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v12, v9

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5610
    invoke-static {v12, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    const-string v12, "ImageLength"

    invoke-virtual {v8, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5612
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    .line 5613
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v12, v9

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5612
    invoke-static {v12, v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    const-string v12, "ImageWidth"

    invoke-virtual {v8, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x5

    goto :goto_1

    .line 5608
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid SOFx"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5582
    :cond_5
    new-array v9, v11, [B

    .line 5583
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v12

    if-ne v12, v11, :cond_7

    const-string v11, "UserComment"

    .line 5587
    invoke-virtual {v0, v11}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    .line 5588
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v12, v8

    new-instance v12, Ljava/lang/String;

    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v12, v9, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object/from16 v20, v4

    goto/16 :goto_4

    .line 5584
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid exif"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5550
    :cond_8
    new-array v9, v11, [B

    .line 5551
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    add-int v12, v6, v11

    .line 5555
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v9, v13}, Landroidx/exifinterface/media/ExifInterface;->startsWith([B[B)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 5556
    array-length v8, v13

    invoke-static {v9, v8, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    add-int v6, p2, v6

    .line 5559
    array-length v9, v13

    add-int/2addr v6, v9

    iput v6, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 5562
    invoke-direct {v0, v8, v2}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 5564
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v6, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_2

    .line 5565
    :cond_9
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v9, v13}, Landroidx/exifinterface/media/ExifInterface;->startsWith([B[B)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 5567
    array-length v14, v13

    add-int/2addr v6, v14

    .line 5568
    array-length v13, v13

    invoke-static {v9, v13, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    const-string v11, "Xmp"

    .line 5572
    invoke-virtual {v0, v11}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a

    .line 5573
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v3

    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/16 v16, 0x1

    array-length v14, v9

    move-object/from16 v20, v4

    int-to-long v3, v6

    move v6, v14

    move-object v14, v15

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v6

    move-wide/from16 v17, v3

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v19}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    invoke-virtual {v13, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5575
    iput-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    goto :goto_3

    :cond_a
    :goto_2
    move-object/from16 v20, v4

    :goto_3
    move v6, v12

    :goto_4
    const/4 v11, 0x0

    :goto_5
    if-ltz v11, :cond_c

    .line 5625
    invoke-virtual {v1, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v3

    if-ne v3, v11, :cond_b

    add-int/2addr v6, v11

    move-object/from16 v4, v20

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 5626
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid JPEG segment"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5623
    :cond_c
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5545
    :cond_d
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5631
    :cond_e
    :goto_6
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    .line 5524
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid marker:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v8, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5518
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v5, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5514
    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v5, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 5260
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    .line 5262
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 5263
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 5264
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->isJpegFormat([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 5266
    :cond_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRafFormat([B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    return p1

    .line 5268
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isHeifFormat([B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    return p1

    .line 5270
    :cond_2
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isOrfFormat([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    return p1

    .line 5272
    :cond_3
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRw2Format([B)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xa

    return p1

    .line 5274
    :cond_4
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isPngFormat([B)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xd

    return p1

    .line 5276
    :cond_5
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isWebpFormat([B)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xe

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5931
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5936
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 5937
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 5940
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5942
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5946
    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v2, p1

    new-array v2, v2, [B

    .line 5947
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v3, 0x0

    .line 5948
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5949
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v4, v3

    new-array v4, v4, [B

    .line 5950
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5952
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    .line 5953
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 5954
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    .line 5955
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 5959
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5962
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 5963
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5964
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 5965
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 5968
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5970
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5977
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 5978
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 5980
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 5981
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 5986
    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-le v2, v4, :cond_6

    const/4 v2, 0x3

    aget v4, p1, v2

    aget v5, p1, v0

    if-le v4, v5, :cond_6

    .line 5988
    aget v1, p1, v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 5989
    aget v2, p1, v2

    aget p1, p1, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    add-int/2addr v1, v2

    sub-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 5996
    :cond_4
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5997
    invoke-static {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 5998
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5999
    invoke-static {v2, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 6001
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6002
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5982
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid aspect frame values. frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5983
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExifInterface"

    .line 5982
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6041
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPngAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 6046
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mark(I)V

    .line 6051
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6056
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 6057
    array-length v1, v1

    add-int/2addr v1, v0

    .line 6071
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v1, v3

    new-array v4, v3, [B

    .line 6075
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_7

    add-int/2addr v1, v3

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    .line 6082
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 6083
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6087
    :cond_2
    :goto_1
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 6090
    :cond_3
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6092
    new-array v3, v2, [B

    .line 6093
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v2, :cond_5

    .line 6099
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result p1

    .line 6101
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 6102
    invoke-virtual {v2, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 6103
    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 6104
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v5, v4

    if-ne v5, p1, :cond_4

    .line 6110
    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6111
    invoke-direct {p0, v3, v0}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 6112
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 6114
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    :goto_2
    return-void

    .line 6105
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", calculated CRC value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6107
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6094
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6095
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterface;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    add-int/lit8 v2, v2, 0x4

    .line 6118
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 6076
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6125
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt PNG file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5686
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v1, "ExifInterface"

    if-eqz v0, :cond_0

    .line 5687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRafAttributes starting with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .line 5691
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mark(I)V

    const/16 v3, 0x54

    .line 5693
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v3, 0x4

    new-array v4, v3, [B

    new-array v5, v3, [B

    new-array v3, v3, [B

    .line 5697
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5698
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5699
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5700
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 5701
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 5702
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 5704
    new-array v5, v5, [B

    int-to-long v6, v4

    .line 5705
    invoke-virtual {p1, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5706
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5709
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v6, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    const/4 v5, 0x5

    .line 5710
    invoke-direct {p0, v6, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    int-to-long v3, v3

    .line 5713
    invoke-virtual {p1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5716
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5717
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    if-eqz v0, :cond_1

    .line 5719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numberOfDirectoryEntry: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    .line 5725
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 5726
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    .line 5727
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget v6, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    if-ne v4, v6, :cond_3

    .line 5728
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 5729
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 5730
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5731
    invoke-static {v0, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5732
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5733
    invoke-static {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 5734
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v2

    const-string v6, "ImageLength"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5735
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v3, v2

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5736
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 5737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated to length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 5741
    :cond_3
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5636
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    .line 5639
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5642
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    .line 5643
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    .line 5644
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5647
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    .line 5649
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 5652
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 5653
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 5656
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5658
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-wide/16 v2, 0x6

    .line 5661
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/16 p1, 0x9

    .line 5664
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5667
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 5668
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 5670
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6012
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRw2Attributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6016
    :cond_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 6019
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "JpgFromRaw"

    .line 6020
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_1

    .line 6022
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 6024
    iget-wide v2, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    long-to-int p1, v2

    const/4 v2, 0x5

    invoke-direct {p0, v1, p1, v2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 6029
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    const-string v0, "ISO"

    .line 6030
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6031
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    .line 6032
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 6035
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5909
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 5911
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 5912
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5914
    array-length p1, v0

    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    const/4 p1, 0x0

    .line 5915
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    return-void
.end method

.method private getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6133
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 6138
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mark(I)V

    .line 6142
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6144
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 6147
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 6149
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    :goto_0
    const/4 v3, 0x4

    :try_start_0
    new-array v4, v3, [B

    .line 6164
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_7

    add-int/2addr v2, v3

    .line 6170
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    add-int/2addr v2, v3

    .line 6173
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6175
    new-array v1, v5, [B

    .line 6176
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result p1

    if-ne p1, v5, :cond_1

    .line 6181
    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    .line 6182
    invoke-direct {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 6184
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 6177
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6178
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterface;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6188
    :cond_2
    rem-int/lit8 v3, v5, 0x2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int v3, v2, v5

    if-ne v3, v1, :cond_4

    :goto_1
    return-void

    :cond_4
    const-string v4, "Encountered WebP file with invalid chunk size"

    if-gt v3, v1, :cond_6

    .line 6199
    :try_start_1
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    add-int/2addr v2, v3

    goto :goto_0

    .line 6201
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6195
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6165
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6209
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt WebP file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 7532
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 7581
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v1, :cond_9

    .line 7533
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 7534
    aget-object v0, p0, v2

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 7535
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_0

    return-object v0

    .line 7538
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_8

    .line 7539
    aget-object v1, p0, v3

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 7541
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7542
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    goto :goto_2

    .line 7543
    :cond_2
    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 7545
    :goto_2
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_4

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 7546
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7547
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, -0x1

    :goto_3
    if-ne v2, v6, :cond_5

    if-ne v1, v6, :cond_5

    .line 7550
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    if-ne v2, v6, :cond_6

    .line 7553
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-ne v1, v6, :cond_7

    .line 7557
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    const-string v0, "/"

    .line 7564
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_f

    .line 7565
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 7566
    array-length v0, p0

    if-ne v0, v4, :cond_e

    .line 7568
    :try_start_0
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    .line 7569
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    const/16 p0, 0xa

    cmp-long v4, v0, v8

    if-ltz v4, :cond_d

    cmp-long v4, v2, v8

    if-gez v4, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x5

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v0, v8

    if-gtz v6, :cond_c

    cmp-long v0, v2, v8

    if-lez v0, :cond_b

    goto :goto_5

    .line 7576
    :cond_b
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 7574
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 7571
    :cond_d
    :goto_6
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7581
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 7584
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7585
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x4

    cmp-long v4, v1, v8

    if-ltz v4, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v10, 0xffff

    cmp-long v4, v1, v10

    if-gtz v4, :cond_10

    .line 7586
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 7588
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-gez v2, :cond_11

    .line 7589
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 7591
    :cond_11
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 7596
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 7597
    new-instance p0, Landroid/util/Pair;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 7601
    :catch_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 7042
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 7044
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 7047
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7048
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 7050
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 7052
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v0, v1

    .line 7055
    :cond_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->getLength()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez v0, :cond_2

    if-lez p2, :cond_2

    const/4 v1, 0x1

    .line 7058
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 7059
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_1

    .line 7063
    new-array v1, p2, [B

    int-to-long v2, v0

    .line 7064
    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skip(J)J

    .line 7065
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 7066
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 7068
    :cond_1
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 7069
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 7071
    :cond_2
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 7072
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting thumbnail attributes with offset: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExifInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "StripOffsets"

    .line 7082
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v4, "StripByteCounts"

    .line 7084
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    .line 7087
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7088
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v3

    .line 7089
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7090
    invoke-virtual {v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v2

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_a

    .line 7092
    array-length v5, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v2, :cond_9

    .line 7096
    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 7100
    :cond_1
    array-length v5, v3

    array-length v6, v2

    if-eq v5, v6, :cond_2

    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 7101
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-wide/16 v5, 0x0

    .line 7106
    array-length v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_3

    aget-wide v10, v2, v9

    add-long/2addr v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    long-to-int v6, v5

    .line 7112
    new-array v5, v6, [B

    const/4 v7, 0x1

    .line 7116
    iput-boolean v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v7, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v7, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 7117
    :goto_1
    array-length v12, v3

    if-ge v9, v12, :cond_8

    .line 7118
    aget-wide v12, v3, v9

    long-to-int v13, v12

    .line 7119
    aget-wide v14, v2, v9

    long-to-int v12, v14

    .line 7123
    array-length v14, v3

    sub-int/2addr v14, v7

    if-ge v9, v14, :cond_4

    add-int v14, v13, v12

    int-to-long v14, v14

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, v3, v16

    cmp-long v18, v14, v16

    if-eqz v18, :cond_4

    .line 7125
    iput-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    :cond_4
    sub-int/2addr v13, v10

    if-gez v13, :cond_5

    const-string v1, "Invalid strip offset value"

    .line 7131
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    int-to-long v14, v13

    .line 7134
    invoke-virtual {v1, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skip(J)J

    move-result-wide v16

    const-string v7, " bytes."

    cmp-long v18, v16, v14

    if-eqz v18, :cond_6

    .line 7135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to skip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    add-int/2addr v10, v13

    .line 7140
    new-array v13, v12, [B

    .line 7141
    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    if-eq v14, v12, :cond_7

    .line 7142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    add-int/2addr v10, v12

    .line 7148
    invoke-static {v13, v8, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v12

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x1

    goto :goto_1

    .line 7152
    :cond_8
    iput-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 7154
    iget-boolean v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v1, :cond_b

    .line 7155
    aget-wide v1, v3, v8

    long-to-int v2, v1

    iput v2, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 7156
    iput v6, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    goto :goto_4

    :cond_9
    :goto_2
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 7097
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :goto_3
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 7093
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    return-void
.end method

.method private initForFilename(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "filename cannot be null"

    .line 5200
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5203
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 5204
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 5206
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5207
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5208
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 5210
    :cond_0
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 5212
    :goto_0
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5214
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 5215
    throw p1
.end method

.method private static isExifDataOnly(Ljava/io/BufferedInputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5475
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 5476
    array-length v0, v0

    new-array v0, v0, [B

    .line 5477
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 5478
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 5479
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5480
    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isHeifFormat([B)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5315
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5317
    :try_start_1
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x4

    new-array v5, v1, [B

    .line 5319
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5321
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    .line 5376
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :cond_0
    const-wide/16 v5, 0x10

    const-wide/16 v7, 0x8

    const-wide/16 v9, 0x1

    cmp-long v11, v3, v9

    if-nez v11, :cond_1

    .line 5329
    :try_start_2
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v11, v3, v5

    if-gez v11, :cond_2

    .line 5376
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :cond_1
    move-wide v5, v7

    .line 5338
    :cond_2
    :try_start_3
    array-length v11, p1

    int-to-long v11, v11

    cmp-long v13, v3, v11

    if-lez v13, :cond_3

    .line 5339
    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v3, p1

    :cond_3
    sub-long/2addr v3, v5

    cmp-long p1, v3, v7

    if-gez p1, :cond_4

    .line 5376
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :cond_4
    :try_start_4
    new-array p1, v1, [B

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const-wide/16 v11, 0x4

    .line 5353
    div-long v11, v3, v11

    cmp-long v13, v5, v11

    if-gez v13, :cond_a

    .line 5354
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v11, v1, :cond_5

    .line 5376
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :cond_5
    cmp-long v11, v5, v9

    if-nez v11, :cond_6

    goto :goto_2

    .line 5361
    :cond_6
    :try_start_5
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_7

    const/4 v7, 0x1

    goto :goto_1

    .line 5363
    :cond_7
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_8

    const/4 v8, 0x1

    :cond_8
    :goto_1
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 5376
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return v12

    :cond_9
    :goto_2
    add-long/2addr v5, v9

    goto :goto_0

    :cond_a
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 5371
    :goto_3
    :try_start_6
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ExifInterface"

    const-string v3, "Exception parsing HEIF file type box."

    .line 5372
    invoke-static {v2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_b
    if-eqz v1, :cond_c

    .line 5376
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_c
    :goto_4
    return v0

    :goto_5
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5379
    :cond_d
    throw p1
.end method

.method private static isJpegFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5288
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5289
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isOrfFormat([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5395
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5398
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5400
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5402
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x4f52

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5352

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 5408
    :cond_1
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5410
    :cond_2
    throw p1

    :catch_1
    nop

    :goto_1
    if-eqz v1, :cond_3

    .line 5408
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_3
    return v0
.end method

.method private isPngFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5446
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5447
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRafFormat([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5303
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "FUJIFILMCCD-RAW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5304
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 5305
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRw2Format([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5422
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5425
    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5427
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5429
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x55

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 5435
    :cond_0
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 5437
    :cond_1
    throw p1

    :catch_1
    nop

    :goto_1
    if-eqz v1, :cond_2

    .line 5435
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_2
    return v0
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3

    .line 4605
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 4607
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface$OsApi21Impl;->lseek(Ljava/io/FileDescriptor;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    nop

    .line 4610
    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ExifInterface"

    const-string v0, "The file descriptor for the given input is not seekable"

    .line 4611
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BitsPerSample"

    .line 7164
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    .line 7166
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 7168
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 7173
    :cond_0
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    const-string v2, "PhotometricInterpretation"

    .line 7175
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_3

    .line 7177
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7178
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 7179
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 7180
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    .line 7182
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v3

    .line 7190
    :cond_3
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "ExifInterface"

    const-string v0, "Unsupported data type value"

    .line 7191
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private isSupportedFormatForSavingAttributes()Z
    .locals 2

    .line 8071
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedMimeType(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "mimeType shouldn\'t be null"

    .line 4033
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4036
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "image/x-canon-cr2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "image/x-nikon-nrw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "image/x-nikon-nef"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "image/x-olympus-orf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "image/x-pentax-pef"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "image/png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "image/x-panasonic-rw2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "image/x-adobe-dng"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "image/webp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_9
    const-string v1, "image/jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_a
    const-string v1, "image/heif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_b
    const-string v1, "image/heic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_c
    const-string v1, "image/x-sony-arw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_d
    const-string v1, "image/x-samsung-srw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_e
    const-string v1, "image/x-fuji-raf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x6fc6acff -> :sswitch_e
        -0x617ac9e4 -> :sswitch_d
        -0x5f082c57 -> :sswitch_c
        -0x58a8e8f5 -> :sswitch_b
        -0x58a8e8f2 -> :sswitch_a
        -0x58a7d764 -> :sswitch_9
        -0x58a21830 -> :sswitch_8
        -0x54d6098a -> :sswitch_7
        -0x3ab85cc1 -> :sswitch_6
        -0x34686c8b -> :sswitch_5
        -0x13d592a1 -> :sswitch_4
        0x52243d4a -> :sswitch_3
        0x7d1e84e8 -> :sswitch_2
        0x7d1e868c -> :sswitch_1
        0x7dd6e2bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 7199
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v1, "ImageWidth"

    .line 7200
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7203
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7204
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isWebpFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5460
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5461
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5465
    :goto_1
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 5466
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v3, v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4

    const-string v0, "inputstream shouldn\'t be null"

    .line 4518
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4522
    :goto_0
    :try_start_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4523
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4527
    :cond_0
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v1, :cond_1

    .line 4528
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4529
    move-object p1, v1

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    move-object p1, v1

    .line 4533
    :cond_1
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4535
    iget-boolean p1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez p1, :cond_7

    .line 4536
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 4563
    :pswitch_0
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4596
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4598
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 4599
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    :cond_2
    return-void

    .line 4559
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4596
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4598
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 4599
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    :cond_3
    return-void

    .line 4547
    :pswitch_2
    :try_start_2
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4555
    :pswitch_3
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4596
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4598
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 4599
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    :cond_4
    return-void

    .line 4543
    :pswitch_4
    :try_start_3
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4596
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4598
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 4599
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    :cond_5
    return-void

    .line 4551
    :pswitch_5
    :try_start_4
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4538
    :pswitch_6
    invoke-direct {p0, v1, v0, v0}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4596
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4598
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 4599
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    :cond_6
    return-void

    .line 4574
    :pswitch_7
    :try_start_5
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4582
    :cond_7
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4585
    :goto_1
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4586
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4596
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4598
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_9

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 4590
    :try_start_6
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 4591
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4596
    :cond_8
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    if-eqz v0, :cond_9

    .line 4599
    :goto_2
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    :cond_9
    return-void

    .line 4596
    :goto_3
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4598
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 4599
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    .line 4601
    :cond_a
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 5133
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 5134
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 5136
    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 5140
    :try_start_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 5142
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    if-eqz p2, :cond_4

    const/4 p0, 0x1

    .line 5144
    invoke-virtual {p2, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 5145
    invoke-virtual {p2, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x4

    .line 5146
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "+"

    .line 5147
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v9, "-"

    if-nez v8, :cond_2

    :try_start_1
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    const-string v8, ":"

    .line 5148
    invoke-virtual {p2, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0xe

    if-gt v5, p2, :cond_4

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    .line 5150
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    mul-int v5, v5, p0

    int-to-long v1, v5

    add-long/2addr v3, v1

    :cond_4
    if-eqz p1, :cond_6

    .line 5156
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    :goto_1
    const-wide/16 v1, 0x3e8

    cmp-long p2, p0, v1

    if-lez p2, :cond_5

    const-wide/16 v1, 0xa

    .line 5158
    div-long/2addr p0, v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_5
    add-long/2addr v3, p0

    .line 5165
    :catch_0
    :cond_6
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_1
    :cond_7
    :goto_2
    return-object v0
.end method

.method private parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6712
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6714
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6717
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 6718
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6719
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid start code: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6723
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    if-ge v0, p2, :cond_4

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_3

    .line 6729
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 6730
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t jump to first Ifd: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 6725
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid first Ifd offset: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private printAttributes()V
    .locals 7

    const/4 v0, 0x0

    .line 4621
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of tag group["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4624
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagType: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagValue: \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4626
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4625
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6692
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    const-string v1, "ExifInterface"

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_1

    .line 6700
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "readExifSegment: Byte Align MM"

    .line 6701
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6703
    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 6705
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6695
    :cond_2
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "readExifSegment: Byte Align II"

    .line 6696
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6698
    :cond_3
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method private readExifSegment([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6652
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 6656
    array-length p1, p1

    invoke-direct {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 6659
    invoke-direct {p0, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 6739
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    iget v4, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6741
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v3, v5, :cond_0

    return-void

    .line 6746
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 6747
    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v6, "ExifInterface"

    if-eqz v5, :cond_1

    .line 6748
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfDirectoryEntry: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6750
    :cond_1
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    mul-int/lit8 v7, v3, 0xc

    add-int/2addr v5, v7

    iget v7, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v5, v7, :cond_2b

    if-gtz v3, :cond_2

    goto/16 :goto_12

    :cond_2
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x5

    if-ge v7, v3, :cond_26

    .line 6758
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    .line 6759
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v14

    .line 6760
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v15

    .line 6762
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v18, 0x4

    add-long v9, v9, v18

    .line 6765
    sget-object v20, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v12, v20, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6767
    sget-boolean v12, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const/4 v11, 0x3

    if-eqz v12, :cond_4

    new-array v8, v8, [Ljava/lang/Object;

    .line 6769
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v8, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v20, 0x1

    aput-object v23, v8, v20

    if-eqz v4, :cond_3

    .line 6770
    iget-object v5, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/16 v22, 0x2

    aput-object v5, v8, v22

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v21, 0x4

    aput-object v5, v8, v21

    const-string v5, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 6768
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v5, 0x7

    if-nez v4, :cond_6

    if-eqz v12, :cond_5

    .line 6777
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move-object v11, v6

    move/from16 v25, v7

    goto/16 :goto_5

    :cond_6
    if-lez v14, :cond_c

    .line 6779
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v11, v8

    if-lt v14, v11, :cond_7

    goto :goto_4

    .line 6783
    :cond_7
    invoke-virtual {v4, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;->isFormatCompatible(I)Z

    move-result v11

    if-nez v11, :cond_8

    if-eqz v12, :cond_5

    .line 6785
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip the tag entry since data format ("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v14

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") is unexpected for tag: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    if-ne v14, v5, :cond_9

    .line 6791
    iget v14, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    :cond_9
    move-object v11, v6

    int-to-long v5, v15

    .line 6793
    aget v8, v8, v14

    move/from16 v25, v7

    int-to-long v7, v8

    mul-long v5, v5, v7

    const-wide/16 v7, 0x0

    cmp-long v26, v5, v7

    if-ltz v26, :cond_b

    const-wide/32 v7, 0x7fffffff

    cmp-long v26, v5, v7

    if-lez v26, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    :goto_3
    if-eqz v12, :cond_e

    .line 6796
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    :goto_4
    move-object v11, v6

    move/from16 v25, v7

    if-eqz v12, :cond_d

    .line 6781
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_5
    const-wide/16 v5, 0x0

    :cond_e
    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_f

    .line 6804
    invoke-virtual {v1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move/from16 v26, v3

    :goto_8
    const/4 v13, 0x2

    goto/16 :goto_11

    :cond_f
    const-string v7, "Compression"

    cmp-long v8, v5, v18

    if-lez v8, :cond_15

    .line 6811
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    move/from16 v26, v3

    if-eqz v12, :cond_10

    .line 6813
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v14

    const-string v14, "seek to data offset: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    move/from16 v18, v14

    .line 6815
    :goto_9
    iget v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v14, 0x7

    if-ne v3, v14, :cond_12

    .line 6816
    iget-object v3, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v14, "MakerNote"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 6818
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    goto :goto_a

    :cond_11
    const/4 v3, 0x6

    if-ne v2, v3, :cond_12

    .line 6819
    iget-object v14, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v3, "ThumbnailImage"

    .line 6820
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 6822
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 6823
    iput v15, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 6825
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v14, 0x6

    .line 6826
    invoke-static {v14, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 6827
    iget v14, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v19, v15

    int-to-long v14, v14

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6828
    invoke-static {v14, v15, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 6829
    iget v14, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v14, v14

    move-object/from16 v24, v4

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6830
    invoke-static {v14, v15, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 6832
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    invoke-virtual {v14, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6833
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    const-string v14, "JPEGInterchangeFormat"

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6835
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v15

    const-string v3, "JPEGInterchangeFormatLength"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    :goto_a
    move-object/from16 v24, v4

    move/from16 v19, v15

    :goto_b
    int-to-long v2, v8

    add-long v14, v2, v5

    .line 6839
    iget v4, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    move-wide/from16 v27, v5

    int-to-long v4, v4

    cmp-long v6, v14, v4

    if-gtz v6, :cond_13

    .line 6840
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_c

    :cond_13
    if-eqz v12, :cond_14

    .line 6844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6846
    :cond_14
    invoke-virtual {v1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_8

    :cond_15
    move/from16 v26, v3

    move-object/from16 v24, v4

    move-wide/from16 v27, v5

    move/from16 v18, v14

    move/from16 v19, v15

    .line 6852
    :goto_c
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v12, :cond_16

    .line 6854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextIfdType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v27

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_16
    move-wide/from16 v5, v27

    :goto_d
    const/16 v3, 0x8

    if-eqz v2, :cond_1f

    const-wide/16 v4, -0x1

    move/from16 v14, v18

    const/4 v6, 0x3

    if-eq v14, v6, :cond_1a

    const/4 v6, 0x4

    if-eq v14, v6, :cond_19

    if-eq v14, v3, :cond_18

    const/16 v3, 0x9

    if-eq v14, v3, :cond_17

    const/16 v3, 0xd

    if-eq v14, v3, :cond_17

    goto :goto_f

    .line 6875
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    goto :goto_e

    .line 6866
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    goto :goto_e

    .line 6870
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    goto :goto_f

    .line 6862
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    :goto_e
    int-to-long v4, v3

    :goto_f
    const/4 v13, 0x2

    if-eqz v12, :cond_1b

    new-array v3, v13, [Ljava/lang/Object;

    .line 6884
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    move-object/from16 v8, v24

    iget-object v6, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const-string v6, "Offset: %d, tagName: %s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1d

    .line 6890
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_1d

    .line 6891
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    long-to-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 6892
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 6893
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_10

    :cond_1c
    if-eqz v12, :cond_1e

    .line 6896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1d
    if-eqz v12, :cond_1e

    .line 6902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6906
    :cond_1e
    :goto_10
    invoke-virtual {v1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_11

    :cond_1f
    move/from16 v14, v18

    move-object/from16 v8, v24

    const/4 v13, 0x2

    .line 6910
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    iget v4, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v2, v4

    long-to-int v4, v5

    .line 6911
    new-array v4, v4, [B

    .line 6912
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6913
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-object v12, v4

    int-to-long v3, v2

    move/from16 v2, v19

    move-object v15, v5

    move/from16 v16, v14

    move/from16 v17, v2

    move-wide/from16 v18, v3

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 6915
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    iget-object v3, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6920
    iget-object v2, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v3, "DNGVersion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x3

    .line 6921
    iput v2, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 6927
    :cond_20
    iget-object v2, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v3, "Make"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v3, "Model"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6928
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PENTAX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_22
    iget-object v2, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 6929
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6930
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_24

    :cond_23
    const/16 v2, 0x8

    .line 6931
    iput v2, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 6935
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v9

    if-eqz v4, :cond_25

    .line 6936
    invoke-virtual {v1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_25
    :goto_11
    add-int/lit8 v7, v25, 0x1

    int-to-short v7, v7

    move/from16 v2, p2

    move-object v6, v11

    move/from16 v3, v26

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_26
    move-object v11, v6

    .line 6940
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v2, v3, :cond_2b

    .line 6941
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 6942
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_27

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 6943
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "nextIfdOffset: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v9, v4, v6

    if-lez v9, :cond_2a

    .line 6948
    iget v6, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-ge v2, v6, :cond_2a

    .line 6949
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 6950
    invoke-virtual {v1, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 6951
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 6953
    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_12

    .line 6954
    :cond_28
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 6955
    invoke-direct {v0, v1, v8}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_12

    :cond_29
    if-eqz v3, :cond_2b

    .line 6959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_2a
    if-eqz v3, :cond_2b

    .line 6965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_12
    return-void
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 4507
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4508
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6981
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 6982
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6983
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 6984
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 6988
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 6989
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6990
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "JPEGInterchangeFormatLength"

    .line 6991
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 6994
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6995
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 6996
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6997
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    int-to-long v2, v1

    .line 7000
    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 7001
    new-array v0, v0, [B

    .line 7002
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 7003
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1, v1, p2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6217
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveJpegAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6221
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6222
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6224
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const-string v1, "Invalid marker"

    const/4 v2, -0x1

    if-ne p2, v2, :cond_e

    .line 6227
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6228
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const/16 v3, -0x28

    if-ne p2, v3, :cond_d

    .line 6231
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/4 p2, 0x0

    const-string v3, "Xmp"

    .line 6237
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    if-eqz v4, :cond_1

    .line 6238
    iget-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p2, p2, v5

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6242
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 v4, -0x1f

    .line 6243
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6244
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    if-eqz p2, :cond_2

    .line 6248
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 p2, 0x1000

    new-array v3, p2, [B

    .line 6254
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    if-ne v6, v2, :cond_c

    .line 6258
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    const/16 v7, -0x27

    if-eq v6, v7, :cond_b

    const/16 v7, -0x26

    if-eq v6, v7, :cond_b

    const-string v7, "Invalid length"

    if-eq v6, v4, :cond_5

    .line 6304
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6305
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6306
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .line 6307
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_4

    :goto_1
    if-lez v6, :cond_3

    .line 6314
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 6313
    invoke-virtual {v0, v3, v5, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_3

    .line 6315
    invoke-virtual {p1, v3, v5, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v6, v7

    goto :goto_1

    .line 6310
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6261
    :cond_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_a

    const/4 v9, 0x6

    new-array v10, v9, [B

    if-lt v8, v9, :cond_8

    .line 6267
    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->read([B)I

    move-result v11

    if-ne v11, v9, :cond_7

    .line 6270
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_8

    add-int/lit8 v8, v8, -0x6

    .line 6272
    invoke-virtual {v0, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v6

    if-ne v6, v8, :cond_6

    goto :goto_0

    .line 6273
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6268
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6279
    :cond_8
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6280
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v6, v8, 0x2

    .line 6281
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    if-lt v8, v9, :cond_9

    add-int/lit8 v8, v8, -0x6

    .line 6284
    invoke-virtual {p1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_9
    :goto_2
    if-lez v8, :cond_3

    .line 6288
    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 6287
    invoke-virtual {v0, v3, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_3

    .line 6289
    invoke-virtual {p1, v3, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v8, v6

    goto :goto_2

    .line 6263
    :cond_a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6296
    :cond_b
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6297
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 6299
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    .line 6256
    :cond_c
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6229
    :cond_d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6225
    :cond_e
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6326
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePngAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6330
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6331
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6335
    sget-object p2, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v1, p2

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6343
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    const/4 v2, 0x4

    if-nez v1, :cond_1

    .line 6345
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 6346
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    add-int/2addr p2, v2

    add-int/2addr p2, v2

    .line 6347
    invoke-static {v0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 6351
    :cond_1
    array-length p2, p2

    sub-int/2addr v1, p2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v2

    .line 6354
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6357
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    add-int/2addr p2, v2

    add-int/2addr p2, v2

    .line 6358
    invoke-virtual {v0, p2}, Ljava/io/DataInputStream;->skipBytes(I)I

    :goto_0
    const/4 p2, 0x0

    .line 6367
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6368
    :try_start_1
    new-instance p2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p2, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6373
    invoke-direct {p0, p2}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 6374
    iget-object p2, p2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast p2, Ljava/io/ByteArrayOutputStream;

    .line 6375
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 6378
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6381
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 6382
    array-length v4, p2

    sub-int/2addr v4, v2

    invoke-virtual {v3, p2, v2, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 6383
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int p2, v2

    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6385
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 6389
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    :catchall_0
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 6385
    :goto_1
    invoke-static {p2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 6386
    throw p1
.end method

.method private saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 6426
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 6427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveWebpAttributes starting with (inputStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", outputStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExifInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6430
    :cond_0
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v0, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 6432
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v4, v2, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6436
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v5, v2

    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6438
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v6, v5

    const/4 v7, 0x4

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v6, 0x0

    .line 6443
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6444
    :try_start_1
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v9, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 6448
    iget v10, v1, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    if-eqz v10, :cond_1

    .line 6451
    array-length v0, v2

    add-int/2addr v0, v7

    array-length v2, v5

    add-int/2addr v0, v2

    sub-int/2addr v10, v0

    sub-int/2addr v10, v7

    sub-int/2addr v10, v7

    .line 6453
    invoke-static {v3, v9, v10}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6458
    invoke-virtual {v3, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 6459
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 6460
    invoke-virtual {v3, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 6463
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    goto/16 :goto_7

    :cond_1
    new-array v2, v7, [B

    .line 6467
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v7, :cond_10

    .line 6472
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    const/16 v11, 0x8

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_6

    .line 6474
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 6476
    rem-int/lit8 v10, v2, 0x2

    if-ne v10, v12, :cond_2

    add-int/lit8 v10, v2, 0x1

    goto :goto_0

    :cond_2
    move v10, v2

    :goto_0
    new-array v10, v10, [B

    .line 6477
    invoke-virtual {v3, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 6480
    aget-byte v14, v10, v13

    or-int/2addr v11, v14

    int-to-byte v11, v11

    aput-byte v11, v10, v13

    .line 6483
    aget-byte v11, v10, v13

    shr-int/2addr v11, v12

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 6486
    :goto_1
    invoke-virtual {v9, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6487
    invoke-virtual {v9, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6488
    invoke-virtual {v9, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-eqz v12, :cond_5

    .line 6498
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    invoke-direct {v1, v3, v9, v2, v6}, Landroidx/exifinterface/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    :goto_2
    new-array v2, v7, [B

    .line 6504
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 6505
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6507
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    goto/16 :goto_7

    .line 6510
    :cond_4
    invoke-direct {v1, v3, v9, v2}, Landroidx/exifinterface/media/ExifInterface;->copyWebPChunk(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    goto :goto_2

    .line 6514
    :cond_5
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-direct {v1, v3, v9, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 6516
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    goto/16 :goto_7

    .line 6518
    :cond_6
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 6519
    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 6520
    :cond_7
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 6523
    rem-int/lit8 v10, v6, 0x2

    if-ne v10, v12, :cond_8

    add-int/lit8 v10, v6, 0x1

    goto :goto_3

    :cond_8
    move v10, v6

    :goto_3
    const/4 v14, 0x3

    new-array v15, v14, [B

    .line 6535
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16

    const/16 v7, 0x2f

    if-eqz v16, :cond_a

    .line 6536
    invoke-virtual {v3, v15}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    new-array v12, v14, [B

    .line 6540
    invoke-virtual {v3, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v11

    if-ne v11, v14, :cond_9

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 6541
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 6547
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    shl-int/lit8 v12, v11, 0x12

    shr-int/lit8 v12, v12, 0x12

    shl-int/lit8 v14, v11, 0x2

    shr-int/lit8 v14, v14, 0x12

    add-int/lit8 v10, v10, -0xa

    goto :goto_4

    .line 6542
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered error while checking VP8 signature"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6551
    :cond_a
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v2, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 6553
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v11

    if-ne v11, v7, :cond_b

    .line 6560
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    shl-int/lit8 v14, v11, 0x12

    shr-int/lit8 v14, v14, 0x12

    add-int/2addr v14, v12

    shl-int/lit8 v17, v11, 0x4

    shr-int/lit8 v17, v17, 0x12

    add-int/lit8 v12, v17, 0x1

    and-int/lit8 v17, v11, 0x8

    add-int/lit8 v10, v10, -0x5

    move/from16 v19, v14

    move v14, v12

    move/from16 v12, v19

    goto :goto_5

    .line 6555
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered error while checking VP8L signature"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_4
    const/16 v17, 0x0

    .line 6571
    :goto_5
    invoke-virtual {v9, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    const/16 v5, 0xa

    .line 6572
    invoke-virtual {v9, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    new-array v5, v5, [B

    .line 6575
    aget-byte v18, v5, v13

    const/16 v16, 0x8

    or-int/lit8 v7, v18, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v13

    .line 6577
    aget-byte v7, v5, v13

    const/16 v18, 0x4

    shl-int/lit8 v17, v17, 0x4

    or-int v7, v7, v17

    int-to-byte v7, v7

    aput-byte v7, v5, v13

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v14, v14, -0x1

    int-to-byte v7, v12

    aput-byte v7, v5, v18

    const/4 v7, 0x5

    shr-int/lit8 v13, v12, 0x8

    int-to-byte v13, v13

    aput-byte v13, v5, v7

    const/4 v7, 0x6

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    aput-byte v12, v5, v7

    const/4 v7, 0x7

    int-to-byte v12, v14

    aput-byte v12, v5, v7

    shr-int/lit8 v7, v14, 0x8

    int-to-byte v7, v7

    const/16 v12, 0x8

    aput-byte v7, v5, v12

    const/16 v7, 0x9

    shr-int/lit8 v12, v14, 0x10

    int-to-byte v12, v12

    aput-byte v12, v5, v7

    .line 6587
    invoke-virtual {v9, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6590
    invoke-virtual {v9, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6591
    invoke-virtual {v9, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6592
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6593
    invoke-virtual {v9, v15}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6594
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-virtual {v9, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6595
    invoke-virtual {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_6

    .line 6596
    :cond_d
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x2f

    .line 6597
    invoke-virtual {v9, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write(I)V

    .line 6598
    invoke-virtual {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6600
    :cond_e
    :goto_6
    invoke-static {v3, v9, v10}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 6603
    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 6608
    :cond_f
    :goto_7
    invoke-static {v3, v9}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 6611
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    add-int/2addr v0, v3

    invoke-virtual {v4, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 6613
    invoke-virtual {v4, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6614
    invoke-virtual {v8, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6618
    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 6468
    :cond_10
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered invalid length while parsing WebP chunk type"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v6, v8

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v6, v8

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    .line 6616
    :goto_8
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to save WebP file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6618
    :goto_9
    invoke-static {v6}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 6619
    throw v0
.end method

.method private setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7011
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    .line 7014
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x6

    if-eqz v1, :cond_2

    .line 7016
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 7019
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 7024
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7025
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 7032
    :cond_2
    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 7033
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static startsWith([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 8051
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 8054
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 8055
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method private swapBasedOnImageSize(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7929
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 7936
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v2, "ImageLength"

    .line 7937
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7938
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    const-string v4, "ImageWidth"

    .line 7939
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7940
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 7941
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7942
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 7943
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    .line 7954
    :cond_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7955
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 7956
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 7957
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_5

    if-ge v1, v3, :cond_5

    .line 7961
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    .line 7962
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 7963
    aput-object v1, v0, p2

    goto :goto_2

    .line 7950
    :cond_3
    :goto_0
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "Second image does not contain valid size information"

    .line 7951
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7946
    :cond_4
    :goto_1
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "First image does not contain valid size information"

    .line 7947
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void

    .line 7930
    :cond_6
    :goto_3
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "Cannot perform swap since only one image data exists"

    .line 7931
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7260
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 7261
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7263
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 7264
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7265
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 7266
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7267
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 7268
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7269
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 7270
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_5

    .line 7275
    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v7, "Invalid crop size values. cropSize="

    const-string v8, "ExifInterface"

    if-ne p1, v1, :cond_2

    .line 7276
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7277
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz p1, :cond_1

    .line 7278
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 7283
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7284
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 7285
    aget-object p1, p1, v2

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7286
    invoke-static {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    goto :goto_1

    .line 7279
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7280
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7279
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7288
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7289
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 7290
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 7295
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7296
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 7297
    aget p1, p1, v2

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7298
    invoke-static {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 7300
    :goto_1
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7301
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 7291
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7292
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7291
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 7305
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 7306
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7307
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 7308
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_7

    if-le v1, v2, :cond_7

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 7312
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7313
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 7314
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7315
    invoke-static {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 7316
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7317
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 7320
    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private validateImages()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 7215
    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v2, 0x4

    .line 7216
    invoke-direct {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 7217
    invoke-direct {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 7223
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    .line 7224
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7225
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    .line 7226
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 7228
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7229
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v3, v0

    const-string v3, "ImageLength"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7234
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7235
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7236
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v0, v1

    aput-object v3, v0, v2

    .line 7237
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v0, v1

    .line 7242
    :cond_1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ExifInterface"

    const-string v1, "No image meets the size requirements of a thumbnail image."

    .line 7243
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7327
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v3, v2

    new-array v3, v3, [I

    .line 7328
    array-length v2, v2

    new-array v2, v2, [I

    .line 7331
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 7332
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 7335
    :cond_0
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 7336
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 7339
    :goto_1
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 7340
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    .line 7341
    check-cast v9, Ljava/util/Map$Entry;

    .line 7342
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    .line 7343
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7350
    :cond_3
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v7, 0x0

    if-nez v4, :cond_4

    .line 7351
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v9, v9, v5

    iget-object v9, v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7352
    invoke-static {v7, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 7351
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7354
    :cond_4
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x2

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 7355
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7356
    invoke-static {v7, v8, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 7355
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7358
    :cond_5
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v10, 0x3

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 7359
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v5

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v11, v11, v10

    iget-object v11, v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7360
    invoke-static {v7, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 7359
    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7362
    :cond_6
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v11, 0x4

    if-eqz v4, :cond_7

    .line 7363
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7364
    invoke-static {v7, v8, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 7363
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7365
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    int-to-long v13, v13

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7366
    invoke-static {v13, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 7365
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v4, 0x0

    .line 7371
    :goto_3
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v12, v12

    if-ge v4, v12, :cond_a

    .line 7373
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v4

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :cond_8
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 7374
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7375
    invoke-virtual {v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->size()I

    move-result v14

    if-le v14, v11, :cond_8

    add-int/2addr v13, v14

    goto :goto_4

    .line 7380
    :cond_9
    aget v12, v2, v4

    add-int/2addr v12, v13

    aput v12, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    const/16 v4, 0x8

    const/4 v12, 0x0

    .line 7387
    :goto_5
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v13, v13

    if-ge v12, v13, :cond_c

    .line 7388
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    .line 7389
    aput v4, v3, v12

    .line 7390
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    mul-int/lit8 v13, v13, 0xc

    add-int/2addr v13, v9

    add-int/2addr v13, v11

    aget v14, v2, v12

    add-int/2addr v13, v14

    add-int/2addr v4, v13

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 7393
    :cond_c
    iget-boolean v12, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v12, :cond_d

    .line 7395
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v11

    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v13, v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    int-to-long v14, v4

    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7396
    invoke-static {v14, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 7395
    invoke-virtual {v12, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7397
    iput v4, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 7398
    iget v7, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v4, v7

    .line 7402
    :cond_d
    iget v7, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    if-ne v7, v11, :cond_e

    add-int/lit8 v4, v4, 0x8

    .line 7406
    :cond_e
    sget-boolean v7, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    .line 7407
    :goto_6
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_f

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 7409
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v6

    aget v12, v3, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v5

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v9

    aget v12, v2, v7

    .line 7410
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const-string v12, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    .line 7408
    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "ExifInterface"

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 7415
    :cond_f
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 7416
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v7, v7, v5

    iget-object v7, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v8, v3, v5

    int-to-long v12, v8

    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7417
    invoke-static {v12, v13, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 7416
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7419
    :cond_10
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 7420
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v7, v7, v9

    iget-object v7, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v8, v3, v9

    int-to-long v12, v8

    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7421
    invoke-static {v12, v13, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 7420
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7423
    :cond_11
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 7424
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v5

    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v7, v7, v10

    iget-object v7, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v8, v3, v10

    int-to-long v12, v8

    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v13, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7428
    :cond_12
    iget v2, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v7, 0xe

    if-eq v2, v11, :cond_15

    const/16 v8, 0xd

    if-eq v2, v8, :cond_14

    if-eq v2, v7, :cond_13

    goto :goto_7

    .line 7441
    :cond_13
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7442
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_7

    .line 7436
    :cond_14
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 7437
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    goto :goto_7

    .line 7431
    :cond_15
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7432
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7447
    :goto_7
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v8, :cond_16

    const/16 v2, 0x4d4d

    goto :goto_8

    :cond_16
    const/16 v2, 0x4949

    :goto_8
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 7449
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/16 v2, 0x2a

    .line 7450
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    const-wide/16 v12, 0x8

    .line 7451
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const/4 v2, 0x0

    .line 7454
    :goto_9
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v2, v8, :cond_1e

    .line 7455
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 7458
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7461
    aget v8, v3, v2

    add-int/2addr v8, v9

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0xc

    add-int/2addr v8, v10

    add-int/2addr v8, v11

    .line 7462
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_17
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 7464
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v13, v13, v2

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 7465
    iget v13, v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 7466
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7467
    invoke-virtual {v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->size()I

    move-result v14

    .line 7469
    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7470
    iget v13, v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 7471
    iget v13, v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    if-le v14, v11, :cond_18

    int-to-long v12, v8

    .line 7473
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    add-int/2addr v8, v14

    goto :goto_a

    .line 7476
    :cond_18
    iget-object v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-ge v14, v11, :cond_17

    :goto_b
    if-ge v14, v11, :cond_17

    .line 7480
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_19
    if-nez v2, :cond_1a

    .line 7489
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 7490
    aget v8, v3, v11

    int-to-long v12, v8

    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v12, 0x0

    goto :goto_c

    :cond_1a
    const-wide/16 v12, 0x0

    .line 7492
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 7496
    :goto_c
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1b
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 7497
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 7499
    iget-object v14, v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v14, v14

    if-le v14, v11, :cond_1b

    .line 7500
    iget-object v14, v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v10, v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v10, v10

    invoke-virtual {v1, v14, v6, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_d

    :cond_1c
    const-wide/16 v12, 0x0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 7507
    :cond_1e
    iget-boolean v2, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v2, :cond_1f

    .line 7508
    invoke-virtual/range {p0 .. p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 7512
    :cond_1f
    iget v2, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    if-ne v2, v7, :cond_20

    rem-int/lit8 v2, v4, 0x2

    if-ne v2, v5, :cond_20

    .line 7513
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 7517
    :cond_20
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return v4
.end method


# virtual methods
.method public flipHorizontally()V
    .locals 3

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4417
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x2

    .line 4449
    :goto_0
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flipVertically()V
    .locals 3

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4378
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x4

    .line 4410
    :goto_0
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAltitude(D)D
    .locals 7

    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 5054
    invoke-virtual {p0, v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    .line 5055
    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_1

    if-ltz v2, :cond_1

    const/4 p1, 0x1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    int-to-double p1, v3

    mul-double v0, v0, p1

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "tag shouldn\'t be null"

    .line 4098
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4100
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4102
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4103
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 4105
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4107
    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x5

    const-string v3, "ExifInterface"

    if-eq p1, v2, :cond_1

    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    .line 4109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS Timestamp format is not rational. format="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4112
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz p1, :cond_3

    .line 4113
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4117
    aget-object v2, p1, v1

    iget-wide v2, v2, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 4118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget-wide v2, v2, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 4119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    iget-wide v2, v2, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v2, v2

    aget-object p1, p1, v1

    iget-wide v3, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float p1, v3

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 4120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%02d:%02d:%02d"

    .line 4117
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4114
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid GPS Timestamp array. array="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4123
    :cond_4
    :try_start_0
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    return-object v1
.end method

.method public getAttributeBytes(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "tag shouldn\'t be null"

    .line 4946
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4948
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4950
    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 1

    const-string v0, "tag shouldn\'t be null"

    .line 4165
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4167
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    .line 4173
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "tag shouldn\'t be null"

    .line 4141
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4143
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 4149
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getAttributeRange(Ljava/lang/String;)[J
    .locals 4

    const-string v0, "tag shouldn\'t be null"

    .line 4921
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4923
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_1

    .line 4928
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 4930
    iget-wide v2, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length p1, p1

    int-to-long v2, p1

    aput-wide v2, v0, v1

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 4924
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The underlying file has been modified since being parsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDateTime()Ljava/lang/Long;
    .locals 3

    const-string v0, "DateTime"

    .line 5096
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTime"

    .line 5097
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTime"

    .line 5098
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5096
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeDigitized()Ljava/lang/Long;
    .locals 3

    const-string v0, "DateTimeDigitized"

    .line 5111
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTimeDigitized"

    .line 5112
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTimeDigitized"

    .line 5113
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5111
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeOriginal()Ljava/lang/Long;
    .locals 3

    const-string v0, "DateTimeOriginal"

    .line 5126
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTimeOriginal"

    .line 5127
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTimeOriginal"

    .line 5128
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5126
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getGpsDateTime()Ljava/lang/Long;
    .locals 5

    const-string v0, "GPSDateStamp"

    .line 5178
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    .line 5179
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 5180
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 5181
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5182
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5186
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5188
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 5190
    :try_start_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 5192
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    :goto_0
    return-object v2
.end method

.method public getLatLong([F)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4964
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4969
    :cond_0
    aget-wide v2, v0, v1

    double-to-float v2, v2

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 4970
    aget-wide v2, v0, v1

    double-to-float v0, v2

    aput v0, p1, v1

    return v1
.end method

.method public getLatLong()[D
    .locals 12

    const-string v0, "GPSLatitude"

    .line 4983
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSLatitudeRef"

    .line 4984
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSLongitude"

    .line 4985
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLongitudeRef"

    .line 4986
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4990
    :try_start_0
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    .line 4991
    invoke-static {v2, v3}, Landroidx/exifinterface/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v9

    new-array v11, v4, [D

    aput-wide v7, v11, v6

    aput-wide v9, v11, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 4994
    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Latitude/longitude values are not parsable. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v6

    aput-object v1, v8, v5

    aput-object v2, v8, v4

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const-string v0, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    .line 4995
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    .line 4994
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotationDegrees()I
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4482
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x5a

    return v0

    :pswitch_1
    const/16 v0, 0x10e

    return v0

    :pswitch_2
    const/16 v0, 0xb4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getThumbnail()[B
    .locals 2

    .line 4764
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 4765
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .line 4836
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4838
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    .line 4839
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 4842
    :cond_1
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 4845
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v2, v0, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 4848
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v6, v4, 0x3

    aget-byte v7, v5, v6

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v7, v3

    add-int/lit8 v8, v6, 0x1

    aget-byte v8, v5, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v7, v5

    aput v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4852
    :cond_3
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    const-string v4, "ImageLength"

    .line 4853
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4854
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ImageWidth"

    .line 4855
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 4857
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 4858
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 4859
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1

    .line 4843
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 11

    const-string v0, "ExifInterface"

    .line 4776
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 4779
    :cond_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_1

    return-object v1

    .line 4787
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_3

    .line 4789
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4790
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_2
    const-string v3, "Cannot read thumbnail from inputstream without mark/reset support"

    .line 4792
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4822
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto/16 :goto_3

    :catch_0
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_2

    .line 4795
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4796
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4797
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_5

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_5

    .line 4798
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface$OsApi21Impl;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    .line 4799
    :try_start_3
    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$OsApi21Impl;->lseek(Ljava/io/FileDescriptor;II)V

    .line 4800
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto/16 :goto_4

    :catch_1
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v1, v2

    move-object v3, v1

    :goto_1
    if-eqz v1, :cond_9

    .line 4807
    :try_start_4
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    iget v5, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    iget v7, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    add-int/2addr v6, v7

    int-to-long v6, v6

    const-string v8, "Corrupted image"

    cmp-long v9, v4, v6

    if-nez v9, :cond_8

    .line 4812
    :try_start_5
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    new-array v4, v4, [B

    .line 4813
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    iget v6, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    if-ne v5, v6, :cond_7

    .line 4816
    iput-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 4822
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_6

    .line 4824
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_6
    return-object v4

    .line 4814
    :cond_7
    :try_start_6
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4809
    :cond_8
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_2
    move-exception v4

    goto :goto_2

    .line 4804
    :cond_9
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_3
    move-exception v3

    move-object v1, v2

    move-object v4, v3

    move-object v3, v1

    :goto_2
    :try_start_7
    const-string v5, "Encountered exception while getting thumbnail"

    .line 4820
    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4822
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_a

    .line 4824
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_a
    return-object v2

    :catchall_3
    move-exception v0

    :goto_3
    move-object v2, v1

    .line 4822
    :goto_4
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_b

    .line 4824
    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 4826
    :cond_b
    throw v0
.end method

.method public getThumbnailRange()[J
    .locals 4

    .line 4894
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_2

    .line 4899
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4900
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 4903
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    iget v3, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    return-object v0

    :cond_1
    return-object v1

    .line 4895
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 0

    .line 4753
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasThumbnail()Z
    .locals 1

    .line 4744
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isFlipped()Z
    .locals 3

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 4458
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public isThumbnailCompressed()Z
    .locals 3

    .line 4871
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4874
    :cond_0
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetOrientation()V
    .locals 2

    const/4 v0, 0x1

    .line 4340
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orientation"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rotate(I)V
    .locals 6

    .line 4350
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_4

    const/4 v0, 0x1

    const-string v1, "Orientation"

    .line 4354
    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4357
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v3, :cond_1

    .line 4358
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4359
    div-int/lit8 p1, p1, 0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, v5

    if-gez v0, :cond_0

    const/4 v4, 0x4

    :cond_0
    add-int/2addr v0, v4

    .line 4361
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 4362
    :cond_1
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4364
    div-int/lit8 p1, p1, 0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, v5

    if-gez v0, :cond_2

    const/4 v4, 0x4

    :cond_2
    add-int/2addr v0, v4

    .line 4366
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4371
    :cond_3
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4351
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "degree should be a multiple of 90"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveAttributes()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4649
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->isSupportedFormatForSavingAttributes()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4653
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4654
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4660
    iput-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mModified:Z

    .line 4663
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "temp"

    const-string v2, "tmp"

    .line 4670
    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4671
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-eqz v2, :cond_2

    .line 4672
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 4673
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_3

    .line 4674
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v2, v3, v5}, Landroidx/exifinterface/media/ExifInterface$OsApi21Impl;->lseek(Ljava/io/FileDescriptor;II)V

    .line 4675
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 4677
    :goto_1
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 4678
    :try_start_2
    invoke-static {v2, v5}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 4682
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4683
    invoke-static {v5}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4692
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4693
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 4694
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 4695
    :cond_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_5

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v5, :cond_5

    .line 4696
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v5, v3, v6}, Landroidx/exifinterface/media/ExifInterface$OsApi21Impl;->lseek(Ljava/io/FileDescriptor;II)V

    .line 4697
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :cond_5
    move-object v5, v0

    .line 4699
    :goto_2
    :try_start_4
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4700
    :try_start_5
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4701
    :try_start_6
    iget v7, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 4702
    invoke-direct {p0, v6, v2}, Landroidx/exifinterface/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    :cond_6
    const/16 v8, 0xd

    if-ne v7, v8, :cond_7

    .line 4704
    invoke-direct {p0, v6, v2}, Landroidx/exifinterface/media/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    :cond_7
    const/16 v8, 0xe

    if-ne v7, v8, :cond_8

    .line 4706
    invoke-direct {p0, v6, v2}, Landroidx/exifinterface/media/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4731
    :cond_8
    :goto_3
    invoke-static {v6}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4732
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4733
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4737
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v9, v6

    move-object v6, v0

    move-object v0, v9

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    :goto_4
    move-object v0, v6

    goto :goto_7

    :catch_1
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v6

    move-object v6, v9

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    goto :goto_7

    :catch_3
    move-exception v2

    move-object v5, v0

    move-object v6, v2

    move-object v2, v5

    .line 4710
    :goto_5
    :try_start_7
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4711
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4712
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4713
    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v8, :cond_9

    .line 4715
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v4, :cond_a

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_a

    .line 4717
    :try_start_8
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v4, v3, v5}, Landroidx/exifinterface/media/ExifInterface$OsApi21Impl;->lseek(Ljava/io/FileDescriptor;II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4724
    :try_start_9
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_6

    :catch_4
    move-exception v3

    .line 4720
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to save new file. Original file may be corrupted since error occurred while trying to restore it."

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4714
    :cond_9
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4726
    :cond_a
    :goto_6
    invoke-static {v7, v5}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 4727
    invoke-static {v7}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4728
    invoke-static {v5}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4729
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to save new file"

    invoke-direct {v3, v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v3

    .line 4731
    :goto_7
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4732
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4733
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4734
    throw v3

    :catchall_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_9

    :catchall_5
    move-exception v1

    move-object v5, v0

    :goto_8
    move-object v0, v2

    goto :goto_b

    :catch_6
    move-exception v1

    move-object v5, v0

    :goto_9
    move-object v0, v2

    goto :goto_a

    :catchall_6
    move-exception v1

    move-object v5, v0

    goto :goto_b

    :catch_7
    move-exception v1

    move-object v5, v0

    .line 4680
    :goto_a
    :try_start_a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to copy original file to temp file"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception v1

    .line 4682
    :goto_b
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4683
    invoke-static {v5}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4684
    throw v1

    .line 4650
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes on JPEG, PNG, or WebP formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAltitude(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 5069
    :goto_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(D)V

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSAltitude"

    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSAltitudeRef"

    .line 5070
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "tag shouldn\'t be null"

    .line 4188
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "ISOSpeedRatings"

    .line 4191
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_1

    .line 4192
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 4193
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "PhotographicSensitivity"

    :cond_1
    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 4199
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "GPSTimeStamp"

    .line 4200
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " : "

    const-string v8, "Invalid value for "

    if-eqz v6, :cond_3

    .line 4201
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 4202
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_2

    .line 4203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4206
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/1,"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    .line 4207
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4210
    :cond_3
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 4211
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-direct {v6, v9, v10}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(D)V

    invoke-virtual {v6}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4213
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4219
    :goto_1
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_17

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 4220
    iget-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-nez v8, :cond_5

    goto/16 :goto_f

    .line 4223
    :cond_5
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    if-eqz v8, :cond_16

    if-nez v2, :cond_6

    .line 4226
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 4229
    :cond_6
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 4231
    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-eq v10, v11, :cond_e

    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_7

    goto/16 :goto_5

    .line 4233
    :cond_7
    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-eq v10, v12, :cond_9

    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_8

    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    .line 4234
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_9

    .line 4235
    :cond_8
    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    goto/16 :goto_6

    .line 4236
    :cond_9
    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v10, v5, :cond_d

    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_d

    iget v10, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v10, v3, :cond_a

    goto/16 :goto_4

    .line 4241
    :cond_a
    sget-boolean v10, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_16

    .line 4242
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Given tag ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v13, v11, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4245
    iget v13, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    const-string v14, ""

    const-string v15, ", "

    if-ne v13, v12, :cond_b

    move-object v8, v14

    goto :goto_2

    .line 4246
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v8, v11, v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (guess: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 4247
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v11, v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v12, :cond_c

    goto :goto_3

    .line 4248
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v11, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_3
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4242
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4239
    :cond_d
    :goto_4
    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    goto :goto_6

    .line 4232
    :cond_e
    :goto_5
    iget v8, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    :goto_6
    const-string v9, "/"

    const-string v10, ","

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move-object/from16 v16, v4

    const/4 v15, 0x1

    .line 4327
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_15

    .line 4328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data format isn\'t one of expected formats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v16

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 4317
    :pswitch_1
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4318
    array-length v9, v8

    new-array v9, v9, [D

    const/4 v10, 0x0

    .line 4319
    :goto_7
    array-length v11, v8

    if-ge v10, v11, :cond_f

    .line 4320
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 4322
    :cond_f
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4323
    invoke-static {v9, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 4322
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 4305
    :pswitch_2
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4306
    array-length v10, v8

    new-array v10, v10, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v11, 0x0

    .line 4307
    :goto_8
    array-length v13, v8

    if-ge v11, v13, :cond_10

    .line 4308
    aget-object v13, v8, v11

    invoke-virtual {v13, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 4309
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$Rational;

    aget-object v15, v13, v6

    move-object/from16 v16, v4

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-long v3, v3

    aget-object v13, v13, v5

    .line 4310
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    invoke-direct {v14, v3, v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_8

    :cond_10
    move-object/from16 v16, v4

    .line 4312
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4313
    invoke-static {v10, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 4312
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :pswitch_3
    move-object/from16 v16, v4

    .line 4273
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4274
    array-length v4, v3

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 4275
    :goto_9
    array-length v6, v3

    if-ge v5, v6, :cond_11

    .line 4276
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 4278
    :cond_11
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4279
    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 4278
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    move-object/from16 v4, v16

    goto/16 :goto_f

    :pswitch_4
    move-object/from16 v16, v4

    .line 4293
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4294
    array-length v4, v3

    new-array v4, v4, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v5, 0x0

    .line 4295
    :goto_b
    array-length v6, v3

    if-ge v5, v6, :cond_12

    .line 4296
    aget-object v6, v3, v5

    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 4297
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v11, 0x0

    aget-object v10, v6, v11

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-long v13, v13

    const/4 v15, 0x1

    aget-object v6, v6, v15

    .line 4298
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v10, v11

    invoke-direct {v8, v13, v14, v10, v11}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v12, -0x1

    goto :goto_b

    :cond_12
    const/4 v15, 0x1

    .line 4300
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4301
    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 4300
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    :pswitch_5
    move-object/from16 v16, v4

    const/4 v3, -0x1

    const/4 v15, 0x1

    .line 4283
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4284
    array-length v4, v3

    new-array v4, v4, [J

    const/4 v5, 0x0

    .line 4285
    :goto_c
    array-length v6, v3

    if-ge v5, v6, :cond_13

    .line 4286
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 4288
    :cond_13
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4289
    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 4288
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :pswitch_6
    move-object/from16 v16, v4

    const/4 v3, -0x1

    const/4 v15, 0x1

    .line 4263
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4264
    array-length v4, v3

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 4265
    :goto_d
    array-length v6, v3

    if-ge v5, v6, :cond_14

    .line 4266
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 4268
    :cond_14
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4269
    invoke-static {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 4268
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :pswitch_7
    move-object/from16 v16, v4

    const/4 v15, 0x1

    .line 4259
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :pswitch_8
    move-object/from16 v16, v4

    const/4 v15, 0x1

    .line 4254
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v7

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_e
    move-object/from16 v4, v16

    goto :goto_10

    :cond_16
    :goto_f
    const/4 v15, 0x1

    :goto_10
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateTime(Ljava/lang/Long;)V
    .locals 6

    .line 5081
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    .line 5082
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "DateTime"

    invoke-virtual {p0, v2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5083
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubSecTime"

    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGpsInfo(Landroid/location/Location;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 5012
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSProcessingMethod"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5013
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setLatLong(DD)V

    .line 5014
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAltitude(D)V

    const-string v0, "GPSSpeedRef"

    const-string v1, "K"

    .line 5016
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5017
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 5018
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(D)V

    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSSpeed"

    .line 5017
    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5019
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 5020
    aget-object v0, p1, v0

    const-string v1, "GPSDateStamp"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5021
    aget-object p1, p1, v0

    const-string v0, "GPSTimeStamp"

    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLatLong(DD)V
    .locals 4

    const-string v0, " is not valid."

    const-wide v1, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, p1, v1

    if-ltz v3, :cond_3

    const-wide v1, 0x4056800000000000L    # 90.0

    cmpl-double v3, p1, v1

    if-gtz v3, :cond_3

    .line 5035
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    const-wide v1, -0x3f99800000000000L    # -180.0

    cmpg-double v3, p3, v1

    if-ltz v3, :cond_2

    const-wide v1, 0x4066800000000000L    # 180.0

    cmpl-double v3, p3, v1

    if-gtz v3, :cond_2

    .line 5038
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const-string v2, "N"

    goto :goto_0

    :cond_0
    const-string v2, "S"

    :goto_0
    const-string v3, "GPSLatitudeRef"

    .line 5041
    invoke-virtual {p0, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5042
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSLatitude"

    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double p1, p3, v0

    if-ltz p1, :cond_1

    const-string p1, "E"

    goto :goto_1

    :cond_1
    const-string p1, "W"

    :goto_1
    const-string p2, "GPSLongitudeRef"

    .line 5043
    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5044
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSLongitude"

    invoke-virtual {p0, p2, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5039
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longitude value "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5036
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Latitude value "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
