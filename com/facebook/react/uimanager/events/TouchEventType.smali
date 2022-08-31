.class public final enum Lcom/facebook/react/uimanager/events/TouchEventType;
.super Ljava/lang/Enum;
.source "TouchEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/uimanager/events/TouchEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/uimanager/events/TouchEventType;

.field public static final enum CANCEL:Lcom/facebook/react/uimanager/events/TouchEventType;

.field public static final enum END:Lcom/facebook/react/uimanager/events/TouchEventType;

.field public static final enum MOVE:Lcom/facebook/react/uimanager/events/TouchEventType;

.field public static final enum START:Lcom/facebook/react/uimanager/events/TouchEventType;


# instance fields
.field private final mJsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 12
    new-instance v0, Lcom/facebook/react/uimanager/events/TouchEventType;

    const-string v1, "START"

    const/4 v2, 0x0

    const-string v3, "topTouchStart"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/react/uimanager/events/TouchEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/react/uimanager/events/TouchEventType;->START:Lcom/facebook/react/uimanager/events/TouchEventType;

    .line 13
    new-instance v1, Lcom/facebook/react/uimanager/events/TouchEventType;

    const-string v3, "END"

    const/4 v4, 0x1

    const-string v5, "topTouchEnd"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/react/uimanager/events/TouchEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/react/uimanager/events/TouchEventType;->END:Lcom/facebook/react/uimanager/events/TouchEventType;

    .line 14
    new-instance v3, Lcom/facebook/react/uimanager/events/TouchEventType;

    const-string v5, "MOVE"

    const/4 v6, 0x2

    const-string v7, "topTouchMove"

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/react/uimanager/events/TouchEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/react/uimanager/events/TouchEventType;->MOVE:Lcom/facebook/react/uimanager/events/TouchEventType;

    .line 15
    new-instance v5, Lcom/facebook/react/uimanager/events/TouchEventType;

    const-string v7, "CANCEL"

    const/4 v8, 0x3

    const-string v9, "topTouchCancel"

    invoke-direct {v5, v7, v8, v9}, Lcom/facebook/react/uimanager/events/TouchEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/react/uimanager/events/TouchEventType;->CANCEL:Lcom/facebook/react/uimanager/events/TouchEventType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/react/uimanager/events/TouchEventType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 11
    sput-object v7, Lcom/facebook/react/uimanager/events/TouchEventType;->$VALUES:[Lcom/facebook/react/uimanager/events/TouchEventType;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/facebook/react/uimanager/events/TouchEventType;->mJsName:Ljava/lang/String;

    return-void
.end method

.method public static getJSEventName(Lcom/facebook/react/uimanager/events/TouchEventType;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEventType;->getJsName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/events/TouchEventType;
    .locals 1

    .line 11
    const-class v0, Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/uimanager/events/TouchEventType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/uimanager/events/TouchEventType;
    .locals 1

    .line 11
    sget-object v0, Lcom/facebook/react/uimanager/events/TouchEventType;->$VALUES:[Lcom/facebook/react/uimanager/events/TouchEventType;

    invoke-virtual {v0}, [Lcom/facebook/react/uimanager/events/TouchEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/uimanager/events/TouchEventType;

    return-object v0
.end method


# virtual methods
.method public getJsName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/TouchEventType;->mJsName:Ljava/lang/String;

    return-object v0
.end method
