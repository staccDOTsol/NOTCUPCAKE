.class Lcom/reactnative/ivpusic/imagepicker/ExifExtractor;
.super Ljava/lang/Object;
.source "ExifExtractor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extract(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 21
    invoke-static {}, Lcom/reactnative/ivpusic/imagepicker/ExifExtractor;->getBasicAttributes()Ljava/util/List;

    move-result-object v1

    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 24
    invoke-static {}, Lcom/reactnative/ivpusic/imagepicker/ExifExtractor;->getLevel23Attributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :cond_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 30
    :try_start_0
    new-instance p0, Lcom/reactnative/ivpusic/imagepicker/GeoDegree;

    invoke-direct {p0, v2}, Lcom/reactnative/ivpusic/imagepicker/GeoDegree;-><init>(Landroid/media/ExifInterface;)V

    .line 31
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/GeoDegree;->getLatitude()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/GeoDegree;->getLongitude()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "Latitude"

    .line 32
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/GeoDegree;->getLatitude()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {v0, v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v3, "Longitude"

    .line 33
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/GeoDegree;->getLongitude()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v4, p0

    invoke-interface {v0, v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    invoke-virtual {v2, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-interface {v0, v1, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static getBasicAttributes()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "FNumber"

    const-string v2, "DateTime"

    const-string v3, "ExposureTime"

    const-string v4, "Flash"

    const-string v5, "FocalLength"

    const-string v6, "GPSAltitude"

    const-string v7, "GPSAltitudeRef"

    const-string v8, "GPSDateStamp"

    const-string v9, "GPSLatitude"

    const-string v10, "GPSLatitudeRef"

    const-string v11, "GPSLongitude"

    const-string v12, "GPSLongitudeRef"

    const-string v13, "GPSProcessingMethod"

    const-string v14, "GPSTimeStamp"

    const-string v15, "ImageLength"

    const-string v16, "ImageWidth"

    const-string v17, "ISOSpeedRatings"

    const-string v18, "Make"

    const-string v19, "Model"

    const-string v20, "Orientation"

    const-string v21, "WhiteBalance"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getLevel23Attributes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "DateTimeDigitized"

    const-string v2, "SubSecTime"

    const-string v3, "SubSecTimeDigitized"

    const-string v4, "SubSecTimeOriginal"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
