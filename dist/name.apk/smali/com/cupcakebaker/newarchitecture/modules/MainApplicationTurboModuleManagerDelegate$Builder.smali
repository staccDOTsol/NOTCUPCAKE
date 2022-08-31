.class public Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate$Builder;
.super Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;
.source "MainApplicationTurboModuleManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method protected build(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;)",
            "Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate;

    invoke-direct {v0, p1, p2}, Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic build(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate$Builder;->build(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate;

    move-result-object p1

    return-object p1
.end method
