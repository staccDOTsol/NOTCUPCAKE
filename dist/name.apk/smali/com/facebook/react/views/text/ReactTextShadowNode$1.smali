.class Lcom/facebook/react/views/text/ReactTextShadowNode$1;
.super Ljava/lang/Object;
.source "ReactTextShadowNode.java"

# interfaces
.implements Lcom/facebook/yoga/YogaMeasureFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/text/ReactTextShadowNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/text/ReactTextShadowNode;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measure(Lcom/facebook/yoga/YogaNode;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 71
    iget-object v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    .line 73
    # getter for: Lcom/facebook/react/views/text/ReactTextShadowNode;->mPreparedSpannableText:Landroid/text/Spannable;
    invoke-static {v4}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$000(Lcom/facebook/react/views/text/ReactTextShadowNode;)Landroid/text/Spannable;

    move-result-object v4

    const-string v5, "Spannable element has not been prepared in onBeforeLayout"

    .line 72
    invoke-static {v4, v5}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    .line 76
    iget-object v5, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    # invokes: Lcom/facebook/react/views/text/ReactTextShadowNode;->measureSpannedText(Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;
    invoke-static {v5, v4, v1, v2}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$100(Lcom/facebook/react/views/text/ReactTextShadowNode;Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;

    move-result-object v5

    .line 78
    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-boolean v6, v6, Lcom/facebook/react/views/text/ReactTextShadowNode;->mAdjustsFontSizeToFit:Z

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    .line 79
    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-object v6, v6, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v6}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v6

    .line 80
    iget-object v9, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-object v9, v9, Lcom/facebook/react/views/text/ReactTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v9}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v9

    .line 82
    iget-object v10, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v10, v10, Lcom/facebook/react/views/text/ReactTextShadowNode;->mMinimumFontScale:F

    int-to-float v6, v6

    mul-float v10, v10, v6

    const/high16 v11, 0x40800000    # 4.0f

    .line 83
    invoke-static {v11}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    :goto_0
    if-le v9, v10, :cond_3

    .line 84
    iget-object v11, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v11, v11, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    if-eq v11, v7, :cond_0

    .line 85
    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v11

    iget-object v12, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v12, v12, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    if-gt v11, v12, :cond_1

    :cond_0
    sget-object v11, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    if-eq v3, v11, :cond_3

    .line 86
    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v11, p4

    if-lez v11, :cond_3

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 90
    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v9, v5

    int-to-float v5, v9

    div-float/2addr v5, v6

    .line 94
    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;

    invoke-interface {v4, v8, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;

    .line 95
    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_2

    aget-object v14, v11, v13

    .line 96
    new-instance v15, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;

    .line 98
    invoke-virtual {v14}, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;->getSize()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v5

    int-to-float v7, v10

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v15, v7}, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;-><init>(I)V

    .line 99
    invoke-interface {v4, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 100
    invoke-interface {v4, v14}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    move/from16 v16, v5

    .line 101
    invoke-interface {v4, v14}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 96
    invoke-interface {v4, v15, v7, v8, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 102
    invoke-interface {v4, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v16

    const/4 v7, -0x1

    const/4 v8, 0x0

    goto :goto_1

    .line 104
    :cond_2
    iget-object v5, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    # invokes: Lcom/facebook/react/views/text/ReactTextShadowNode;->measureSpannedText(Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;
    invoke-static {v5, v4, v1, v2}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$100(Lcom/facebook/react/views/text/ReactTextShadowNode;Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;

    move-result-object v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    goto :goto_0

    .line 108
    :cond_3
    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    # getter for: Lcom/facebook/react/views/text/ReactTextShadowNode;->mShouldNotifyOnTextLayout:Z
    invoke-static {v6}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$200(Lcom/facebook/react/views/text/ReactTextShadowNode;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 109
    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-virtual {v6}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v6

    .line 112
    # getter for: Lcom/facebook/react/views/text/ReactTextShadowNode;->sTextPaintInstance:Landroid/text/TextPaint;
    invoke-static {}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$300()Landroid/text/TextPaint;

    move-result-object v7

    .line 111
    invoke-static {v4, v5, v7, v6}, Lcom/facebook/react/views/text/FontMetricsUtil;->getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 113
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7

    const-string v8, "lines"

    .line 114
    invoke-interface {v7, v8, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 115
    invoke-virtual {v6}, Lcom/facebook/react/uimanager/ThemedReactContext;->hasActiveReactInstance()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    const-class v4, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 117
    invoke-virtual {v6, v4}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object v6, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    .line 118
    invoke-virtual {v6}, Lcom/facebook/react/views/text/ReactTextShadowNode;->getReactTag()I

    move-result v6

    const-string v8, "topTextLayout"

    invoke-interface {v4, v6, v8, v7}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_2

    .line 120
    :cond_4
    new-instance v4, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v6, "Cannot get RCTEventEmitter, no CatalystInstance"

    invoke-direct {v4, v6}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    const-string v6, "ReactTextShadowNode"

    invoke-static {v6, v4}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :cond_5
    :goto_2
    iget-object v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v4, v4, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    .line 128
    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    goto :goto_3

    .line 129
    :cond_6
    iget-object v4, v0, Lcom/facebook/react/views/text/ReactTextShadowNode$1;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget v4, v4, Lcom/facebook/react/views/text/ReactTextShadowNode;->mNumberOfLines:I

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_3
    const/4 v6, 0x0

    .line 134
    sget-object v7, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v2, v7, :cond_7

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v4, :cond_9

    .line 138
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v7

    cmpl-float v9, v7, v6

    if-lez v9, :cond_8

    move v6, v7

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 143
    :cond_9
    sget-object v7, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v2, v7, :cond_a

    cmpl-float v2, v6, v1

    if-lez v2, :cond_a

    goto :goto_5

    :cond_a
    move v1, v6

    .line 148
    :goto_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-le v2, v6, :cond_b

    float-to-double v1, v1

    .line 149
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 152
    :cond_b
    sget-object v2, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-eq v3, v2, :cond_c

    add-int/lit8 v4, v4, -0x1

    .line 153
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    .line 154
    sget-object v4, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v3, v4, :cond_d

    cmpl-float v3, v2, p4

    if-lez v3, :cond_d

    :cond_c
    move/from16 v2, p4

    .line 159
    :cond_d
    invoke-static {v1, v2}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v1

    return-wide v1
.end method
