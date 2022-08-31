.class public final synthetic Lcom/swmansion/rnscreens/ScreenWindowTraits$WhenMappings;
.super Ljava/lang/Object;
.source "ScreenWindowTraits.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenWindowTraits;
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

    invoke-static {}, Lcom/swmansion/rnscreens/Screen$WindowTraits;->values()[Lcom/swmansion/rnscreens/Screen$WindowTraits;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ORIENTATION:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;->COLOR:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;->STYLE:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;->TRANSLUCENT:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;->HIDDEN:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ANIMATED:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;->NAVIGATION_BAR_COLOR:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/Screen$WindowTraits;->NAVIGATION_BAR_HIDDEN:Lcom/swmansion/rnscreens/Screen$WindowTraits;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen$WindowTraits;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
