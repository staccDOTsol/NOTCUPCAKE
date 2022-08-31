.class public Lcom/cupcakebaker/newarchitecture/components/MainComponentsRegistry;
.super Ljava/lang/Object;
.source "MainComponentsRegistry.java"


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fabricjni"

    .line 19
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method private constructor <init>(Lcom/facebook/react/fabric/ComponentFactory;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/cupcakebaker/newarchitecture/components/MainComponentsRegistry;->initHybrid(Lcom/facebook/react/fabric/ComponentFactory;)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lcom/cupcakebaker/newarchitecture/components/MainComponentsRegistry;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private native initHybrid(Lcom/facebook/react/fabric/ComponentFactory;)Lcom/facebook/jni/HybridData;
.end method

.method public static register(Lcom/facebook/react/fabric/ComponentFactory;)Lcom/cupcakebaker/newarchitecture/components/MainComponentsRegistry;
    .locals 1

    .line 34
    new-instance v0, Lcom/cupcakebaker/newarchitecture/components/MainComponentsRegistry;

    invoke-direct {v0, p0}, Lcom/cupcakebaker/newarchitecture/components/MainComponentsRegistry;-><init>(Lcom/facebook/react/fabric/ComponentFactory;)V

    return-object v0
.end method
