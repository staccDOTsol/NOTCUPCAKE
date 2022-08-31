.class public Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;
.super Lcom/facebook/fbreact/specs/NativeI18nManagerSpec;
.source "I18nManagerModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "I18nManager"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "I18nManager"


# instance fields
.field private final sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeI18nManagerSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 26
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    return-void
.end method


# virtual methods
.method public allowRTL(Z)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    invoke-virtual {p0}, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->allowRTL(Landroid/content/Context;Z)V

    return-void
.end method

.method public forceRTL(Z)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    invoke-virtual {p0}, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->forceRTL(Landroid/content/Context;Z)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "I18nManager"

    return-object v0
.end method

.method public getTypedExportedConstants()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 47
    :goto_0
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    invoke-virtual {v3, v0}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isRTL"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v3, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    .line 50
    invoke-virtual {v3, v0}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->doLeftAndRightSwapInRTL(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "doLeftAndRightSwapInRTL"

    .line 49
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localeIdentifier"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public swapLeftAndRightInRTL(Z)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->sharedI18nUtilInstance:Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    invoke-virtual {p0}, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->swapLeftAndRightInRTL(Landroid/content/Context;Z)V

    return-void
.end method
