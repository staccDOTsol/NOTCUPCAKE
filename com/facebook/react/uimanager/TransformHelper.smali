.class public Lcom/facebook/react/uimanager/TransformHelper;
.super Ljava/lang/Object;
.source "TransformHelper.java"


# static fields
.field private static sHelperMatrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/facebook/react/uimanager/TransformHelper$1;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/TransformHelper$1;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/TransformHelper;->sHelperMatrix:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D
    .locals 3

    .line 32
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 33
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "rad"

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "deg"

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 40
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    float-to-double p0, p0

    goto :goto_1

    .line 42
    :cond_2
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 44
    :cond_3
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->degreesToRadians(D)D

    move-result-wide p0

    :goto_2
    return-wide p0
.end method

.method public static processTransform(Lcom/facebook/react/bridge/ReadableArray;[D)V
    .locals 14

    .line 48
    sget-object v0, Lcom/facebook/react/uimanager/TransformHelper;->sHelperMatrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 49
    invoke-static {p1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    .line 55
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/16 v8, 0x10

    const/4 v9, 0x0

    if-ne v1, v8, :cond_1

    invoke-interface {p0, v9}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_1

    .line 56
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 57
    invoke-interface {p0, v9}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v0

    aput-wide v0, p1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_12

    .line 63
    invoke-interface {p0, v11}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    .line 64
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->resetIdentityMatrix([D)V

    const-string v3, "matrix"

    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_11

    .line 70
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-string v3, "perspective"

    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyPerspective([DD)V

    goto/16 :goto_4

    :cond_3
    const-string v3, "rotateX"

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyRotateX([DD)V

    goto/16 :goto_4

    :cond_4
    const-string v3, "rotateY"

    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyRotateY([DD)V

    goto/16 :goto_4

    :cond_5
    const-string v3, "rotate"

    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "rotateZ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_3

    :cond_6
    const-string v3, "scale"

    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 81
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 82
    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleX([DD)V

    .line 83
    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleY([DD)V

    goto/16 :goto_4

    :cond_7
    const-string v3, "scaleX"

    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 85
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleX([DD)V

    goto/16 :goto_4

    :cond_8
    const-string v3, "scaleY"

    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 87
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyScaleY([DD)V

    goto/16 :goto_4

    :cond_9
    const-string v3, "translate"

    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_b

    .line 89
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    .line 90
    invoke-interface {v1, v9}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    const/4 v6, 0x1

    .line 91
    invoke-interface {v1, v6}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v6

    .line 92
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_a

    invoke-interface {v1, v13}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v4

    :cond_a
    move-wide v12, v4

    move-object v1, v0

    move-wide v4, v6

    move-wide v6, v12

    .line 93
    invoke-static/range {v1 .. v7}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate3D([DDDD)V

    goto :goto_4

    :cond_b
    const-string v3, "translateX"

    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 95
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate2D([DDD)V

    goto :goto_4

    :cond_c
    const-string v3, "translateY"

    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 97
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v4, v5, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyTranslate2D([DDD)V

    goto :goto_4

    :cond_d
    const-string v3, "skewX"

    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 99
    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applySkewX([DD)V

    goto :goto_4

    :cond_e
    const-string v3, "skewY"

    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 101
    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applySkewY([DD)V

    goto :goto_4

    .line 103
    :cond_f
    new-instance p0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported transform type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_10
    :goto_3
    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/TransformHelper;->convertToRadians(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->applyRotateZ([DD)V

    .line 107
    :cond_11
    :goto_4
    invoke-static {p1, p1, v0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyInto([D[D[D)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_12
    return-void
.end method
