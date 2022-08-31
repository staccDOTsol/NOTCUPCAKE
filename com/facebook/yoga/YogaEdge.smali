.class public final enum Lcom/facebook/yoga/YogaEdge;
.super Ljava/lang/Enum;
.source "YogaEdge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/yoga/YogaEdge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/yoga/YogaEdge;

.field public static final enum ALL:Lcom/facebook/yoga/YogaEdge;

.field public static final enum BOTTOM:Lcom/facebook/yoga/YogaEdge;

.field public static final enum END:Lcom/facebook/yoga/YogaEdge;

.field public static final enum HORIZONTAL:Lcom/facebook/yoga/YogaEdge;

.field public static final enum LEFT:Lcom/facebook/yoga/YogaEdge;

.field public static final enum RIGHT:Lcom/facebook/yoga/YogaEdge;

.field public static final enum START:Lcom/facebook/yoga/YogaEdge;

.field public static final enum TOP:Lcom/facebook/yoga/YogaEdge;

.field public static final enum VERTICAL:Lcom/facebook/yoga/YogaEdge;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 11
    new-instance v0, Lcom/facebook/yoga/YogaEdge;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/yoga/YogaEdge;->LEFT:Lcom/facebook/yoga/YogaEdge;

    .line 12
    new-instance v1, Lcom/facebook/yoga/YogaEdge;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/facebook/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/yoga/YogaEdge;->TOP:Lcom/facebook/yoga/YogaEdge;

    .line 13
    new-instance v3, Lcom/facebook/yoga/YogaEdge;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/facebook/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/yoga/YogaEdge;->RIGHT:Lcom/facebook/yoga/YogaEdge;

    .line 14
    new-instance v5, Lcom/facebook/yoga/YogaEdge;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/facebook/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/facebook/yoga/YogaEdge;->BOTTOM:Lcom/facebook/yoga/YogaEdge;

    .line 15
    new-instance v7, Lcom/facebook/yoga/YogaEdge;

    const-string v9, "START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/facebook/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/facebook/yoga/YogaEdge;->START:Lcom/facebook/yoga/YogaEdge;

    .line 16
    new-instance v9, Lcom/facebook/yoga/YogaEdge;

    const-string v11, "END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/facebook/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/facebook/yoga/YogaEdge;->END:Lcom/facebook/yoga/YogaEdge;

    .line 17
    new-instance v11, Lcom/facebook/yoga/YogaEdge;

    const-string v13, "HORIZONTAL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/facebook/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/facebook/yoga/YogaEdge;->HORIZONTAL:Lcom/facebook/yoga/YogaEdge;

    .line 18
    new-instance v13, Lcom/facebook/yoga/YogaEdge;

    const-string v15, "VERTICAL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/facebook/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/facebook/yoga/YogaEdge;->VERTICAL:Lcom/facebook/yoga/YogaEdge;

    .line 19
    new-instance v15, Lcom/facebook/yoga/YogaEdge;

    const-string v14, "ALL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/facebook/yoga/YogaEdge;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/facebook/yoga/YogaEdge;->ALL:Lcom/facebook/yoga/YogaEdge;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/facebook/yoga/YogaEdge;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lcom/facebook/yoga/YogaEdge;->$VALUES:[Lcom/facebook/yoga/YogaEdge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/facebook/yoga/YogaEdge;->mIntValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/facebook/yoga/YogaEdge;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 42
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

    .line 41
    :pswitch_0
    sget-object p0, Lcom/facebook/yoga/YogaEdge;->ALL:Lcom/facebook/yoga/YogaEdge;

    return-object p0

    .line 40
    :pswitch_1
    sget-object p0, Lcom/facebook/yoga/YogaEdge;->VERTICAL:Lcom/facebook/yoga/YogaEdge;

    return-object p0

    .line 39
    :pswitch_2
    sget-object p0, Lcom/facebook/yoga/YogaEdge;->HORIZONTAL:Lcom/facebook/yoga/YogaEdge;

    return-object p0

    .line 38
    :pswitch_3
    sget-object p0, Lcom/facebook/yoga/YogaEdge;->END:Lcom/facebook/yoga/YogaEdge;

    return-object p0

    .line 37
    :pswitch_4
    sget-object p0, Lcom/facebook/yoga/YogaEdge;->START:Lcom/facebook/yoga/YogaEdge;

    return-object p0

    .line 36
    :pswitch_5
    sget-object p0, Lcom/facebook/yoga/YogaEdge;->BOTTOM:Lcom/facebook/yoga/YogaEdge;

    return-object p0

    .line 35
    :pswitch_6
    sget-object p0, Lcom/facebook/yoga/YogaEdge;->RIGHT:Lcom/facebook/yoga/YogaEdge;

    return-object p0

    .line 34
    :pswitch_7
    sget-object p0, Lcom/facebook/yoga/YogaEdge;->TOP:Lcom/facebook/yoga/YogaEdge;

    return-object p0

    .line 33
    :pswitch_8
    sget-object p0, Lcom/facebook/yoga/YogaEdge;->LEFT:Lcom/facebook/yoga/YogaEdge;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/yoga/YogaEdge;
    .locals 1

    .line 10
    const-class v0, Lcom/facebook/yoga/YogaEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/yoga/YogaEdge;

    return-object p0
.end method

.method public static values()[Lcom/facebook/yoga/YogaEdge;
    .locals 1

    .line 10
    sget-object v0, Lcom/facebook/yoga/YogaEdge;->$VALUES:[Lcom/facebook/yoga/YogaEdge;

    invoke-virtual {v0}, [Lcom/facebook/yoga/YogaEdge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/yoga/YogaEdge;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/facebook/yoga/YogaEdge;->mIntValue:I

    return v0
.end method
