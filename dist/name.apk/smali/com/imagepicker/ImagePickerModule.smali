.class public Lcom/imagepicker/ImagePickerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ImagePickerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ImagePickerManager"
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "ImagePickerManager"

.field public static final REQUEST_LAUNCH_IMAGE_CAPTURE:I = 0x32c9

.field public static final REQUEST_LAUNCH_LIBRARY:I = 0x32cb

.field public static final REQUEST_LAUNCH_VIDEO_CAPTURE:I = 0x32ca


# instance fields
.field callback:Lcom/facebook/react/bridge/Callback;

.field cameraCaptureURI:Landroid/net/Uri;

.field private fileUri:Landroid/net/Uri;

.field options:Lcom/imagepicker/Options;

.field final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 44
    iput-object p1, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 45
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ImagePickerManager"

    return-object v0
.end method

.method public launchCamera(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcom/imagepicker/Utils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/imagepicker/Utils;->errCameraUnavailable:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/imagepicker/ImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    const-string v1, "Activity error"

    invoke-static {v0, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_1
    iget-object v4, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v4, v0}, Lcom/imagepicker/Utils;->isCameraPermissionFulfilled(Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    sget-object v1, Lcom/imagepicker/Utils;->cameraPermissionDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 71
    :cond_2
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    .line 72
    new-instance v4, Lcom/imagepicker/Options;

    invoke-direct {v4, p1}, Lcom/imagepicker/Options;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v4, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    .line 74
    iget-object p1, v4, Lcom/imagepicker/Options;->saveToPhotos:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-gt p1, v4, :cond_3

    invoke-static {v0}, Lcom/imagepicker/Utils;->hasPermission(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v3, [Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/imagepicker/Utils;->errPermission:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    iget-object p1, p1, Lcom/imagepicker/Options;->mediaType:Ljava/lang/String;

    sget-object v4, Lcom/imagepicker/Utils;->mediaTypeVideo:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x32ca

    .line 85
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    iget v5, v5, Lcom/imagepicker/Options;->videoQuality:I

    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    iget v5, v5, Lcom/imagepicker/Options;->durationLimit:I

    if-lez v5, :cond_4

    .line 88
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    iget v5, v5, Lcom/imagepicker/Options;->durationLimit:I

    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    :cond_4
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v6, "mp4"

    invoke-static {v5, v6}, Lcom/imagepicker/Utils;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 91
    iget-object v6, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v5, v6}, Lcom/imagepicker/Utils;->createUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/imagepicker/ImagePickerModule;->cameraCaptureURI:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    const/16 p1, 0x32c9

    .line 94
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v6, "jpg"

    invoke-static {v5, v6}, Lcom/imagepicker/Utils;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 96
    iget-object v6, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v5, v6}, Lcom/imagepicker/Utils;->createUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/imagepicker/ImagePickerModule;->cameraCaptureURI:Landroid/net/Uri;

    .line 99
    :goto_0
    iget-object v6, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    iget-object v6, v6, Lcom/imagepicker/Options;->useFrontCamera:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 100
    invoke-static {v4}, Lcom/imagepicker/Utils;->setFrontCamera(Landroid/content/Intent;)V

    .line 103
    :cond_6
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/imagepicker/ImagePickerModule;->fileUri:Landroid/net/Uri;

    .line 104
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModule;->cameraCaptureURI:Landroid/net/Uri;

    const-string v6, "output"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v5, 0x3

    .line 105
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    :try_start_0
    invoke-virtual {v0, v4, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 110
    sget-object v3, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 111
    iput-object v1, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    :goto_1
    return-void
.end method

.method public launchImageLibrary(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/imagepicker/ImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    const-string v2, "Activity error"

    invoke-static {v0, v2}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 123
    :cond_0
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    .line 124
    new-instance v3, Lcom/imagepicker/Options;

    invoke-direct {v3, p1}, Lcom/imagepicker/Options;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v3, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    const/16 p1, 0x32cb

    .line 130
    iget v3, v3, Lcom/imagepicker/Options;->selectionLimit:I

    if-ne v3, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 131
    :goto_0
    iget-object v4, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    iget-object v4, v4, Lcom/imagepicker/Options;->mediaType:Ljava/lang/String;

    sget-object v5, Lcom/imagepicker/Utils;->mediaTypePhoto:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 132
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    iget-object v5, v5, Lcom/imagepicker/Options;->mediaType:Ljava/lang/String;

    sget-object v6, Lcom/imagepicker/Utils;->mediaTypeVideo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v3, :cond_3

    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 135
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.PICK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.OPENABLE"

    .line 138
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    if-nez v3, :cond_4

    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    .line 142
    invoke-virtual {v6, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const-string v3, "image/*"

    if-eqz v4, :cond_5

    .line 146
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    const-string v4, "video/*"

    if-eqz v5, :cond_6

    .line 148
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    const-string v5, "*/*"

    .line 150
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :goto_2
    :try_start_0
    invoke-virtual {v0, v6, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 157
    sget-object v2, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    :goto_3
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4

    .line 176
    invoke-static {p2}, Lcom/imagepicker/Utils;->isValidRequestCode(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    const/16 p1, 0x32c9

    if-ne p2, p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->fileUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/imagepicker/Utils;->deleteFile(Landroid/net/Uri;)V

    :cond_1
    const/4 p1, 0x0

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v2, p3, [Ljava/lang/Object;

    invoke-static {}, Lcom/imagepicker/Utils;->getCancelMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 188
    :try_start_1
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    new-array p3, p3, [Ljava/lang/Object;

    sget-object v3, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    aput-object v1, p3, p1

    invoke-interface {v2, p3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    goto :goto_1

    :goto_0
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    .line 191
    throw p1

    :cond_2
    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 204
    :pswitch_0
    invoke-static {p4}, Lcom/imagepicker/Utils;->collectUrisFromData(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imagepicker/ImagePickerModule;->onAssetsObtained(Ljava/util/List;)V

    goto :goto_2

    .line 208
    :pswitch_1
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    iget-object p1, p1, Lcom/imagepicker/Options;->saveToPhotos:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 209
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->cameraCaptureURI:Landroid/net/Uri;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string p3, "video"

    invoke-static {p1, p2, p3}, Lcom/imagepicker/Utils;->saveToPublicDirectory(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    :cond_3
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->fileUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imagepicker/ImagePickerModule;->onAssetsObtained(Ljava/util/List;)V

    goto :goto_2

    .line 196
    :pswitch_2
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    iget-object p1, p1, Lcom/imagepicker/Options;->saveToPhotos:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 197
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->cameraCaptureURI:Landroid/net/Uri;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string p3, "photo"

    invoke-static {p1, p2, p3}, Lcom/imagepicker/Utils;->saveToPublicDirectory(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    :cond_4
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->fileUri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imagepicker/ImagePickerModule;->onAssetsObtained(Ljava/util/List;)V

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32c9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onAssetsObtained(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    :try_start_0
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/imagepicker/Options;

    iget-object v6, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p1, v5, v6}, Lcom/imagepicker/Utils;->getResponseMap(Ljava/util/List;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    iput-object v2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 166
    :try_start_1
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/imagepicker/Utils;->errOthers:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/imagepicker/Utils;->getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 168
    :goto_2
    iput-object v2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    .line 169
    throw p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
