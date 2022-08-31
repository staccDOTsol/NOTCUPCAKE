.class public Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost;
.super Lcom/facebook/react/ReactNativeHost;
.source "MainApplicationReactNativeHost.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactNativeHost;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method protected getJSIModulePackage()Lcom/facebook/react/bridge/JSIModulePackage;
    .locals 1

    .line 73
    new-instance v0, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;

    invoke-direct {v0, p0}, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;-><init>(Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost;)V

    return-object v0
.end method

.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "index"

    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/facebook/react/PackageList;

    invoke-direct {v0, p0}, Lcom/facebook/react/PackageList;-><init>(Lcom/facebook/react/ReactNativeHost;)V

    invoke-virtual {v0}, Lcom/facebook/react/PackageList;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getReactPackageTurboModuleManagerDelegateBuilder()Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;
    .locals 1

    .line 68
    new-instance v0, Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate$Builder;

    invoke-direct {v0}, Lcom/cupcakebaker/newarchitecture/modules/MainApplicationTurboModuleManagerDelegate$Builder;-><init>()V

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
