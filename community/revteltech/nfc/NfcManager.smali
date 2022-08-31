.class Lcommunity/revteltech/nfc/NfcManager;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "NfcManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;
    }
.end annotation


# static fields
.field private static final ERR_API_NOT_SUPPORT:Ljava/lang/String; = "unsupported tag api"

.field private static final ERR_CANCEL:Ljava/lang/String; = "cancelled"

.field private static final ERR_GET_ACTIVITY_FAIL:Ljava/lang/String; = "fail to get current activity"

.field private static final ERR_MULTI_REQ:Ljava/lang/String; = "You can only issue one request at a time"

.field private static final ERR_NOT_REGISTERED:Ljava/lang/String; = "you should requestTagEvent first"

.field private static final ERR_NO_NFC_SUPPORT:Ljava/lang/String; = "no nfc support"

.field private static final ERR_NO_REFERENCE:Ljava/lang/String; = "no reference available"

.field private static final ERR_NO_TECH_REQ:Ljava/lang/String; = "no tech request available"

.field private static final ERR_TRANSCEIVE_FAIL:Ljava/lang/String; = "transceive fail"

.field private static final LOG_TAG:Ljava/lang/String; = "ReactNativeNfcManager"


# instance fields
.field private bgTag:Lcom/facebook/react/bridge/WritableMap;

.field private context:Landroid/content/Context;

.field private final intentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private isForegroundEnabled:Ljava/lang/Boolean;

.field private isReaderModeEnabled:Ljava/lang/Boolean;

.field private isResumed:Ljava/lang/Boolean;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private readerModeDelay:I

.field private readerModeFlags:I

.field private tag:Landroid/nfc/Tag;

.field private final techLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

.field private writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techLists:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    .line 48
    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isResumed:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 49
    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    .line 50
    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    .line 51
    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->tag:Landroid/nfc/Tag;

    .line 52
    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->bgTag:Lcom/facebook/react/bridge/WritableMap;

    .line 54
    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isReaderModeEnabled:Ljava/lang/Boolean;

    .line 55
    iput v0, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeFlags:I

    .line 56
    iput v0, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeDelay:I

    .line 1253
    new-instance v0, Lcommunity/revteltech/nfc/NfcManager$2;

    invoke-direct {v0, p0}, Lcommunity/revteltech/nfc/NfcManager$2;-><init>(Lcommunity/revteltech/nfc/NfcManager;)V

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    .line 84
    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 85
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 86
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    const-string p1, "ReactNativeNfcManager"

    const-string v0, "NfcManager created"

    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/Tag;)Landroid/nfc/Tag;
    .locals 0

    .line 41
    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->tag:Landroid/nfc/Tag;

    return-object p1
.end method

.method static synthetic access$100(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcommunity/revteltech/nfc/NfcManager;->tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcommunity/revteltech/nfc/NfcManager;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcommunity/revteltech/nfc/NfcManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method static synthetic access$400(Lcommunity/revteltech/nfc/NfcManager;)Lcommunity/revteltech/nfc/TagTechnologyRequest;
    .locals 0

    .line 41
    iget-object p0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    return-object p0
.end method

.method private static appendBytesToRnArray(Lcom/facebook/react/bridge/WritableArray;[B)Lcom/facebook/react/bridge/WritableArray;
    .locals 2

    const/4 v0, 0x0

    .line 1474
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1475
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;
    .locals 1

    .line 1470
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    invoke-static {v0, p0}, Lcommunity/revteltech/nfc/NfcManager;->appendBytesToRnArray(Lcom/facebook/react/bridge/WritableArray;[B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    return-object p0
.end method

.method private enableDisableForegroundDispatch(Z)V
    .locals 5

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableForegroundDispatch, enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNativeNfcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1156
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 1158
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1160
    :try_start_0
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->isReaderModeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1161
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    if-eqz p1, :cond_0

    .line 1166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableReaderMode: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeFlags:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "presence"

    .line 1168
    iget v4, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeDelay:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1169
    new-instance v3, Lcommunity/revteltech/nfc/NfcManager$1;

    invoke-direct {v3, p0, p0}, Lcommunity/revteltech/nfc/NfcManager$1;-><init>(Lcommunity/revteltech/nfc/NfcManager;Lcommunity/revteltech/nfc/NfcManager;)V

    iget v4, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeFlags:I

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p1, "disableReaderMode"

    .line 1200
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-virtual {v0, v2}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    goto :goto_0

    .line 1162
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "minSdkVersion must be Honeycomb (19) or later."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p1, :cond_3

    .line 1205
    invoke-direct {p0}, Lcommunity/revteltech/nfc/NfcManager;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {p0}, Lcommunity/revteltech/nfc/NfcManager;->getIntentFilters()[Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {p0}, Lcommunity/revteltech/nfc/NfcManager;->getTechLists()[[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_3
    invoke-virtual {v0, v2}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Illegal State Exception starting NFC. Assuming application is terminating."

    .line 1211
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private getIntentFilters()[Landroid/content/IntentFilter;
    .locals 2

    .line 1229
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/IntentFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    return-object v0
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .line 1217
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1218
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    .line 1219
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1222
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    const/high16 v2, 0x2000000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1225
    :goto_0
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getTechLists()[[Ljava/lang/String;
    .locals 3

    .line 1233
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techLists:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private hasPendingRequest()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasTagEventRegistration(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSessionAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNativeNfcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1119
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method private mifareClassicAuthenticate(CILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 6

    .line 300
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 302
    :try_start_0
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_5

    .line 303
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto/16 :goto_1

    .line 307
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p2, v3, :cond_1

    const-string p1, "mifareClassicAuthenticate fail: invalid sector %d (max %d)"

    new-array p3, v4, [Ljava/lang/Object;

    .line 309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    .line 310
    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 312
    :cond_1
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    const/4 v5, 0x6

    if-eq v3, v5, :cond_2

    const-string p1, "mifareClassicAuthenticate fail: invalid key (needs length 6 but has %d characters)"

    new-array p2, v2, [Ljava/lang/Object;

    .line 314
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    .line 315
    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_2
    const/16 v3, 0x41

    if-ne p1, v3, :cond_3

    .line 321
    invoke-static {p3}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyA(I[B)Z

    move-result p1

    goto :goto_0

    .line 323
    :cond_3
    invoke-static {p3}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyB(I[B)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicAuthenticate fail: AUTH_FAIL"

    aput-object p2, p1, v1

    .line 327
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_4
    new-array p1, v4, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    .line 331
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicAuthenticate fail: TYPE_UNKNOWN"

    aput-object p2, p1, v1

    .line 305
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 335
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mifareClassicAuthenticate fail: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicAuthenticate fail: TAG_LOST"

    aput-object p2, p1, v1

    .line 333
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no tech request available"

    aput-object p2, p1, v1

    .line 338
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 1380
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcommunity/revteltech/nfc/NfcManager;->buildNdefJSON(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1381
    invoke-static {p1}, Lcommunity/revteltech/nfc/JsonConvert;->jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseNfcIntent(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6

    const-string v0, "ReactNativeNfcManager"

    .line 1313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNativeNfcManager"

    .line 1315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "android.nfc.extra.TAG"

    .line 1321
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 1324
    monitor-enter p0

    .line 1325
    :try_start_0
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    if-eqz v3, :cond_1

    .line 1326
    invoke-direct {p0, v2, v3}, Lcommunity/revteltech/nfc/NfcManager;->writeNdef(Landroid/nfc/Tag;Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;)V

    .line 1330
    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    .line 1333
    monitor-exit p0

    return-object v1

    .line 1334
    :cond_1
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 1335
    invoke-virtual {v3}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->isConnected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1336
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {p1, v2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->connect(Landroid/nfc/Tag;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 1338
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {p1}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getPendingCallback()Lcom/facebook/react/bridge/Callback;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v4

    iget-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 1341
    :cond_2
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {p1}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getPendingCallback()Lcom/facebook/react/bridge/Callback;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v4

    aput-object v1, v0, v5

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 1346
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1348
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "android.nfc.action.NDEF_DISCOVERED"

    .line 1350
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1351
    invoke-static {v2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    .line 1352
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 1353
    invoke-direct {p0, v0, p1}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string p1, "android.nfc.action.TECH_DISCOVERED"

    .line 1354
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1356
    invoke-virtual {v2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-class v0, Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1357
    invoke-static {v2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object p1

    new-array v0, v5, [Landroid/nfc/NdefMessage;

    .line 1358
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    goto :goto_1

    .line 1360
    :cond_6
    invoke-direct {p0, v2}, Lcommunity/revteltech/nfc/NfcManager;->tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    goto :goto_1

    :cond_7
    const-string p1, "android.nfc.action.TAG_DISCOVERED"

    .line 1362
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1363
    invoke-direct {p0, v2}, Lcommunity/revteltech/nfc/NfcManager;->tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    :cond_8
    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 1348
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private registerTagEvent(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "isReaderModeEnabled"

    .line 1071
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isReaderModeEnabled:Ljava/lang/Boolean;

    const-string v0, "readerModeFlags"

    .line 1072
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeFlags:I

    const-string v0, "readerModeDelay"

    .line 1073
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeDelay:I

    const-string p1, "ReactNativeNfcManager"

    const-string v0, "registerTagEvent"

    .line 1075
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1076
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    .line 1079
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "*/*"

    .line 1081
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techLists:Ljava/util/ArrayList;

    new-array v1, p1, [Ljava/lang/String;

    const-class v2, Landroid/nfc/tech/Ndef;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isResumed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    invoke-direct {p0, p1}, Lcommunity/revteltech/nfc/NfcManager;->enableDisableForegroundDispatch(Z)V

    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 1097
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 1083
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "fail"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B
    .locals 3

    .line 1462
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1463
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1464
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 1238
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    .line 1239
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    .line 1240
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private sendEventWithJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1246
    :try_start_0
    invoke-static {p2}, Lcommunity/revteltech/nfc/JsonConvert;->jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 1247
    invoke-direct {p0, p1, p2}, Lcommunity/revteltech/nfc/NfcManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fireNdefEvent fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReactNativeNfcManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 1371
    :try_start_0
    invoke-static {p1}, Lcommunity/revteltech/nfc/Util;->tagToJSON(Landroid/nfc/Tag;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1372
    invoke-static {p1}, Lcommunity/revteltech/nfc/JsonConvert;->jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private unregisterTagEvent(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "unregisterTagEvent"

    .line 1102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isResumed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    .line 1108
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 1104
    invoke-direct {p0, v1}, Lcommunity/revteltech/nfc/NfcManager;->enableDisableForegroundDispatch(Z)V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->intentFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1108
    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    .line 1109
    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->isReaderModeEnabled:Ljava/lang/Boolean;

    .line 1110
    iput v1, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeFlags:I

    .line 1111
    iput v1, p0, Lcommunity/revteltech/nfc/NfcManager;->readerModeDelay:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 1113
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method private writeNdef(Landroid/nfc/Tag;Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;)V
    .locals 8

    .line 1415
    iget-object v0, p2, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->message:Landroid/nfc/NdefMessage;

    .line 1416
    iget-object v1, p2, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->callback:Lcom/facebook/react/bridge/Callback;

    .line 1417
    iget-boolean v2, p2, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->formatReadOnly:Z

    .line 1418
    iget-boolean p2, p2, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->format:Z

    const-string v3, "unsupported tag api"

    const-string v4, "ready to writeNdef"

    const-string v5, "ReactNativeNfcManager"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_4

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1441
    :cond_0
    :try_start_0
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v6, [Ljava/lang/Object;

    aput-object v3, p1, v7

    .line 1444
    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1445
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result p2

    if-nez p2, :cond_2

    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "tag is not writeable"

    aput-object p2, p1, v7

    .line 1446
    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    .line 1447
    :cond_2
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result p2

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    if-ge p2, v2, :cond_3

    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "tag size is not enough"

    aput-object p2, p1, v7

    .line 1448
    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string p2, "ready to writeNdef, seriously"

    .line 1450
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->connect()V

    .line 1452
    invoke-virtual {p1, v0}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    new-array p1, v7, [Ljava/lang/Object;

    .line 1453
    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-array p2, v6, [Ljava/lang/Object;

    .line 1456
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v7

    invoke-interface {v1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    .line 1422
    :cond_4
    :goto_0
    :try_start_1
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-static {p1}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object p1

    if-nez p1, :cond_5

    new-array p1, v6, [Ljava/lang/Object;

    aput-object v3, p1, v7

    .line 1425
    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string p2, "ready to format ndef, seriously"

    .line 1427
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-virtual {p1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    if-eqz v2, :cond_6

    .line 1430
    invoke-virtual {p1, v0}, Landroid/nfc/tech/NdefFormatable;->formatReadOnly(Landroid/nfc/NdefMessage;)V

    goto :goto_1

    .line 1432
    :cond_6
    invoke-virtual {p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    :goto_1
    new-array p1, v7, [Ljava/lang/Object;

    .line 1434
    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    new-array p2, v6, [Ljava/lang/Object;

    .line 1437
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v7

    invoke-interface {v1, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method buildNdefJSON(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lorg/json/JSONObject;
    .locals 3

    .line 1388
    invoke-static {p1}, Lcommunity/revteltech/nfc/Util;->ndefToJSON(Landroid/nfc/tech/Ndef;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1395
    :try_start_0
    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 1396
    aget-object p1, p2, p1

    check-cast p1, Landroid/nfc/NdefMessage;

    const-string v1, "ndefMessage"

    .line 1397
    invoke-static {p1}, Lcommunity/revteltech/nfc/Util;->messageToJSON(Landroid/nfc/NdefMessage;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v1, "NDEF"

    .line 1399
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1402
    :cond_0
    array-length p1, p2

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    const-string p1, "ReactNativeNfcManager"

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one ndefMessage but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "NfcPlugin"

    const-string v1, "Failed to convert ndefMessage into json"

    .line 1408
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public cancelNdefWrite(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 887
    monitor-enter p0

    .line 888
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, v0, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "cancelled"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 890
    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    new-array v0, v2, [Ljava/lang/Object;

    .line 891
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "you should requestTagEvent first"

    aput-object v1, v0, v2

    .line 893
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 895
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelTechnologyRequest(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getPendingCallback()Lcom/facebook/react/bridge/Callback;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cancelled"

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    .line 123
    :try_start_2
    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    new-array v0, v1, [Ljava/lang/Object;

    .line 124
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 127
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public clearBackgroundTag(Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    .line 1065
    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->bgTag:Lcom/facebook/react/bridge/WritableMap;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1066
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public close(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 755
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 757
    :try_start_0
    iget-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->close()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    aput-object v3, v2, v1

    .line 758
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 761
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 763
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public closeTechnology(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->close()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    new-array v0, v1, [Ljava/lang/Object;

    .line 154
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 157
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 159
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public connect(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 741
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 743
    :try_start_0
    new-instance v2, Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;-><init>(Ljava/util/ArrayList;Lcom/facebook/react/bridge/Callback;)V

    iput-object v2, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    .line 744
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->tag:Landroid/nfc/Tag;

    invoke-virtual {v2, p1}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->connect(Landroid/nfc/Tag;)Z

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, p1, v0

    aput-object v2, p1, v1

    .line 745
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 748
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 750
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public formatNdef(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "readOnly"

    .line 271
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 276
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/NdefFormatable;

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "unsupported tag api"

    aput-object p2, p1, v2

    .line 278
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 280
    :cond_0
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    .line 281
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-direct {v3, p1}, Landroid/nfc/NdefMessage;-><init>([B)V

    if-eqz p2, :cond_1

    .line 283
    invoke-virtual {v0, v3}, Landroid/nfc/tech/NdefFormatable;->formatReadOnly(Landroid/nfc/NdefMessage;)V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v0, v3}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 287
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "ReactNativeNfcManager"

    .line 290
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p2, v1, [Ljava/lang/Object;

    .line 291
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "no tech request available"

    aput-object p2, p1, v2

    .line 294
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 296
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getBackgroundTag(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1060
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->bgTag:Lcom/facebook/react/bridge/WritableMap;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getCachedNdefMessage(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 191
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTagHandle()Landroid/nfc/Tag;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    new-array v3, v2, [Landroid/nfc/NdefMessage;

    .line 192
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    .line 193
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "ReactNativeNfcManager"

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    .line 199
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x10

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIFARE_BLOCK_SIZE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIFARE_ULTRALIGHT_PAGE_SIZE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIFARE_ULTRALIGHT_TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIFARE_ULTRALIGHT_TYPE_C"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIFARE_ULTRALIGHT_TYPE_UNKNOWN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getLaunchTagEvent(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1047
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "fail to get current activity"

    aput-object v1, v0, v2

    .line 1049
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 1053
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1054
    invoke-direct {p0, v0}, Lcommunity/revteltech/nfc/NfcManager;->parseNfcIntent(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    .line 1055
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getMaxTransceiveLength(Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 834
    monitor-enter p0

    .line 835
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 837
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechType()Ljava/lang/String;

    move-result-object v0

    .line 839
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v3}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v3

    const-string v4, "NfcA"

    .line 842
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    .line 843
    check-cast v3, Landroid/nfc/tech/NfcA;

    .line 844
    invoke-virtual {v3}, Landroid/nfc/tech/NfcA;->getMaxTransceiveLength()I

    move-result v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 845
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    const-string v4, "NfcB"

    .line 847
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 848
    check-cast v3, Landroid/nfc/tech/NfcB;

    .line 849
    invoke-virtual {v3}, Landroid/nfc/tech/NfcB;->getMaxTransceiveLength()I

    move-result v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 850
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 851
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    :try_start_5
    const-string v4, "NfcF"

    .line 852
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 853
    check-cast v3, Landroid/nfc/tech/NfcF;

    .line 854
    invoke-virtual {v3}, Landroid/nfc/tech/NfcF;->getMaxTransceiveLength()I

    move-result v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 855
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 856
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :cond_2
    :try_start_7
    const-string v4, "NfcV"

    .line 857
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 858
    check-cast v3, Landroid/nfc/tech/NfcV;

    .line 859
    invoke-virtual {v3}, Landroid/nfc/tech/NfcV;->getMaxTransceiveLength()I

    move-result v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 860
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 861
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :cond_3
    :try_start_9
    const-string v4, "IsoDep"

    .line 862
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 863
    check-cast v3, Landroid/nfc/tech/IsoDep;

    .line 864
    invoke-virtual {v3}, Landroid/nfc/tech/IsoDep;->getMaxTransceiveLength()I

    move-result v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 865
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 866
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :cond_4
    :try_start_b
    const-string v4, "MifareUltralight"

    .line 867
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 868
    check-cast v3, Landroid/nfc/tech/MifareUltralight;

    .line 869
    invoke-virtual {v3}, Landroid/nfc/tech/MifareUltralight;->getMaxTransceiveLength()I

    move-result v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 870
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 871
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    return-void

    :cond_5
    :try_start_d
    const-string v0, "ReactNativeNfcManager"

    const-string v3, "getMaxTransceiveLength not supported"

    .line 873
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "unsupported tag api"

    aput-object v3, v0, v1

    .line 874
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_e
    const-string v3, "ReactNativeNfcManager"

    const-string v4, "getMaxTransceiveLength fail"

    .line 876
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    .line 877
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    .line 880
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 882
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NfcManager"

    return-object v0
.end method

.method public getNdefMessage(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 209
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTagHandle()Landroid/nfc/Tag;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    new-array v3, v2, [Landroid/nfc/NdefMessage;

    .line 210
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object v3, v4, v2

    .line 211
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "ReactNativeNfcManager"

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    .line 217
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 219
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getNdefStatus(Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v3}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTagHandle()Landroid/nfc/Tag;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v3

    .line 229
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v4

    .line 230
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v5

    .line 231
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->canMakeReadOnly()Z

    move-result v3

    const-string v6, "maxSize"

    .line 232
    invoke-interface {v0, v6, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v4, "isWritable"

    .line 233
    invoke-interface {v0, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "canMakeReadOnly"

    .line 234
    invoke-interface {v0, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    .line 235
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "ReactNativeNfcManager"

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    .line 241
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 243
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getTag(Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTagHandle()Landroid/nfc/Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0, v0}, Lcommunity/revteltech/nfc/NfcManager;->tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 169
    invoke-virtual {v0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-class v5, Landroid/nfc/tech/Ndef;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 171
    :try_start_1
    invoke-static {v0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    new-array v4, v2, [Landroid/nfc/NdefMessage;

    .line 172
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v0, v4}, Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v0, v1

    aput-object v3, v0, v2

    .line 176
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no reference available"

    aput-object v2, v0, v1

    .line 178
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    .line 181
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public goToNfcSetting(Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "goToNfcSetting"

    .line 1030
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "fail to get current activity"

    aput-object v2, v0, v1

    .line 1033
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 1038
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.NFC_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    Landroid/content/Intent;.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK |Intent.FLAG_ACTIVITY_CLEAR_TASK);

    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v1

    .line 1039
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v1

    .line 1041
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnabled(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "isEnabled"

    .line 1019
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    .line 1022
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v4

    .line 1024
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isSupported(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "isSupported"

    .line 992
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1000
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "fail to get current activity"

    aput-object v0, p1, v2

    .line 995
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 999
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_1

    new-array p1, v6, [Ljava/lang/Object;

    aput-object v5, p1, v2

    aput-object v3, p1, v1

    .line 1000
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v4, "MifareClassic"

    .line 1007
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1008
    invoke-static {v0}, Lcommunity/revteltech/nfc/MifareUtil;->isDeviceSupported(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    new-array p1, v6, [Ljava/lang/Object;

    aput-object v5, p1, v2

    aput-object v3, p1, v1

    .line 1009
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    :cond_2
    new-array p1, v6, [Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 1014
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public makeReadOnly(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 676
    monitor-enter p0

    .line 677
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 679
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/Ndef;

    .line 680
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->makeReadOnly()Z

    move-result v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 681
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "ReactNativeNfcManager"

    .line 683
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    .line 684
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    .line 687
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 689
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public mifareClassicAuthenticateA(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 344
    monitor-enter p0

    const/16 v0, 0x41

    .line 345
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcommunity/revteltech/nfc/NfcManager;->mifareClassicAuthenticate(CILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    .line 346
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public mifareClassicAuthenticateB(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 351
    monitor-enter p0

    const/16 v0, 0x42

    .line 352
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcommunity/revteltech/nfc/NfcManager;->mifareClassicAuthenticate(CILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public mifareClassicDecrementBlock(IILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 572
    monitor-enter p0

    .line 573
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 575
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_2

    .line 576
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string p2, "mifareClassicDecrementBlock fail: invalid block %d (max %d)"

    new-array v3, v4, [Ljava/lang/Object;

    .line 582
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    .line 583
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 587
    :cond_1
    :try_start_3
    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareClassic;->decrement(II)V

    new-array p1, v4, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    .line 589
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicDecrementBlock fail: TYPE_UNKNOWN"

    aput-object p2, p1, v1

    .line 578
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/nfc/TagLostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mifareClassicDecrementBlock fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicDecrementBlock fail: TAG_LOST"

    aput-object p2, p1, v1

    .line 591
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no tech request available"

    aput-object p2, p1, v1

    .line 596
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 598
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicGetBlockCountInSector(ILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 361
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string v3, "mifareClassicGetBlockCountInSector fail: invalid sector %d (max %d)"

    new-array v4, v4, [Ljava/lang/Object;

    .line 368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 369
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 373
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->getBlockCountInSector(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicGetBlockCountInSector fail: TYPE_UNKNOWN"

    aput-object v0, p1, v1

    .line 364
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareClassicGetBlockCountInSector fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    .line 378
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 380
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicGetSectorCount(Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 385
    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 388
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 395
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "mifareClassicGetSectorCount fail: TYPE_UNKNOWN"

    aput-object v3, v0, v1

    .line 391
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mifareClassicGetSectorCount fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "no tech request available"

    aput-object v2, v0, v1

    .line 400
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 402
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public mifareClassicIncrementBlock(IILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 541
    monitor-enter p0

    .line 542
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 544
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string p2, "mifareClassicIncrementBlock fail: invalid block %d (max %d)"

    new-array v3, v4, [Ljava/lang/Object;

    .line 551
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    .line 552
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 556
    :cond_1
    :try_start_3
    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareClassic;->increment(II)V

    new-array p1, v4, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    .line 558
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicIncrementBlock fail: TYPE_UNKNOWN"

    aput-object p2, p1, v1

    .line 547
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/nfc/TagLostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 548
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mifareClassicIncrementBlock fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicIncrementBlock fail: TAG_LOST"

    aput-object p2, p1, v1

    .line 560
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no tech request available"

    aput-object p2, p1, v1

    .line 565
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 567
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicReadBlock(ILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 434
    monitor-enter p0

    .line 435
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 437
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_2

    .line 438
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string v3, "mifareClassicReadBlock fail: invalid block %d (max %d)"

    new-array v4, v4, [Ljava/lang/Object;

    .line 444
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 445
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 450
    :cond_1
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->readBlock(I)[B

    move-result-object p1

    .line 452
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    aput-object p1, v0, v2

    .line 453
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicReadBlock fail: TYPE_UNKNOWN"

    aput-object v0, p1, v1

    .line 440
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/nfc/TagLostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 441
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareClassicReadBlock fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicReadBlock fail: TAG_LOST"

    aput-object v0, p1, v1

    .line 455
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    .line 460
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 462
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicReadSector(ILcom/facebook/react/bridge/Callback;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 467
    monitor-enter p0

    .line 468
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 470
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_3

    .line 471
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 475
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string v3, "mifareClassicReadSector fail: invalid sector %d (max %d)"

    new-array v4, v4, [Ljava/lang/Object;

    .line 477
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 478
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 482
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 483
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->getBlockCountInSector(I)I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 486
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Landroid/nfc/tech/MifareClassic;->readBlock(I)[B

    move-result-object v7

    .line 487
    invoke-static {v3, v7}, Lcommunity/revteltech/nfc/NfcManager;->appendBytesToRnArray(Lcom/facebook/react/bridge/WritableArray;[B)Lcom/facebook/react/bridge/WritableArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v0, p1, v1

    aput-object v3, p1, v2

    .line 490
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicReadSector fail: TYPE_UNKNOWN"

    aput-object v0, p1, v1

    .line 473
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/nfc/TagLostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 474
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareClassicReadSector fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicReadSector fail: TAG_LOST"

    aput-object v0, p1, v1

    .line 492
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    .line 497
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 499
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicSectorToBlock(ILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 410
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string v3, "mifareClassicSectorToBlock fail: invalid sector %d (max %d)"

    new-array v4, v4, [Ljava/lang/Object;

    .line 417
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 418
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 422
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicSectorToBlock fail: TYPE_UNKNOWN"

    aput-object v0, p1, v1

    .line 413
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareClassicSectorToBlock fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    .line 427
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 429
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicTransferBlock(ILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 606
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_2

    .line 607
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string v3, "mifareClassicTransferBlock fail: invalid block %d (max %d)"

    new-array v4, v4, [Ljava/lang/Object;

    .line 613
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 614
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 618
    :cond_1
    :try_start_3
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->transfer(I)V

    new-array p1, v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 620
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicTransferBlock fail: TYPE_UNKNOWN"

    aput-object v0, p1, v1

    .line 609
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/nfc/TagLostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 610
    :try_start_4
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareClassicTransferBlock fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareClassicTransferBlock fail: TAG_LOST"

    aput-object v0, p1, v1

    .line 622
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    .line 627
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 629
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public mifareClassicWriteBlock(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 504
    monitor-enter p0

    .line 505
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 507
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_3

    .line 508
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt p1, v3, :cond_1

    const-string p2, "mifareClassicWriteBlock fail: invalid block %d (max %d)"

    new-array v3, v4, [Ljava/lang/Object;

    .line 514
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    .line 515
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 517
    :cond_1
    :try_start_3
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    const/16 v5, 0x10

    if-eq v3, v5, :cond_2

    const-string p1, "mifareClassicWriteBlock fail: invalid block size %d (should be %d)"

    new-array v0, v4, [Ljava/lang/Object;

    .line 519
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    .line 520
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/nfc/TagLostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 521
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 524
    :cond_2
    :try_start_5
    invoke-static {p2}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p2

    .line 525
    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareClassic;->writeBlock(I[B)V

    new-array p1, v4, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    .line 527
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicWriteBlock fail: TYPE_UNKNOWN"

    aput-object p2, p1, v1

    .line 510
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/nfc/TagLostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 511
    :try_start_6
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mifareClassicWriteBlock fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mifareClassicWriteBlock fail: TAG_LOST"

    aput-object p2, p1, v1

    .line 529
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no tech request available"

    aput-object p2, p1, v1

    .line 534
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 536
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public mifareUltralightReadPages(ILcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 634
    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 637
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareUltralight;

    .line 638
    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareUltralight;->readPages(I)[B

    move-result-object p1

    .line 639
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    aput-object p1, v0, v2

    .line 640
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mifareUltralight fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "mifareUltralight fail: TAG_LOST"

    aput-object v0, p1, v1

    .line 643
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    .line 648
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 650
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public mifareUltralightWritePage(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 655
    monitor-enter p0

    .line 656
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 658
    :try_start_1
    invoke-static {p2}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p2

    .line 659
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/MifareUltralight;

    .line 660
    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareUltralight;->writePage(I[B)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 661
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mifareUltralight fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "mifareUltralight fail: TAG_LOST"

    aput-object p2, p1, v2

    .line 664
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "no tech request available"

    aput-object p2, p1, v2

    .line 669
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 671
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const-string p1, "ReactNativeNfcManager"

    const-string p2, "onActivityResult"

    .line 1291
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHostDestroy()V
    .locals 2

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "onDestroy"

    .line 1150
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHostPause()V
    .locals 2

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "onPause"

    .line 1143
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1144
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isResumed:Ljava/lang/Boolean;

    .line 1145
    invoke-direct {p0, v0}, Lcommunity/revteltech/nfc/NfcManager;->enableDisableForegroundDispatch(Z)V

    return-void
.end method

.method public onHostResume()V
    .locals 2

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "onResume"

    .line 1134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isResumed:Ljava/lang/Boolean;

    .line 1136
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    invoke-direct {p0, v0}, Lcommunity/revteltech/nfc/NfcManager;->enableDisableForegroundDispatch(Z)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNativeNfcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    invoke-direct {p0, p1}, Lcommunity/revteltech/nfc/NfcManager;->parseNfcIntent(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1299
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.nfc.extra.TAG"

    .line 1300
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/nfc/Tag;

    .line 1301
    new-instance v1, Landroid/content/Intent;

    const-string v2, "TagFound"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "tag"

    .line 1302
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1303
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "NfcManagerDiscoverTag"

    .line 1304
    invoke-direct {p0, p1, v0}, Lcommunity/revteltech/nfc/NfcManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    :cond_0
    const-string p1, "NfcManagerDiscoverBackgroundTag"

    .line 1306
    invoke-direct {p0, p1, v0}, Lcommunity/revteltech/nfc/NfcManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 1307
    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->bgTag:Lcom/facebook/react/bridge/WritableMap;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public requestNdefWrite(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 900
    monitor-enter p0

    .line 901
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "you should requestTagEvent first"

    aput-object p2, p1, v1

    .line 902
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 903
    monitor-exit p0

    return-void

    .line 906
    :cond_0
    invoke-direct {p0}, Lcommunity/revteltech/nfc/NfcManager;->hasPendingRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "You can only issue one request at a time"

    aput-object p2, p1, v1

    .line 907
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "format"

    .line 909
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v0, "formatReadOnly"

    .line 910
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    move-object v5, p1

    goto :goto_0

    .line 921
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    .line 922
    new-instance p2, Landroid/nfc/NdefMessage;

    invoke-direct {p2, p1}, Landroid/nfc/NdefMessage;-><init>([B)V

    move-object v5, p2

    .line 925
    :goto_0
    new-instance p1, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;

    move-object v3, p1

    move-object v4, p0

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;-><init>(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/NdefMessage;Lcom/facebook/react/bridge/Callback;ZZ)V

    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-array p2, v2, [Ljava/lang/Object;

    .line 932
    invoke-virtual {p1}, Landroid/nfc/FormatException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 935
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public requestTechnology(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->isForegroundEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "you should requestTagEvent first"

    aput-object v0, p1, v1

    .line 136
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcommunity/revteltech/nfc/NfcManager;->hasPendingRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "You can only issue one request at a time"

    aput-object v0, p1, v1

    .line 141
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_1
    new-instance v0, Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcommunity/revteltech/nfc/TagTechnologyRequest;-><init>(Ljava/util/ArrayList;Lcom/facebook/react/bridge/Callback;)V

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNdefPushMessage(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 940
    monitor-enter p0

    .line 941
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->writeNdefRequest:Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 943
    :try_start_1
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 950
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/nfc/NdefMessage;-><init>([B)V

    .line 953
    :cond_0
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    new-array v4, v2, [Landroid/app/Activity;

    .line 954
    invoke-virtual {p1, v3, v0, v4}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 955
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 945
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "cannot get current activity"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "ReactNativeNfcManager"

    .line 957
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v1, [Ljava/lang/Object;

    .line 958
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "You can only issue one request at a time"

    aput-object v0, p1, v2

    .line 961
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 963
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setTimeout(ILcom/facebook/react/bridge/Callback;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 697
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechType()Ljava/lang/String;

    move-result-object v0

    .line 698
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v3}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v3

    const-string v4, "NfcA"

    .line 701
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    check-cast v3, Landroid/nfc/tech/NfcA;

    .line 703
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcA;->setTimeout(I)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 704
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    const-string v4, "NfcF"

    .line 706
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 707
    check-cast v3, Landroid/nfc/tech/NfcF;

    .line 708
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcF;->setTimeout(I)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 709
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 710
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    :try_start_5
    const-string v4, "IsoDep"

    .line 711
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 712
    check-cast v3, Landroid/nfc/tech/IsoDep;

    .line 713
    invoke-virtual {v3, p1}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 714
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 715
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :cond_2
    :try_start_7
    const-string v4, "MifareClassic"

    .line 716
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 717
    check-cast v3, Landroid/nfc/tech/MifareClassic;

    .line 718
    invoke-virtual {v3, p1}, Landroid/nfc/tech/MifareClassic;->setTimeout(I)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 719
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 720
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :cond_3
    :try_start_9
    const-string v4, "MifareUltralight"

    .line 721
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 722
    check-cast v3, Landroid/nfc/tech/MifareUltralight;

    .line 723
    invoke-virtual {v3, p1}, Landroid/nfc/tech/MifareUltralight;->setTimeout(I)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 724
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 725
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :cond_4
    :try_start_b
    const-string p1, "ReactNativeNfcManager"

    const-string v0, "setTimeout not supported"

    .line 727
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "unsupported tag api"

    aput-object v0, p1, v2

    .line 728
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_c
    const-string v0, "ReactNativeNfcManager"

    .line 730
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v1, [Ljava/lang/Object;

    .line 731
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v2

    .line 734
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 736
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p1
.end method

.method public start(Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 968
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ReactNativeNfcManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "start"

    .line 970
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcommunity/revteltech/nfc/NfcManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "fail to get current activity"

    aput-object v1, v0, v3

    .line 975
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 979
    :cond_0
    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 980
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 982
    invoke-direct {p0, v0}, Lcommunity/revteltech/nfc/NfcManager;->parseNfcIntent(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iput-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->bgTag:Lcom/facebook/react/bridge/WritableMap;

    new-array v0, v3, [Ljava/lang/Object;

    .line 983
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "not support in this device"

    .line 985
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "no nfc support"

    aput-object v1, v0, v3

    .line 986
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public transceive(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 768
    monitor-enter p0

    .line 769
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 771
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechType()Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    .line 774
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;

    invoke-virtual {v3}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v3

    const-string v4, "NfcA"

    .line 777
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    .line 778
    check-cast v3, Landroid/nfc/tech/NfcA;

    .line 779
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcA;->transceive([B)[B

    move-result-object p1

    .line 780
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    .line 781
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 782
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    const-string v4, "NfcB"

    .line 783
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 784
    check-cast v3, Landroid/nfc/tech/NfcB;

    .line 785
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcB;->transceive([B)[B

    move-result-object p1

    .line 786
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    .line 787
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 788
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    :try_start_5
    const-string v4, "NfcF"

    .line 789
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 790
    check-cast v3, Landroid/nfc/tech/NfcF;

    .line 791
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcF;->transceive([B)[B

    move-result-object p1

    .line 792
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    .line 793
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 794
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :cond_2
    :try_start_7
    const-string v4, "NfcV"

    .line 795
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 796
    check-cast v3, Landroid/nfc/tech/NfcV;

    .line 797
    invoke-virtual {v3, p1}, Landroid/nfc/tech/NfcV;->transceive([B)[B

    move-result-object p1

    .line 798
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    .line 799
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 800
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :cond_3
    :try_start_9
    const-string v4, "IsoDep"

    .line 801
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 802
    check-cast v3, Landroid/nfc/tech/IsoDep;

    .line 803
    invoke-virtual {v3, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object p1

    .line 804
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    .line 805
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 806
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :cond_4
    :try_start_b
    const-string v4, "MifareClassic"

    .line 807
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 808
    check-cast v3, Landroid/nfc/tech/MifareClassic;

    .line 809
    invoke-virtual {v3, p1}, Landroid/nfc/tech/MifareClassic;->transceive([B)[B

    move-result-object p1

    .line 810
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    .line 811
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 812
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    return-void

    :cond_5
    :try_start_d
    const-string v4, "MifareUltralight"

    .line 813
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 814
    check-cast v3, Landroid/nfc/tech/MifareUltralight;

    .line 815
    invoke-virtual {v3, p1}, Landroid/nfc/tech/MifareUltralight;->transceive([B)[B

    move-result-object p1

    .line 816
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->bytesToRnArray([B)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p1, v0, v2

    .line 817
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 818
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    return-void

    :cond_6
    :try_start_f
    const-string p1, "ReactNativeNfcManager"

    const-string v0, "transceive not supported"

    .line 820
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "unsupported tag api"

    aput-object v0, p1, v1

    .line 821
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_10
    const-string v0, "ReactNativeNfcManager"

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transceive fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "transceive fail"

    aput-object v0, p1, v1

    .line 824
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v1

    .line 827
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 829
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw p1
.end method

.method public writeNdefMessage(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 251
    :try_start_1
    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechHandle()Landroid/nfc/tech/TagTechnology;

    move-result-object v0

    check-cast v0, Landroid/nfc/tech/Ndef;

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "unsupported tag api"

    aput-object v0, p1, v2

    .line 253
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->rnArrayToBytes(Lcom/facebook/react/bridge/ReadableArray;)[B

    move-result-object p1

    .line 256
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-direct {v3, p1}, Landroid/nfc/NdefMessage;-><init>([B)V

    invoke-virtual {v0, v3}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 257
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "ReactNativeNfcManager"

    .line 260
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v1, [Ljava/lang/Object;

    .line 261
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "no tech request available"

    aput-object v0, p1, v2

    .line 264
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 266
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
