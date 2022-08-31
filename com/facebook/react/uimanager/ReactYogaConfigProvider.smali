.class public Lcom/facebook/react/uimanager/ReactYogaConfigProvider;
.super Ljava/lang/Object;
.source "ReactYogaConfigProvider.java"


# static fields
.field private static YOGA_CONFIG:Lcom/facebook/yoga/YogaConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/facebook/yoga/YogaConfig;
    .locals 2

    .line 18
    sget-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->YOGA_CONFIG:Lcom/facebook/yoga/YogaConfig;

    if-nez v0, :cond_0

    .line 19
    invoke-static {}, Lcom/facebook/yoga/YogaConfigFactory;->create()Lcom/facebook/yoga/YogaConfig;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->YOGA_CONFIG:Lcom/facebook/yoga/YogaConfig;

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaConfig;->setPointScaleFactor(F)V

    .line 21
    sget-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->YOGA_CONFIG:Lcom/facebook/yoga/YogaConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaConfig;->setUseLegacyStretchBehaviour(Z)V

    .line 23
    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->YOGA_CONFIG:Lcom/facebook/yoga/YogaConfig;

    return-object v0
.end method
