.class public final enum Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;
.super Ljava/lang/Enum;
.source "ReactChoreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/core/ReactChoreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallbackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

.field public static final enum DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

.field public static final enum IDLE_EVENT:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

.field public static final enum NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

.field public static final enum PERF_MARKERS:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

.field public static final enum TIMERS_EVENTS:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;


# instance fields
.field private final mOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 28
    new-instance v0, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    const-string v1, "PERF_MARKERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->PERF_MARKERS:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    .line 31
    new-instance v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    const-string v3, "DISPATCH_UI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    .line 34
    new-instance v3, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    const-string v5, "NATIVE_ANIMATED_MODULE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    .line 37
    new-instance v5, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    const-string v7, "TIMERS_EVENTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->TIMERS_EVENTS:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    .line 42
    new-instance v7, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    const-string v9, "IDLE_EVENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->IDLE_EVENT:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 25
    sput-object v9, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->$VALUES:[Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->mOrder:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;
    .locals 1

    .line 25
    const-class v0, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;
    .locals 1

    .line 25
    sget-object v0, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->$VALUES:[Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    invoke-virtual {v0}, [Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    return-object v0
.end method


# virtual methods
.method getOrder()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->mOrder:I

    return v0
.end method
