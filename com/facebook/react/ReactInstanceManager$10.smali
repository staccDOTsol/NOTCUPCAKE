.class Lcom/facebook/react/ReactInstanceManager$10;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ComponentNameResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/ReactInstanceManager;->createReactContext(Lcom/facebook/react/bridge/JavaScriptExecutor;Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/bridge/ReactApplicationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/ReactInstanceManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    .line 1406
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager$10;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentNames()[Ljava/lang/String;
    .locals 3

    .line 1409
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$10;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getViewManagerNames()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1411
    # getter for: Lcom/facebook/react/ReactInstanceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/react/ReactInstanceManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No ViewManager names found"

    invoke-static {v0, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    .line 1414
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
