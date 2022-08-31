.class public final enum Lcom/facebook/react/common/LifecycleState;
.super Ljava/lang/Enum;
.source "LifecycleState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/common/LifecycleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/common/LifecycleState;

.field public static final enum BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

.field public static final enum BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

.field public static final enum RESUMED:Lcom/facebook/react/common/LifecycleState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lcom/facebook/react/common/LifecycleState;

    const-string v1, "BEFORE_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/common/LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    .line 26
    new-instance v1, Lcom/facebook/react/common/LifecycleState;

    const-string v3, "BEFORE_RESUME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/common/LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    .line 27
    new-instance v3, Lcom/facebook/react/common/LifecycleState;

    const-string v5, "RESUMED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/common/LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/react/common/LifecycleState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 24
    sput-object v5, Lcom/facebook/react/common/LifecycleState;->$VALUES:[Lcom/facebook/react/common/LifecycleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/common/LifecycleState;
    .locals 1

    .line 24
    const-class v0, Lcom/facebook/react/common/LifecycleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/common/LifecycleState;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/common/LifecycleState;
    .locals 1

    .line 24
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->$VALUES:[Lcom/facebook/react/common/LifecycleState;

    invoke-virtual {v0}, [Lcom/facebook/react/common/LifecycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/common/LifecycleState;

    return-object v0
.end method
