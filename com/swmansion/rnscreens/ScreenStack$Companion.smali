.class public final Lcom/swmansion/rnscreens/ScreenStack$Companion;
.super Ljava/lang/Object;
.source "ScreenStack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenStack$Companion;",
        "",
        "()V",
        "isTransparent",
        "",
        "fragment",
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        "needsDrawReordering",
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
.method private constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isTransparent(Lcom/swmansion/rnscreens/ScreenStack$Companion;Lcom/swmansion/rnscreens/ScreenStackFragment;)Z
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack$Companion;->isTransparent(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needsDrawReordering(Lcom/swmansion/rnscreens/ScreenStack$Companion;Lcom/swmansion/rnscreens/ScreenStackFragment;)Z
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack$Companion;->needsDrawReordering(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z

    move-result p0

    return p0
.end method

.method private final isTransparent(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z
    .locals 1

    .line 339
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getStackPresentation()Lcom/swmansion/rnscreens/Screen$StackPresentation;

    move-result-object p1

    .line 340
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->TRANSPARENT_MODAL:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final needsDrawReordering(Lcom/swmansion/rnscreens/ScreenStackFragment;)Z
    .locals 2

    .line 346
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v0

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-eq v0, v1, :cond_1

    .line 347
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object p1

    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
