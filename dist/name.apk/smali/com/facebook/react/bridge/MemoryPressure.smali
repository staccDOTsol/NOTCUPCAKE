.class public final enum Lcom/facebook/react/bridge/MemoryPressure;
.super Ljava/lang/Enum;
.source "MemoryPressure.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/bridge/MemoryPressure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/bridge/MemoryPressure;

.field public static final enum CRITICAL:Lcom/facebook/react/bridge/MemoryPressure;

.field public static final enum MODERATE:Lcom/facebook/react/bridge/MemoryPressure;

.field public static final enum UI_HIDDEN:Lcom/facebook/react/bridge/MemoryPressure;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/facebook/react/bridge/MemoryPressure;

    const-string v1, "UI_HIDDEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/bridge/MemoryPressure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/bridge/MemoryPressure;->UI_HIDDEN:Lcom/facebook/react/bridge/MemoryPressure;

    .line 12
    new-instance v1, Lcom/facebook/react/bridge/MemoryPressure;

    const-string v3, "MODERATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/bridge/MemoryPressure;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/react/bridge/MemoryPressure;->MODERATE:Lcom/facebook/react/bridge/MemoryPressure;

    .line 13
    new-instance v3, Lcom/facebook/react/bridge/MemoryPressure;

    const-string v5, "CRITICAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/bridge/MemoryPressure;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/react/bridge/MemoryPressure;->CRITICAL:Lcom/facebook/react/bridge/MemoryPressure;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/react/bridge/MemoryPressure;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 10
    sput-object v5, Lcom/facebook/react/bridge/MemoryPressure;->$VALUES:[Lcom/facebook/react/bridge/MemoryPressure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/bridge/MemoryPressure;
    .locals 1

    .line 10
    const-class v0, Lcom/facebook/react/bridge/MemoryPressure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/MemoryPressure;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/bridge/MemoryPressure;
    .locals 1

    .line 10
    sget-object v0, Lcom/facebook/react/bridge/MemoryPressure;->$VALUES:[Lcom/facebook/react/bridge/MemoryPressure;

    invoke-virtual {v0}, [Lcom/facebook/react/bridge/MemoryPressure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/bridge/MemoryPressure;

    return-object v0
.end method
