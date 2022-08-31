.class public Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate;
.super Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;
.source "MainApplicationTurboModuleManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate$Builder;
    }
.end annotation


# static fields
.field private static volatile sIsSoLibraryLoaded:Z


# direct methods
.method protected constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method native canCreateTurboModule(Ljava/lang/String;)Z
.end method

.method protected native initHybrid()Lcom/facebook/jni/HybridData;
.end method

.method protected declared-synchronized maybeLoadOtherSoLibraries()V
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    sget-boolean v0, Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate;->sIsSoLibraryLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "cupcakebaker_appmodules"

    .line 44
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 45
    sput-boolean v0, Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate;->sIsSoLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
