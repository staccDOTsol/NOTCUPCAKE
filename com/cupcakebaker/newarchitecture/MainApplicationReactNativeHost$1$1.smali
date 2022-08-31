.class Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1$1;
.super Ljava/lang/Object;
.source "MainApplicationReactNativeHost.java"

# interfaces
.implements Lcom/facebook/react/bridge/JSIModuleSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;->getJSIModules(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/JavaScriptContextHolder;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;

.field final synthetic val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>(Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1$1;->this$1:Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;

    iput-object p2, p0, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1$1;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJSIModuleProvider()Lcom/facebook/react/bridge/JSIModuleProvider;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/bridge/JSIModuleProvider<",
            "Lcom/facebook/react/bridge/UIManager;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/facebook/react/fabric/ComponentFactory;

    invoke-direct {v0}, Lcom/facebook/react/fabric/ComponentFactory;-><init>()V

    .line 92
    invoke-static {v0}, Lcom/facebook/react/fabric/CoreComponentsRegistry;->register(Lcom/facebook/react/fabric/ComponentFactory;)Lcom/facebook/react/fabric/CoreComponentsRegistry;

    .line 97
    invoke-static {v0}, Lcom/cupcakebaker/newarchitecture/components/MainComponentsRegistry;->register(Lcom/facebook/react/fabric/ComponentFactory;)Lcom/cupcakebaker/newarchitecture/components/MainComponentsRegistry;

    .line 99
    iget-object v1, p0, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1$1;->this$1:Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;

    iget-object v1, v1, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1;->this$0:Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost;

    invoke-virtual {v1}, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v1

    .line 101
    new-instance v2, Lcom/facebook/react/uimanager/ViewManagerRegistry;

    iget-object v3, p0, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1$1;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 103
    invoke-virtual {v1, v3}, Lcom/facebook/react/ReactInstanceManager;->getOrCreateViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;-><init>(Ljava/util/List;)V

    .line 105
    new-instance v1, Lcom/facebook/react/fabric/FabricJSIModuleProvider;

    iget-object v3, p0, Lcom/cupcakebaker/newarchitecture/MainApplicationReactNativeHost$1$1;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v4, Lcom/facebook/react/fabric/EmptyReactNativeConfig;

    invoke-direct {v4}, Lcom/facebook/react/fabric/EmptyReactNativeConfig;-><init>()V

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/facebook/react/fabric/FabricJSIModuleProvider;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/fabric/ComponentFactory;Lcom/facebook/react/fabric/ReactNativeConfig;Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    return-object v1
.end method

.method public getJSIModuleType()Lcom/facebook/react/bridge/JSIModuleType;
    .locals 1

    .line 86
    sget-object v0, Lcom/facebook/react/bridge/JSIModuleType;->UIManager:Lcom/facebook/react/bridge/JSIModuleType;

    return-object v0
.end method
