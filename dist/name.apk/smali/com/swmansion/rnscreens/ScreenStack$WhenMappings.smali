.class public final synthetic Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;
.super Ljava/lang/Object;
.source "ScreenStack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->values()[Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->DEFAULT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_RIGHT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_LEFT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->SLIDE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackAnimation;->FADE_FROM_BOTTOM:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$StackAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sput-object v0, Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
