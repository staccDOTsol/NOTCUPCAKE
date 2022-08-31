.class public final synthetic Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes$TEXT$WhenMappings;
.super Ljava/lang/Object;
.source "SearchBarView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes$TEXT;
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

    invoke-static {}, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->values()[Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->NONE:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->WORDS:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->SENTENCES:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->CHARACTERS:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes$TEXT$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
