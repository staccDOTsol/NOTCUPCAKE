.class public final enum Lcom/facebook/react/devsupport/interfaces/ErrorType;
.super Ljava/lang/Enum;
.source "ErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/devsupport/interfaces/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/devsupport/interfaces/ErrorType;

.field public static final enum JS:Lcom/facebook/react/devsupport/interfaces/ErrorType;

.field public static final enum NATIVE:Lcom/facebook/react/devsupport/interfaces/ErrorType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/facebook/react/devsupport/interfaces/ErrorType;

    const-string v1, "JS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/facebook/react/devsupport/interfaces/ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/react/devsupport/interfaces/ErrorType;->JS:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    .line 12
    new-instance v1, Lcom/facebook/react/devsupport/interfaces/ErrorType;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    const-string v5, "Native"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/react/devsupport/interfaces/ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/react/devsupport/interfaces/ErrorType;->NATIVE:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/react/devsupport/interfaces/ErrorType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 10
    sput-object v3, Lcom/facebook/react/devsupport/interfaces/ErrorType;->$VALUES:[Lcom/facebook/react/devsupport/interfaces/ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/facebook/react/devsupport/interfaces/ErrorType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/devsupport/interfaces/ErrorType;
    .locals 1

    .line 10
    const-class v0, Lcom/facebook/react/devsupport/interfaces/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/devsupport/interfaces/ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/devsupport/interfaces/ErrorType;
    .locals 1

    .line 10
    sget-object v0, Lcom/facebook/react/devsupport/interfaces/ErrorType;->$VALUES:[Lcom/facebook/react/devsupport/interfaces/ErrorType;

    invoke-virtual {v0}, [Lcom/facebook/react/devsupport/interfaces/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/devsupport/interfaces/ErrorType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/facebook/react/devsupport/interfaces/ErrorType;->name:Ljava/lang/String;

    return-object v0
.end method
