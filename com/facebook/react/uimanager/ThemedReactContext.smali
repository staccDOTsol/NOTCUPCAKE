.class public Lcom/facebook/react/uimanager/ThemedReactContext;
.super Lcom/facebook/react/bridge/ReactContext;
.source "ThemedReactContext.java"


# instance fields
.field private final mModuleName:Ljava/lang/String;

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mSurfaceId:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 35
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/ReactContext;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasCatalystInstance()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/ThemedReactContext;->initializeWithInstance(Lcom/facebook/react/bridge/CatalystInstance;)V

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 54
    iput-object p3, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mModuleName:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mSurfaceId:I

    return-void
.end method


# virtual methods
.method public addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getJSIModule(Lcom/facebook/react/bridge/JSIModuleType;)Lcom/facebook/react/bridge/JSIModule;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->isBridgeless()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSIModule(Lcom/facebook/react/bridge/JSIModuleType;)Lcom/facebook/react/bridge/JSIModule;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/bridge/ReactContext;->getJSIModule(Lcom/facebook/react/bridge/JSIModuleType;)Lcom/facebook/react/bridge/JSIModule;

    move-result-object p1

    return-object p1
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method public getSurfaceID()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSurfaceId()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mSurfaceId:I

    return v0
.end method

.method public hasCurrentActivity()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasCurrentActivity()Z

    move-result v0

    return v0
.end method

.method public isBridgeless()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->isBridgeless()Z

    move-result v0

    return v0
.end method

.method public removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/facebook/react/uimanager/ThemedReactContext;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method
