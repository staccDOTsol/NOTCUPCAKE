.class public Lcom/imagepicker/VideoMetadata;
.super Lcom/imagepicker/Metadata;
.source "VideoMetadata.java"


# instance fields
.field private bitrate:I

.field private duration:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Lcom/imagepicker/Metadata;-><init>()V

    .line 22
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 23
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/imagepicker/VideoMetadata;->getBitmap(Landroid/net/Uri;Landroid/content/Context;Landroid/media/MediaMetadataRetriever;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p2, 0x9

    .line 26
    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x14

    .line 27
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 28
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 31
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Lcom/imagepicker/VideoMetadata;->duration:I

    :cond_0
    if-eqz v1, :cond_1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/imagepicker/VideoMetadata;->bitrate:I

    :cond_1
    if-eqz v2, :cond_2

    const/4 p2, 0x0

    const-string v1, "."

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v1, "T"

    const-string v2, " "

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "yyyyMMdd HHmmss"

    .line 38
    invoke-virtual {p0, p2, v1}, Lcom/imagepicker/VideoMetadata;->getDateTimeInUTC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/imagepicker/VideoMetadata;->datetime:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/imagepicker/VideoMetadata;->width:I

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/imagepicker/VideoMetadata;->height:I

    .line 46
    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void
.end method

.method private getBitmap(Landroid/net/Uri;Landroid/content/Context;Landroid/media/MediaMetadataRetriever;)Landroid/graphics/Bitmap;
    .locals 1

    .line 65
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "r"

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 66
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 67
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 68
    invoke-virtual {p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 71
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not retrieve width and height from video: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RNIP"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/imagepicker/VideoMetadata;->bitrate:I

    return v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/imagepicker/VideoMetadata;->datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/imagepicker/VideoMetadata;->duration:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/imagepicker/VideoMetadata;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/imagepicker/VideoMetadata;->width:I

    return v0
.end method
