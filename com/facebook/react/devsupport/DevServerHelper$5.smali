.class Lcom/facebook/react/devsupport/DevServerHelper$5;
.super Landroid/os/AsyncTask;
.source "DevServerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevServerHelper;->openUrl(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevServerHelper;

.field final synthetic val$context:Lcom/facebook/react/bridge/ReactContext;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$5;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevServerHelper$5;->val$context:Lcom/facebook/react/bridge/ReactContext;

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevServerHelper$5;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/react/devsupport/DevServerHelper$5;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 256
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevServerHelper$5;->doSync()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 253
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public doSync()Z
    .locals 4

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$5;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevServerHelper$5;->val$context:Lcom/facebook/react/bridge/ReactContext;

    # invokes: Lcom/facebook/react/devsupport/DevServerHelper;->getOpenUrlEndpoint(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->access$600(Lcom/facebook/react/devsupport/DevServerHelper;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "url"

    iget-object v3, p0, Lcom/facebook/react/devsupport/DevServerHelper$5;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    .line 263
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 265
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 266
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 267
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 270
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevServerHelper$5;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactNative"

    invoke-static {v2, v1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$5;->val$context:Lcom/facebook/react/bridge/ReactContext;

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevServerHelper$5;->val$errorMessage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/react/util/RNLog;->w(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 253
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
