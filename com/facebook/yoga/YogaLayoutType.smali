.class public final enum Lcom/facebook/yoga/YogaLayoutType;
.super Ljava/lang/Enum;
.source "YogaLayoutType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/yoga/YogaLayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/yoga/YogaLayoutType;

.field public static final enum CACHED_LAYOUT:Lcom/facebook/yoga/YogaLayoutType;

.field public static final enum CACHED_MEASURE:Lcom/facebook/yoga/YogaLayoutType;

.field public static final enum LAYOUT:Lcom/facebook/yoga/YogaLayoutType;

.field public static final enum MEASURE:Lcom/facebook/yoga/YogaLayoutType;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Lcom/facebook/yoga/YogaLayoutType;

    const-string v1, "LAYOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/yoga/YogaLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaLayoutType;->LAYOUT:Lcom/facebook/yoga/YogaLayoutType;

    .line 12
    new-instance v1, Lcom/facebook/yoga/YogaLayoutType;

    const-string v3, "MEASURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/facebook/yoga/YogaLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/yoga/YogaLayoutType;->MEASURE:Lcom/facebook/yoga/YogaLayoutType;

    .line 13
    new-instance v3, Lcom/facebook/yoga/YogaLayoutType;

    const-string v5, "CACHED_LAYOUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/facebook/yoga/YogaLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/yoga/YogaLayoutType;->CACHED_LAYOUT:Lcom/facebook/yoga/YogaLayoutType;

    .line 14
    new-instance v5, Lcom/facebook/yoga/YogaLayoutType;

    const-string v7, "CACHED_MEASURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/facebook/yoga/YogaLayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/facebook/yoga/YogaLayoutType;->CACHED_MEASURE:Lcom/facebook/yoga/YogaLayoutType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/yoga/YogaLayoutType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 10
    sput-object v7, Lcom/facebook/yoga/YogaLayoutType;->$VALUES:[Lcom/facebook/yoga/YogaLayoutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/facebook/yoga/YogaLayoutType;->mIntValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/facebook/yoga/YogaLayoutType;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 31
    sget-object p0, Lcom/facebook/yoga/YogaLayoutType;->CACHED_MEASURE:Lcom/facebook/yoga/YogaLayoutType;

    return-object p0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    sget-object p0, Lcom/facebook/yoga/YogaLayoutType;->CACHED_LAYOUT:Lcom/facebook/yoga/YogaLayoutType;

    return-object p0

    .line 29
    :cond_2
    sget-object p0, Lcom/facebook/yoga/YogaLayoutType;->MEASURE:Lcom/facebook/yoga/YogaLayoutType;

    return-object p0

    .line 28
    :cond_3
    sget-object p0, Lcom/facebook/yoga/YogaLayoutType;->LAYOUT:Lcom/facebook/yoga/YogaLayoutType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/yoga/YogaLayoutType;
    .locals 1

    .line 10
    const-class v0, Lcom/facebook/yoga/YogaLayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/yoga/YogaLayoutType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/yoga/YogaLayoutType;
    .locals 1

    .line 10
    sget-object v0, Lcom/facebook/yoga/YogaLayoutType;->$VALUES:[Lcom/facebook/yoga/YogaLayoutType;

    invoke-virtual {v0}, [Lcom/facebook/yoga/YogaLayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/yoga/YogaLayoutType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/facebook/yoga/YogaLayoutType;->mIntValue:I

    return v0
.end method
