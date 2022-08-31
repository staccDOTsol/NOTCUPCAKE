.class public Lcom/imagepicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static cameraPermissionDescription:Ljava/lang/String; = "This library does not require Manifest.permission.CAMERA, if you add this permission in manifest then you have to obtain the same."

.field public static errCameraUnavailable:Ljava/lang/String; = "camera_unavailable"

.field public static errOthers:Ljava/lang/String; = "others"

.field public static errPermission:Ljava/lang/String; = "permission"

.field public static fileNamePrefix:Ljava/lang/String; = "rn_image_picker_lib_temp_"

.field public static mediaTypePhoto:Ljava/lang/String; = "photo"

.field public static mediaTypeVideo:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static collectUrisFromData(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 384
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 387
    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 388
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static copyUri(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 2

    .line 99
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    .line 100
    invoke-virtual {p2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/16 p2, 0x2000

    new-array p2, p2, [B

    .line 105
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 59
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/imagepicker/Utils;->fileNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 64
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".imagepickerprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {p1, v0, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static deleteFile(Landroid/net/Uri;)V
    .locals 1

    .line 299
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static getAppSpecificStorageUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/imagepicker/Utils;->getFileTypeFromMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {p1, v1}, Lcom/imagepicker/Utils;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 122
    invoke-static {p0, p1, v0}, Lcom/imagepicker/Utils;->copyUri(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    return-object p1
.end method

.method static getBase64String(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 166
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 175
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x2

    .line 184
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getBitmapCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 283
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 281
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 280
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method static getCancelMap()Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    .line 479
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "didCancel"

    const/4 v2, 0x1

    .line 480
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method static getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 2

    .line 470
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "errorCode"

    .line 471
    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "errorMessage"

    .line 473
    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static getFileSize(Landroid/net/Uri;Landroid/content/Context;)D
    .locals 1

    .line 258
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 259
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double p0, p0

    return-wide p0

    :catch_0
    move-exception p0

    .line 261
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method static getFileTypeFromMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "jpg"

    if-nez p0, :cond_0

    return-object v0

    .line 290
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v1, "image/gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "png"

    return-object p0

    :cond_2
    const-string p0, "gif"

    return-object p0
.end method

.method static getImageDimensBasedOnConstraints(IILcom/imagepicker/Options;)[I
    .locals 4

    .line 239
    iget v0, p2, Lcom/imagepicker/Options;->maxWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/imagepicker/Options;->maxHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iget v0, p2, Lcom/imagepicker/Options;->maxWidth:I

    if-ge v0, p0, :cond_1

    .line 244
    iget v0, p2, Lcom/imagepicker/Options;->maxWidth:I

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    int-to-float p0, p1

    mul-float v0, v0, p0

    float-to-int p1, v0

    .line 245
    iget p0, p2, Lcom/imagepicker/Options;->maxWidth:I

    .line 248
    :cond_1
    iget v0, p2, Lcom/imagepicker/Options;->maxHeight:I

    if-ge v0, p1, :cond_2

    .line 249
    iget v0, p2, Lcom/imagepicker/Options;->maxHeight:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p0, p0

    mul-float v0, v0, p0

    float-to-int p0, v0

    .line 250
    iget p1, p2, Lcom/imagepicker/Options;->maxHeight:I

    :cond_2
    new-array p2, v3, [I

    aput p0, p2, v2

    aput p1, p2, v1

    return-object p2

    :cond_3
    :goto_0
    new-array p2, v3, [I

    aput p0, p2, v2

    aput p1, p2, v1

    return-object p2
.end method

.method public static getImageDimensions(Landroid/net/Uri;Landroid/content/Context;)[I
    .locals 3

    const/4 v0, 0x2

    .line 146
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 153
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 154
    invoke-static {p0, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-array p0, v0, [I

    const/4 v0, 0x0

    .line 155
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v2, p0, v0

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p1, p0, v1

    return-object p0

    :catch_0
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    new-array p0, v0, [I

    .line 149
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static getImageResponseMap(Landroid/net/Uri;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 7

    .line 395
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 396
    new-instance v1, Lcom/imagepicker/ImageMetadata;

    invoke-direct {v1, p0, p2}, Lcom/imagepicker/ImageMetadata;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    .line 397
    invoke-static {p0, p2}, Lcom/imagepicker/Utils;->getImageDimensions(Landroid/net/Uri;Landroid/content/Context;)[I

    move-result-object v2

    .line 399
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 400
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uri"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {p0, p2}, Lcom/imagepicker/Utils;->getFileSize(Landroid/net/Uri;Landroid/content/Context;)D

    move-result-wide v4

    const-string v6, "fileSize"

    invoke-interface {v3, v6, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v4, "fileName"

    .line 402
    invoke-interface {v3, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {p0}, Lcom/imagepicker/Utils;->getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 404
    aget v4, v2, v4

    const-string v6, "width"

    invoke-interface {v3, v6, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x1

    .line 405
    aget v2, v2, v4

    const-string v4, "height"

    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 406
    invoke-static {p0, p2}, Lcom/imagepicker/Utils;->getMimeType(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v2, p1, Lcom/imagepicker/Options;->includeBase64:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    invoke-static {p0, p2}, Lcom/imagepicker/Utils;->getBase64String(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "base64"

    invoke-interface {v3, p2, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    iget-object p0, p1, Lcom/imagepicker/Options;->includeExtra:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 414
    invoke-virtual {v1}, Lcom/imagepicker/ImageMetadata;->getDateTime()Ljava/lang/String;

    move-result-object p0

    const-string p1, "timestamp"

    invoke-interface {v3, p1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "id"

    .line 415
    invoke-interface {v3, p0, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v3
.end method

.method static getMimeType(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 369
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {p0}, Lcom/imagepicker/Utils;->getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 374
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 303
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getOrientation(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string p0, "Orientation"

    .line 222
    invoke-virtual {v0, p0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getResponseMap(Ljava/util/List;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/imagepicker/Options;",
            "Landroid/content/Context;",
            ")",
            "Lcom/facebook/react/bridge/ReadableMap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 445
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 447
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 448
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 450
    invoke-static {v2, p2}, Lcom/imagepicker/Utils;->isImageType(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    invoke-static {v2, p2}, Lcom/imagepicker/Utils;->getAppSpecificStorageUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 454
    :cond_0
    invoke-static {v2, p2, p1}, Lcom/imagepicker/Utils;->resizeImage(Landroid/net/Uri;Landroid/content/Context;Lcom/imagepicker/Options;)Landroid/net/Uri;

    move-result-object v2

    .line 455
    invoke-static {v2, p1, p2}, Lcom/imagepicker/Utils;->getImageResponseMap(Landroid/net/Uri;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 456
    :cond_1
    invoke-static {v2, p2}, Lcom/imagepicker/Utils;->isVideoType(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    invoke-static {v2, p1, p2}, Lcom/imagepicker/Utils;->getVideoResponseMap(Landroid/net/Uri;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported file type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :cond_3
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    const-string p1, "assets"

    .line 464
    invoke-interface {p0, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object p0
.end method

.method static getVideoResponseMap(Landroid/net/Uri;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 6

    .line 422
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 424
    new-instance v2, Lcom/imagepicker/VideoMetadata;

    invoke-direct {v2, p0, p2}, Lcom/imagepicker/VideoMetadata;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    .line 426
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uri"

    invoke-interface {v1, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {p0, p2}, Lcom/imagepicker/Utils;->getFileSize(Landroid/net/Uri;Landroid/content/Context;)D

    move-result-wide v3

    const-string v5, "fileSize"

    invoke-interface {v1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 428
    invoke-virtual {v2}, Lcom/imagepicker/VideoMetadata;->getDuration()I

    move-result v3

    const-string v4, "duration"

    invoke-interface {v1, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 429
    invoke-virtual {v2}, Lcom/imagepicker/VideoMetadata;->getBitrate()I

    move-result v3

    const-string v4, "bitrate"

    invoke-interface {v1, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v3, "fileName"

    .line 430
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {p0, p2}, Lcom/imagepicker/Utils;->getMimeType(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "type"

    invoke-interface {v1, p2, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v2}, Lcom/imagepicker/VideoMetadata;->getWidth()I

    move-result p0

    const-string p2, "width"

    invoke-interface {v1, p2, p0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 433
    invoke-virtual {v2}, Lcom/imagepicker/VideoMetadata;->getHeight()I

    move-result p0

    const-string p2, "height"

    invoke-interface {v1, p2, p0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 435
    iget-object p0, p1, Lcom/imagepicker/Options;->includeExtra:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 437
    invoke-virtual {v2}, Lcom/imagepicker/VideoMetadata;->getDateTime()Ljava/lang/String;

    move-result-object p0

    const-string p1, "timestamp"

    invoke-interface {v1, p1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "id"

    .line 438
    invoke-interface {v1, p0, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method static hasPermission(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 159
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCameraAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera.any"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isCameraPermissionFulfilled(Landroid/content/Context;Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "android.permission.CAMERA"

    const/4 v1, 0x1

    .line 320
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x1000

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_0

    return v1

    .line 328
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 329
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    .line 336
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method static isContentType(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 0

    .line 359
    invoke-static {p1, p2}, Lcom/imagepicker/Utils;->getMimeType(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isImageType(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 1

    const-string v0, "image/"

    .line 342
    invoke-static {v0, p0, p1}, Lcom/imagepicker/Utils;->isContentType(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static isValidRequestCode(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x32c9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isVideoType(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 1

    const-string v0, "video/"

    .line 346
    invoke-static {v0, p0, p1}, Lcom/imagepicker/Utils;->isContentType(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static resizeImage(Landroid/net/Uri;Landroid/content/Context;Lcom/imagepicker/Options;)Landroid/net/Uri;
    .locals 6

    .line 191
    :try_start_0
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getImageDimensions(Landroid/net/Uri;Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-static {v2, v4, p2}, Lcom/imagepicker/Utils;->shouldResizeImage(IILcom/imagepicker/Options;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    .line 197
    :cond_0
    aget v2, v0, v1

    aget v0, v0, v3

    invoke-static {v2, v0, p2}, Lcom/imagepicker/Utils;->getImageDimensBasedOnConstraints(IILcom/imagepicker/Options;)[I

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 200
    invoke-static {p0}, Lcom/imagepicker/Utils;->getMimeTypeFromFileUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 202
    aget v1, v0, v1

    aget v0, v0, v3

    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getOrientation(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v4}, Lcom/imagepicker/Utils;->getFileTypeFromMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/imagepicker/Utils;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 207
    invoke-static {v4}, Lcom/imagepicker/Utils;->getBitmapCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    iget p2, p2, Lcom/imagepicker/Options;->quality:I

    invoke-virtual {v0, v4, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 208
    invoke-static {v2, v1, p1}, Lcom/imagepicker/Utils;->setOrientation(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 210
    invoke-static {p0}, Lcom/imagepicker/Utils;->deleteFile(Landroid/net/Uri;)V

    .line 212
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public static saveToPublicDirectory(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 82
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "video"

    .line 84
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "mime_type"

    const-string v2, "_display_name"

    if-eqz p2, :cond_0

    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 94
    :goto_0
    invoke-static {p0, p2, p1}, Lcom/imagepicker/Utils;->copyUri(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static setFrontCamera(Landroid/content/Intent;)V
    .locals 4

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "android.intent.extras.CAMERA_FACING"

    const/16 v3, 0x16

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    .line 136
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method static setOrientation(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 227
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    new-instance p2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p2, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    const-string p0, "Orientation"

    .line 231
    invoke-virtual {p2, p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    :cond_1
    :goto_0
    return-void
.end method

.method static shouldResizeImage(IILcom/imagepicker/Options;)Z
    .locals 3

    .line 267
    iget v0, p2, Lcom/imagepicker/Options;->maxWidth:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/imagepicker/Options;->maxHeight:I

    if-nez v0, :cond_1

    :cond_0
    iget v0, p2, Lcom/imagepicker/Options;->quality:I

    if-ne v0, v2, :cond_1

    return v1

    .line 271
    :cond_1
    iget v0, p2, Lcom/imagepicker/Options;->maxWidth:I

    if-lt v0, p0, :cond_2

    iget p0, p2, Lcom/imagepicker/Options;->maxHeight:I

    if-lt p0, p1, :cond_2

    iget p0, p2, Lcom/imagepicker/Options;->quality:I

    if-ne p0, v2, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
