.class Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;
.super Ljava/lang/Object;
.source "MainApplicationReactNativeHost.java"

# interfaces
.implements Lcom/facebook/react/bridge/JSIModulePackage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost;->getJSIModulePackage()Lcom/facebook/react/bridge/JSIModulePackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost;


# direct methods
.method constructor <init>(Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;->this$0:Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJSIModules(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/JavaScriptContextHolder;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Lcom/facebook/react/bridge/JavaScriptContextHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/JSIModuleSpec;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v0, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1$1;

    invoke-direct {v0, p0, p1}, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1$1;-><init>(Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
