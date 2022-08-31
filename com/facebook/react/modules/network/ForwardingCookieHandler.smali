.class public Lcom/facebook/react/modules/network/ForwardingCookieHandler;
.super Ljava/net/CookieHandler;
.source "ForwardingCookieHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;
    }
.end annotation


# static fields
.field private static final COOKIE_HEADER:Ljava/lang/String; = "Cookie"

.field private static final VERSION_ONE_HEADER:Ljava/lang/String; = "Set-cookie2"

.field private static final VERSION_ZERO_HEADER:Ljava/lang/String; = "Set-cookie"


# instance fields
.field private final mContext:Lcom/facebook/react/bridge/ReactContext;

.field private mCookieManager:Landroid/webkit/CookieManager;

.field private final mCookieSaver:Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 47
    new-instance p1, Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;

    invoke-direct {p1, p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;-><init>(Lcom/facebook/react/modules/network/ForwardingCookieHandler;)V

    iput-object p1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieSaver:Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/modules/network/ForwardingCookieHandler;)Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieSaver:Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/react/modules/network/ForwardingCookieHandler;Ljava/lang/Runnable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/modules/network/ForwardingCookieHandler;)Landroid/webkit/CookieManager;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object p0

    return-object p0
.end method

.method private addCookieAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, p1, p2, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private clearCookiesAsync(Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$1;-><init>(Lcom/facebook/react/modules/network/ForwardingCookieHandler;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private getCookieManager()Landroid/webkit/CookieManager;
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieManager:Landroid/webkit/CookieManager;

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->possiblyWorkaroundSyncManager(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieManager:Landroid/webkit/CookieManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MissingWebViewPackageException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 150
    :cond_0
    throw v1

    :catch_1
    return-object v0

    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieManager:Landroid/webkit/CookieManager;

    return-object v0
.end method

.method private static isCookieHeader(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Set-cookie"

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Set-cookie2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private static possiblyWorkaroundSyncManager(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private runInBackground(Ljava/lang/Runnable;)V
    .locals 2

    .line 120
    new-instance v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler$2;

    iget-object v1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$2;-><init>(Lcom/facebook/react/modules/network/ForwardingCookieHandler;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 125
    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public addCookies(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1, v1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->addCookieAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 104
    iget-object p1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieSaver:Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;

    invoke-virtual {p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$CookieSaver;->onCookiesModified()V

    return-void
.end method

.method public clearCookies(Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->clearCookiesAsync(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object p2

    if-nez p2, :cond_0

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 61
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "Cookie"

    invoke-static {p2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 69
    invoke-static {v1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->isCookieHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->addCookies(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
