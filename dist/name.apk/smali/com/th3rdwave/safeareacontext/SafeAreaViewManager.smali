.class public final Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;
.super Lcom/facebook/react/views/view/ReactViewManager;
.source "SafeAreaViewManager.kt"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNCSafeAreaViewManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCSafeAreaView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/views/view/ReactViewManager;",
        "Lcom/facebook/react/viewmanagers/RNCSafeAreaViewManagerInterface<",
        "Lcom/th3rdwave/safeareacontext/SafeAreaView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u001e2\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0014J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0017J\u001a\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000eH\u0017J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;",
        "Lcom/facebook/react/views/view/ReactViewManager;",
        "Lcom/facebook/react/viewmanagers/RNCSafeAreaViewManagerInterface;",
        "Lcom/th3rdwave/safeareacontext/SafeAreaView;",
        "()V",
        "createShadowNodeInstance",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getDelegate",
        "Lcom/facebook/react/uimanager/ViewManagerDelegate;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "getName",
        "",
        "getShadowNodeClass",
        "Ljava/lang/Class;",
        "setEdges",
        "",
        "view",
        "propList",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setMode",
        "mode",
        "updateState",
        "",
        "props",
        "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
        "stateWrapper",
        "Lcom/facebook/react/uimanager/StateWrapper;",
        "Companion",
        "react-native-safe-area-context_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "RNCSafeAreaView"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->Companion:Lcom/th3rdwave/safeareacontext/SafeAreaViewManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/facebook/react/views/view/ReactViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->createShadowNodeInstance()Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/LayoutShadowNode;

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->createShadowNodeInstance()Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ReactShadowNode;

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;
    .locals 1

    .line 25
    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;

    invoke-direct {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/th3rdwave/safeareacontext/SafeAreaView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/th3rdwave/safeareacontext/SafeAreaView;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/th3rdwave/safeareacontext/SafeAreaView;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaView;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/th3rdwave/safeareacontext/SafeAreaView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/facebook/react/views/view/ReactViewGroup;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCSafeAreaView"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;

    return-object v0
.end method

.method public bridge synthetic setEdges(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/th3rdwave/safeareacontext/SafeAreaView;

    invoke-virtual {p0, p1, p2}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->setEdges(Lcom/th3rdwave/safeareacontext/SafeAreaView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setEdges(Lcom/th3rdwave/safeareacontext/SafeAreaView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "edges"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    .line 43
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    if-eqz p2, :cond_5

    const/4 v1, 0x0

    .line 45
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    add-int/lit8 v3, v1, 0x1

    .line 46
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "right"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    sget-object v1, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->RIGHT:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    const-string v4, "left"

    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    sget-object v1, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->LEFT:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_2
    const-string v4, "top"

    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 48
    :cond_2
    sget-object v1, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->TOP:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_3
    const-string v4, "bottom"

    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 54
    :cond_3
    sget-object v1, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->BOTTOM:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_1
    move v1, v3

    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {p1, v0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->setEdges(Ljava/util/EnumSet;)V

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic setMode(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/th3rdwave/safeareacontext/SafeAreaView;

    invoke-virtual {p0, p1, p2}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->setMode(Lcom/th3rdwave/safeareacontext/SafeAreaView;Ljava/lang/String;)V

    return-void
.end method

.method public setMode(Lcom/th3rdwave/safeareacontext/SafeAreaView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mode"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "padding"

    .line 32
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object p2, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    invoke-virtual {p1, p2}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->setMode(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V

    goto :goto_0

    :cond_0
    const-string v0, "margin"

    .line 35
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 36
    sget-object p2, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->MARGIN:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    invoke-virtual {p1, p2}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->setMode(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/facebook/react/views/view/ReactViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/th3rdwave/safeareacontext/SafeAreaViewManager;->updateState(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateState(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    check-cast p1, Lcom/th3rdwave/safeareacontext/SafeAreaView;

    invoke-virtual {p1}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getFabricViewStateManager()Lcom/facebook/react/uimanager/FabricViewStateManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/facebook/react/uimanager/FabricViewStateManager;->setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V

    const/4 p1, 0x0

    return-object p1
.end method
