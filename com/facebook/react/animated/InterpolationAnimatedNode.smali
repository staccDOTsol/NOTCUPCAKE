.class Lcom/facebook/react/animated/InterpolationAnimatedNode;
.super Lcom/facebook/react/animated/ValueAnimatedNode;
.source "InterpolationAnimatedNode.java"


# static fields
.field public static final EXTRAPOLATE_TYPE_CLAMP:Ljava/lang/String; = "clamp"

.field public static final EXTRAPOLATE_TYPE_EXTEND:Ljava/lang/String; = "extend"

.field public static final EXTRAPOLATE_TYPE_IDENTITY:Ljava/lang/String; = "identity"

.field private static final fpPattern:Ljava/util/regex/Pattern;

.field private static final fpRegex:Ljava/lang/String; = "[+-]?(\\d+\\.?\\d*|\\.\\d+)([eE][+-]?\\d+)?"


# instance fields
.field private final mExtrapolateLeft:Ljava/lang/String;

.field private final mExtrapolateRight:Ljava/lang/String;

.field private final mHasStringOutput:Z

.field private final mInputRange:[D

.field private mNumVals:I

.field private final mOutputRange:[D

.field private mOutputs:[[D

.field private mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

.field private mPattern:Ljava/lang/String;

.field private final mSOutputMatcher:Ljava/util/regex/Matcher;

.field private mShouldRound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[+-]?(\\d+\\.?\\d*|\\.\\d+)([eE][+-]?\\d+)?"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fpPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 9

    .line 135
    invoke-direct {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;-><init>()V

    const-string v0, "inputRange"

    .line 136
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fromDoubleArray(Lcom/facebook/react/bridge/ReadableArray;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mInputRange:[D

    const-string v0, "outputRange"

    .line 137
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 138
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mHasStringOutput:Z

    if-eqz v2, :cond_4

    .line 148
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    .line 149
    new-array v3, v2, [D

    iput-object v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputRange:[D

    .line 150
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mPattern:Ljava/lang/String;

    const-string v4, "rgb"

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mShouldRound:Z

    .line 152
    sget-object v3, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fpPattern:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mPattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    .line 155
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 156
    sget-object v6, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fpPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 157
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 161
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    :cond_1
    iget-object v5, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputRange:[D

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mNumVals:I

    .line 175
    new-array v0, v0, [[D

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputs:[[D

    const/4 v0, 0x0

    .line 176
    :goto_3
    iget v4, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mNumVals:I

    if-ge v0, v4, :cond_5

    .line 177
    new-array v4, v2, [D

    .line 178
    iget-object v5, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputs:[[D

    aput-object v4, v5, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_3

    .line 180
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 184
    :cond_4
    invoke-static {v0}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->fromDoubleArray(Lcom/facebook/react/bridge/ReadableArray;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputRange:[D

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    :cond_5
    const-string v0, "extrapolateLeft"

    .line 187
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateLeft:Ljava/lang/String;

    const-string v0, "extrapolateRight"

    .line 188
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateRight:Ljava/lang/String;

    return-void
.end method

.method private static findRangeIndex(D[D)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 115
    :goto_0
    array-length v2, p2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 116
    aget-wide v2, p2, v1

    cmpl-double v4, v2, p0

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr v1, v0

    return v1
.end method

.method private static fromDoubleArray(Lcom/facebook/react/bridge/ReadableArray;)[D
    .locals 5

    .line 34
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 36
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static interpolate(DDDDDLjava/lang/String;Ljava/lang/String;)D
    .locals 13

    move-object/from16 v0, p10

    move-object/from16 v1, p11

    const-string v2, "Invalid extrapolation type "

    const/4 v3, 0x2

    const-string v4, "clamp"

    const/4 v5, 0x1

    const-string v6, "identity"

    const/4 v7, 0x0

    const-string v8, "extend"

    const/4 v9, -0x1

    cmpg-double v10, p0, p2

    if-gez v10, :cond_3

    .line 53
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_0
    const/4 v11, -0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_0

    :cond_1
    const/4 v11, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 62
    new-instance v1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "for left extrapolation"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move-wide v11, p2

    goto :goto_2

    :pswitch_1
    return-wide p0

    :cond_3
    :pswitch_2
    move-wide v11, p0

    :goto_2
    cmpl-double v0, v11, p4

    if-lez v0, :cond_7

    .line 68
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_3
    const/4 v3, -0x1

    goto :goto_4

    :sswitch_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :sswitch_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x1

    goto :goto_4

    :sswitch_5
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_4
    packed-switch v3, :pswitch_data_1

    .line 77
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "for right extrapolation"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move-wide/from16 v11, p4

    goto :goto_5

    :pswitch_4
    return-wide v11

    :cond_7
    :goto_5
    :pswitch_5
    cmpl-double v0, p6, p8

    if-nez v0, :cond_8

    return-wide p6

    :cond_8
    cmpl-double v0, p2, p4

    if-nez v0, :cond_a

    if-gtz v10, :cond_9

    return-wide p6

    :cond_9
    return-wide p8

    :cond_a
    sub-double v0, p8, p6

    sub-double/2addr v11, p2

    mul-double v0, v0, v11

    sub-double v2, p4, p2

    div-double/2addr v0, v2

    add-double v0, p6, v0

    return-wide v0

    :sswitch_data_0
    .sparse-switch
        -0x4cd540e6 -> :sswitch_2
        -0x8178f42 -> :sswitch_1
        0x5a5a8bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4cd540e6 -> :sswitch_5
        -0x8178f42 -> :sswitch_4
        0x5a5a8bb -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static interpolate(D[D[DLjava/lang/String;Ljava/lang/String;)D
    .locals 13

    .line 102
    invoke-static {p0, p1, p2}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->findRangeIndex(D[D)I

    move-result v0

    .line 103
    aget-wide v3, p2, v0

    add-int/lit8 v1, v0, 0x1

    aget-wide v5, p2, v1

    aget-wide v7, p3, v0

    aget-wide v9, p3, v1

    move-wide v1, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static/range {v1 .. v12}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->interpolate(DDDDDLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public onAttachedToNode(Lcom/facebook/react/animated/AnimatedNode;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v0, :cond_1

    .line 196
    instance-of v0, p1, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v0, :cond_0

    .line 199
    check-cast p1, Lcom/facebook/react/animated/ValueAnimatedNode;

    iput-object p1, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    return-void

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parent is of an invalid type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent already attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDetachedFromNode(Lcom/facebook/react/animated/AnimatedNode;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    return-void

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parent node provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InterpolationAnimatedNode["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] super: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 12

    .line 212
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mParent:Lcom/facebook/react/animated/ValueAnimatedNode;

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v7

    .line 218
    iget-object v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mInputRange:[D

    iget-object v4, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputRange:[D

    iget-object v5, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateLeft:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateRight:Ljava/lang/String;

    move-wide v1, v7

    invoke-static/range {v1 .. v6}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->interpolate(D[D[DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mValue:D

    .line 219
    iget-boolean v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mHasStringOutput:Z

    if-eqz v0, :cond_8

    .line 223
    iget v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mNumVals:I

    const/4 v9, 0x1

    if-le v0, v9, :cond_7

    .line 224
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mPattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 226
    iget-object v1, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 227
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 228
    iget-object v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mInputRange:[D

    iget-object v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mOutputs:[[D

    add-int/lit8 v11, v1, 0x1

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateLeft:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mExtrapolateRight:Ljava/lang/String;

    move-wide v1, v7

    .line 229
    invoke-static/range {v1 .. v6}, Lcom/facebook/react/animated/InterpolationAnimatedNode;->interpolate(D[D[DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    .line 230
    iget-boolean v3, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mShouldRound:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    if-ne v11, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-wide v4, 0x408f400000000000L    # 1000.0

    if-eqz v3, :cond_2

    mul-double v1, v1, v4

    .line 235
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    if-eqz v3, :cond_3

    int-to-double v1, v2

    div-double/2addr v1, v4

    .line 237
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    :goto_2
    iget-object v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_4

    :cond_4
    double-to-int v3, v1

    int-to-double v4, v3

    cmpl-double v6, v4, v1

    if-eqz v6, :cond_5

    .line 241
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    :goto_3
    iget-object v2, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    :goto_4
    move v1, v11

    goto :goto_0

    .line 245
    :cond_6
    iget-object v1, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mAnimatedObject:Ljava/lang/Object;

    goto :goto_5

    .line 248
    :cond_7
    iget-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mSOutputMatcher:Ljava/util/regex/Matcher;

    iget-wide v1, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mValue:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/animated/InterpolationAnimatedNode;->mAnimatedObject:Ljava/lang/Object;

    :cond_8
    :goto_5
    return-void
.end method
