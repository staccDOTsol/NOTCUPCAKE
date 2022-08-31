.class public final enum Lcom/facebook/react/bridge/ReadableType;
.super Ljava/lang/Enum;
.source "ReadableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/bridge/ReadableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/bridge/ReadableType;

.field public static final enum Array:Lcom/facebook/react/bridge/ReadableType;

.field public static final enum Boolean:Lcom/facebook/react/bridge/ReadableType;

.field public static final enum Map:Lcom/facebook/react/bridge/ReadableType;

.field public static final enum Null:Lcom/facebook/react/bridge/ReadableType;

.field public static final enum Number:Lcom/facebook/react/bridge/ReadableType;

.field public static final enum String:Lcom/facebook/react/bridge/ReadableType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 15
    new-instance v0, Lcom/facebook/react/bridge/ReadableType;

    const-string v1, "Null"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/bridge/ReadableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/bridge/ReadableType;->Null:Lcom/facebook/react/bridge/ReadableType;

    .line 16
    new-instance v1, Lcom/facebook/react/bridge/ReadableType;

    const-string v3, "Boolean"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/bridge/ReadableType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/react/bridge/ReadableType;->Boolean:Lcom/facebook/react/bridge/ReadableType;

    .line 17
    new-instance v3, Lcom/facebook/react/bridge/ReadableType;

    const-string v5, "Number"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/bridge/ReadableType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    .line 18
    new-instance v5, Lcom/facebook/react/bridge/ReadableType;

    const-string v7, "String"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/react/bridge/ReadableType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    .line 19
    new-instance v7, Lcom/facebook/react/bridge/ReadableType;

    const-string v9, "Map"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/react/bridge/ReadableType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    .line 20
    new-instance v9, Lcom/facebook/react/bridge/ReadableType;

    const-string v11, "Array"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/facebook/react/bridge/ReadableType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/facebook/react/bridge/ReadableType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 13
    sput-object v11, Lcom/facebook/react/bridge/ReadableType;->$VALUES:[Lcom/facebook/react/bridge/ReadableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;
    .locals 1

    .line 13
    const-class v0, Lcom/facebook/react/bridge/ReadableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReadableType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/bridge/ReadableType;
    .locals 1

    .line 13
    sget-object v0, Lcom/facebook/react/bridge/ReadableType;->$VALUES:[Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0}, [Lcom/facebook/react/bridge/ReadableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/bridge/ReadableType;

    return-object v0
.end method
