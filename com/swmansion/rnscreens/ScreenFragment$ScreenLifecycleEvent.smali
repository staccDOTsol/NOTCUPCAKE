.class public final enum Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;
.super Ljava/lang/Enum;
.source "ScreenFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenLifecycleEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;",
        "",
        "(Ljava/lang/String;I)V",
        "Appear",
        "WillAppear",
        "Disappear",
        "WillDisappear",
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


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

.field public static final enum Appear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

.field public static final enum Disappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

.field public static final enum WillAppear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

.field public static final enum WillDisappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;


# direct methods
.method private static final synthetic $values()[Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    sget-object v1, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->Appear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->WillAppear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->Disappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->WillDisappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v1, "Appear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->Appear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v1, "WillAppear"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->WillAppear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v1, "Disappear"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->Disappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    const-string v1, "WillDisappear"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->WillDisappear:Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    invoke-static {}, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->$values()[Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    move-result-object v0

    sput-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->$VALUES:[Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;
    .locals 1

    const-class v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;
    .locals 1

    sget-object v0, Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;->$VALUES:[Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/rnscreens/ScreenFragment$ScreenLifecycleEvent;

    return-object v0
.end method
