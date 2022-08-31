.class public Lcom/reactnativecommunity/clipboard/ClipboardModule;
.super Lcom/facebook/react/bridge/ContextBaseJavaModule;
.source "ClipboardModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCClipboard"
.end annotation


# static fields
.field public static final CLIPBOARD_TEXT_CHANGED:Ljava/lang/String; = "RNCClipboard_TEXT_CHANGED"

.field public static final NAME:Ljava/lang/String; = "RNCClipboard"


# instance fields
.field private listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ContextBaseJavaModule;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/reactnativecommunity/clipboard/ClipboardModule;->listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 44
    iput-object p1, p0, Lcom/reactnativecommunity/clipboard/ClipboardModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method static synthetic access$000(Lcom/reactnativecommunity/clipboard/ClipboardModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/reactnativecommunity/clipboard/ClipboardModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method private getClipboardService()Landroid/content/ClipboardManager;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/reactnativecommunity/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/reactnativecommunity/clipboard/ClipboardModule;->getContext()Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public getImage(Lcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/reactnativecommunity/clipboard/ClipboardModule;->getClipboardService()Landroid/content/ClipboardManager;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    .line 100
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 106
    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 111
    iget-object v3, p0, Lcom/reactnativecommunity/clipboard/ClipboardModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 112
    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v5, "image/jpeg"

    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "image/jpg"

    const-string v8, "image/png"

    if-nez v6, :cond_2

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 115
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 117
    :try_start_0
    invoke-static {v3, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x64

    if-nez v5, :cond_3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    :cond_3
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 125
    :cond_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 126
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";base64,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    :cond_6
    :goto_0
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCClipboard"

    return-object v0
.end method

.method public getString(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/reactnativecommunity/clipboard/ClipboardModule;->getClipboardService()Landroid/content/ClipboardManager;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 63
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public hasString(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/reactnativecommunity/clipboard/ClipboardModule;->getClipboardService()Landroid/content/ClipboardManager;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 92
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public removeListener()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/reactnativecommunity/clipboard/ClipboardModule;->listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    invoke-direct {p0}, Lcom/reactnativecommunity/clipboard/ClipboardModule;->getClipboardService()Landroid/content/ClipboardManager;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/reactnativecommunity/clipboard/ClipboardModule;->listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public setListener()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/reactnativecommunity/clipboard/ClipboardModule;->getClipboardService()Landroid/content/ClipboardManager;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/reactnativecommunity/clipboard/ClipboardModule$1;

    invoke-direct {v1, p0}, Lcom/reactnativecommunity/clipboard/ClipboardModule$1;-><init>(Lcom/reactnativecommunity/clipboard/ClipboardModule;)V

    iput-object v1, p0, Lcom/reactnativecommunity/clipboard/ClipboardModule;->listener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 78
    invoke-direct {p0}, Lcom/reactnativecommunity/clipboard/ClipboardModule;->getClipboardService()Landroid/content/ClipboardManager;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
