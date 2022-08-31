.class Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;
.super Lokhttp3/WebSocketListener;
.source "InspectorPackagerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/InspectorPackagerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# static fields
.field private static final RECONNECT_DELAY_MS:I = 0x7d0


# instance fields
.field private mClosed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHttpClient:Lokhttp3/OkHttpClient;

.field private mSuppressConnectionErrors:Z

.field private final mUrl:Ljava/lang/String;

.field private mWebSocket:Lokhttp3/WebSocket;

.field final synthetic this$0:Lcom/facebook/react/devsupport/InspectorPackagerConnection;


# direct methods
.method public constructor <init>(Lcom/facebook/react/devsupport/InspectorPackagerConnection;Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->this$0:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mUrl:Ljava/lang/String;

    .line 200
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private abort(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred, shutting down websocket connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InspectorPackagerConnection"

    invoke-static {v0, p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    iget-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->this$0:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    invoke-virtual {p1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->closeAllConnections()V

    .line 306
    invoke-direct {p0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->closeWebSocketQuietly()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;)Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    return p0
.end method

.method private closeWebSocketQuietly()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    :try_start_0
    const-string v2, "End of session"

    .line 312
    invoke-interface {v0, v1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    :cond_0
    return-void
.end method

.method private reconnect()V
    .locals 4

    .line 254
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    if-nez v0, :cond_1

    .line 257
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mSuppressConnectionErrors:Z

    if-nez v0, :cond_0

    const-string v0, "InspectorPackagerConnection"

    const-string v1, "Couldn\'t connect to packager, will silently retry"

    .line 258
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mSuppressConnectionErrors:Z

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$1;-><init>(Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t reconnect closed client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    .line 276
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    :try_start_0
    const-string v2, "End of session"

    .line 278
    invoke-interface {v0, v1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    :cond_0
    return-void
.end method

.method public connect()V
    .locals 4

    .line 237
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 243
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 244
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 245
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mHttpClient:Lokhttp3/OkHttpClient;

    .line 249
    :cond_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0, p0}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    return-void

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t connect closed client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    .line 230
    iget-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->this$0:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    invoke-virtual {p1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->closeAllConnections()V

    .line 231
    iget-boolean p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    if-nez p1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->reconnect()V

    :cond_0
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    if-eqz p1, :cond_0

    const-string p1, "Websocket exception"

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->abort(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :cond_0
    iget-boolean p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mClosed:Z

    if-nez p1, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->reconnect()V

    :cond_1
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 1

    .line 221
    :try_start_0
    iget-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->this$0:Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->handleProxyMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 223
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    return-void
.end method

.method public send(Lorg/json/JSONObject;)V
    .locals 3

    .line 287
    new-instance v0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;-><init>(Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lokhttp3/WebSocket;

    iget-object v1, p0, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection;->mWebSocket:Lokhttp3/WebSocket;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 300
    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$Connection$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
