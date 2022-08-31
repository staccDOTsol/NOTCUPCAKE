.class public final Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "SafeAreaViewShadowNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0017J\u0018\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0018H\u0017J\u0008\u0010\u001b\u001a\u00020\u000bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        "()V",
        "mLocalData",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;",
        "mMargins",
        "",
        "mNeedsUpdate",
        "",
        "mPaddings",
        "onBeforeLayout",
        "",
        "nativeViewHierarchyOptimizer",
        "Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;",
        "resetInsets",
        "mode",
        "Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;",
        "setLocalData",
        "data",
        "",
        "setMargins",
        "index",
        "",
        "margin",
        "Lcom/facebook/react/bridge/Dynamic;",
        "setPaddings",
        "padding",
        "updateInsets",
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


# instance fields
.field private mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

.field private final mMargins:[F

.field private mNeedsUpdate:Z

.field private final mPaddings:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 9
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    .line 11
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    .line 12
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    .line 16
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 17
    iget-object v3, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    const/high16 v4, 0x7fc00000    # NaNf

    aput v4, v3, v1

    .line 18
    iget-object v3, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aput v4, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final resetInsets(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V
    .locals 5

    .line 86
    sget-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget p1, p1, v4

    invoke-super {p0, v4, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 88
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget p1, p1, v4

    invoke-super {p0, v1, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 89
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget p1, p1, v3

    invoke-super {p0, v3, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    .line 90
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    aget p1, p1, v2

    invoke-super {p0, v2, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget p1, p1, v4

    invoke-super {p0, v4, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 93
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget p1, p1, v4

    invoke-super {p0, v1, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 94
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget p1, p1, v3

    invoke-super {p0, v3, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 95
    iget-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    aget p1, p1, v2

    invoke-super {p0, v2, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->markUpdated()V

    return-void
.end method

.method private final updateInsets()V
    .locals 16

    move-object/from16 v0, p0

    .line 23
    iget-object v1, v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    if-nez v1, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v2

    sget-object v3, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    :goto_0
    const/16 v3, 0x8

    .line 29
    aget v3, v2, v3

    .line 30
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    move v6, v4

    move v7, v6

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x7

    .line 36
    aget v8, v2, v8

    .line 37
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_3

    move v3, v8

    move v6, v3

    :cond_3
    const/4 v8, 0x6

    .line 41
    aget v8, v2, v8

    .line 42
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_4

    move v4, v8

    move v7, v4

    :cond_4
    const/4 v8, 0x1

    .line 46
    aget v9, v2, v8

    .line 47
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_5

    move v3, v9

    :cond_5
    const/4 v9, 0x2

    .line 50
    aget v10, v2, v9

    .line 51
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_6

    move v4, v10

    :cond_6
    const/4 v10, 0x3

    .line 54
    aget v11, v2, v10

    .line 55
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_7

    move v6, v11

    :cond_7
    const/4 v11, 0x0

    .line 58
    aget v2, v2, v11

    .line 59
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_8

    move v7, v2

    .line 62
    :cond_8
    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v2

    .line 63
    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v3

    .line 64
    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v4

    .line 65
    invoke-static {v7}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v6

    .line 66
    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getEdges()Ljava/util/EnumSet;

    move-result-object v7

    .line 67
    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getInsets()Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v12

    .line 68
    sget-object v13, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->TOP:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v7, v13}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v12}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getTop()F

    move-result v13

    goto :goto_2

    :cond_9
    const/4 v13, 0x0

    .line 69
    :goto_2
    sget-object v14, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->RIGHT:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v7, v14}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v12}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getRight()F

    move-result v14

    goto :goto_3

    :cond_a
    const/4 v14, 0x0

    .line 70
    :goto_3
    sget-object v15, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->BOTTOM:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v7, v15}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v12}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getBottom()F

    move-result v15

    goto :goto_4

    :cond_b
    const/4 v15, 0x0

    .line 71
    :goto_4
    sget-object v5, Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;->LEFT:Lcom/th3rdwave/safeareacontext/SafeAreaViewEdges;

    invoke-virtual {v7, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v12}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->getLeft()F

    move-result v5

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    .line 72
    :goto_5
    invoke-virtual {v1}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v1

    sget-object v7, Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;->PADDING:Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    if-ne v1, v7, :cond_d

    add-float/2addr v13, v2

    .line 73
    invoke-super {v0, v8, v13}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    add-float/2addr v14, v3

    .line 74
    invoke-super {v0, v9, v14}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    add-float/2addr v15, v4

    .line 75
    invoke-super {v0, v10, v15}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    add-float/2addr v5, v6

    .line 76
    invoke-super {v0, v11, v5}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPadding(IF)V

    goto :goto_6

    :cond_d
    add-float/2addr v13, v2

    .line 78
    invoke-super {v0, v8, v13}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    add-float/2addr v14, v3

    .line 79
    invoke-super {v0, v9, v14}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    add-float/2addr v15, v4

    .line 80
    invoke-super {v0, v10, v15}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    add-float/2addr v5, v6

    .line 81
    invoke-super {v0, v11, v5}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargin(IF)V

    :goto_6
    return-void
.end method


# virtual methods
.method public onBeforeLayout(Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)V
    .locals 1

    const-string v0, "nativeViewHierarchyOptimizer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-boolean p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    .line 103
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->updateInsets()V

    :cond_0
    return-void
.end method

.method public setLocalData(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    instance-of v0, p1, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    invoke-virtual {v2}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;->getMode()Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->resetInsets(Lcom/th3rdwave/safeareacontext/SafeAreaViewMode;)V

    .line 115
    :cond_1
    check-cast p1, Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mLocalData:Lcom/th3rdwave/safeareacontext/SafeAreaViewLocalData;

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    .line 117
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->updateInsets()V

    return-void
.end method

.method public setMargins(ILcom/facebook/react/bridge/Dynamic;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        names = {
            "margin",
            "marginVertical",
            "marginHorizontal",
            "marginStart",
            "marginEnd",
            "marginTop",
            "marginBottom",
            "marginLeft",
            "marginRight"
        }
    .end annotation

    const-string v0, "margin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    aget v0, v0, p1

    .line 155
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mMargins:[F

    .line 156
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_0

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7fc00000    # NaNf

    :goto_0
    aput v2, v1, v0

    .line 157
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setMargins(ILcom/facebook/react/bridge/Dynamic;)V

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    return-void
.end method

.method public setPaddings(ILcom/facebook/react/bridge/Dynamic;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactPropGroup;
        names = {
            "padding",
            "paddingVertical",
            "paddingHorizontal",
            "paddingStart",
            "paddingEnd",
            "paddingTop",
            "paddingBottom",
            "paddingLeft",
            "paddingRight"
        }
    .end annotation

    const-string v0, "padding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/facebook/react/uimanager/ViewProps;->PADDING_MARGIN_SPACING_TYPES:[I

    aget v0, v0, p1

    .line 135
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mPaddings:[F

    .line 136
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_0

    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7fc00000    # NaNf

    :goto_0
    aput v2, v1, v0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setPaddings(ILcom/facebook/react/bridge/Dynamic;)V

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaViewShadowNode;->mNeedsUpdate:Z

    return-void
.end method
