.class public final enum Lcom/facebook/soloader/MinElf$ISA;
.super Ljava/lang/Enum;
.source "MinElf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/MinElf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ISA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/soloader/MinElf$ISA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum AARCH64:Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum ARM:Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum NOT_SO:Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum OTHERS:Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum X86:Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum X86_64:Lcom/facebook/soloader/MinElf$ISA;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 38
    new-instance v0, Lcom/facebook/soloader/MinElf$ISA;

    const-string v1, "NOT_SO"

    const/4 v2, 0x0

    const-string v3, "not_so"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/soloader/MinElf$ISA;->NOT_SO:Lcom/facebook/soloader/MinElf$ISA;

    .line 39
    new-instance v1, Lcom/facebook/soloader/MinElf$ISA;

    const-string v3, "X86"

    const/4 v4, 0x1

    const-string v5, "x86"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/soloader/MinElf$ISA;->X86:Lcom/facebook/soloader/MinElf$ISA;

    .line 40
    new-instance v3, Lcom/facebook/soloader/MinElf$ISA;

    const-string v5, "ARM"

    const/4 v6, 0x2

    const-string v7, "armeabi-v7a"

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/soloader/MinElf$ISA;->ARM:Lcom/facebook/soloader/MinElf$ISA;

    .line 41
    new-instance v5, Lcom/facebook/soloader/MinElf$ISA;

    const-string v7, "X86_64"

    const/4 v8, 0x3

    const-string v9, "x86_64"

    invoke-direct {v5, v7, v8, v9}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/soloader/MinElf$ISA;->X86_64:Lcom/facebook/soloader/MinElf$ISA;

    .line 42
    new-instance v7, Lcom/facebook/soloader/MinElf$ISA;

    const-string v9, "AARCH64"

    const/4 v10, 0x4

    const-string v11, "arm64-v8a"

    invoke-direct {v7, v9, v10, v11}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/facebook/soloader/MinElf$ISA;->AARCH64:Lcom/facebook/soloader/MinElf$ISA;

    .line 43
    new-instance v9, Lcom/facebook/soloader/MinElf$ISA;

    const-string v11, "OTHERS"

    const/4 v12, 0x5

    const-string v13, "others"

    invoke-direct {v9, v11, v12, v13}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/facebook/soloader/MinElf$ISA;->OTHERS:Lcom/facebook/soloader/MinElf$ISA;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/facebook/soloader/MinElf$ISA;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 37
    sput-object v11, Lcom/facebook/soloader/MinElf$ISA;->$VALUES:[Lcom/facebook/soloader/MinElf$ISA;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/facebook/soloader/MinElf$ISA;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/soloader/MinElf$ISA;
    .locals 1

    .line 37
    const-class v0, Lcom/facebook/soloader/MinElf$ISA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/soloader/MinElf$ISA;

    return-object p0
.end method

.method public static values()[Lcom/facebook/soloader/MinElf$ISA;
    .locals 1

    .line 37
    sget-object v0, Lcom/facebook/soloader/MinElf$ISA;->$VALUES:[Lcom/facebook/soloader/MinElf$ISA;

    invoke-virtual {v0}, [Lcom/facebook/soloader/MinElf$ISA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/MinElf$ISA;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/facebook/soloader/MinElf$ISA;->value:Ljava/lang/String;

    return-object v0
.end method
