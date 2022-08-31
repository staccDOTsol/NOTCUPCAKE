.class public abstract Lcom/swmansion/rnscreens/FabricEnabledViewGroup;
.super Landroid/view/ViewGroup;
.source "FabricEnabledViewGroup.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/FabricEnabledViewGroup;",
        "Landroid/view/ViewGroup;",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "(Lcom/facebook/react/bridge/ReactContext;)V",
        "updateScreenSizeFabric",
        "",
        "width",
        "",
        "height",
        "react-native-screens_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 6
    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final updateScreenSizeFabric(II)V
    .locals 0

    return-void
.end method
