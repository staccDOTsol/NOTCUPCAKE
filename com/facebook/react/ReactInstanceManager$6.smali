.class Lcom/facebook/react/ReactInstanceManager$6;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/ReactInstanceManager;->setupReactContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/ReactInstanceManager;

.field final synthetic val$finalListeners:[Lcom/facebook/react/ReactInstanceEventListener;

.field final synthetic val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactInstanceManager;[Lcom/facebook/react/ReactInstanceEventListener;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 1200
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager$6;->this$0:Lcom/facebook/react/ReactInstanceManager;

    iput-object p2, p0, Lcom/facebook/react/ReactInstanceManager$6;->val$finalListeners:[Lcom/facebook/react/ReactInstanceEventListener;

    iput-object p3, p0, Lcom/facebook/react/ReactInstanceManager$6;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1203
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$6;->val$finalListeners:[Lcom/facebook/react/ReactInstanceEventListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1209
    iget-object v4, p0, Lcom/facebook/react/ReactInstanceManager$6;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-interface {v3, v4}, Lcom/facebook/react/ReactInstanceEventListener;->onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
