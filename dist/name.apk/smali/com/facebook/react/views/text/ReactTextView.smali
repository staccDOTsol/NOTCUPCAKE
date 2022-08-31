.class public Lcom/facebook/react/views/text/ReactTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ReactTextView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactCompoundView;


# static fields
.field private static final EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mAdjustsFontSizeToFit:Z

.field private mContainsImages:Z

.field private mDefaultGravityHorizontal:I

.field private mDefaultGravityVertical:I

.field private mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

.field private mLinkifyMaskType:I

.field private mNotifyOnInlineViewLayout:Z

.field private mNumberOfLines:I

.field private mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

.field private mSpanned:Landroid/text/Spannable;

.field private mTextAlign:I

.field private mTextIsSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/react/views/text/ReactTextView;->EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    const v0, 0x7fffffff

    .line 54
    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    .line 55
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    .line 56
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mAdjustsFontSizeToFit:Z

    .line 57
    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    .line 59
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextIsSelectable:Z

    .line 66
    new-instance p1, Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    .line 68
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result p1

    const v0, 0x800007

    and-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityHorizontal:I

    .line 69
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityVertical:I

    return-void
.end method

.method private getReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    instance-of v1, v0, Landroidx/appcompat/widget/TintContextWrapper;

    if-eqz v1, :cond_0

    .line 95
    check-cast v0, Landroidx/appcompat/widget/TintContextWrapper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    goto :goto_0

    .line 96
    :cond_0
    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    :goto_0
    return-object v0
.end method

.method private static inlineViewJson(IIIIII)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 74
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "index"

    const-string v2, "visibility"

    const/16 v3, 0x8

    if-ne p0, v3, :cond_0

    const-string p0, "gone"

    .line 76
    invoke-interface {v0, v2, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "visible"

    .line 79
    invoke-interface {v0, v2, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    int-to-float p0, p2

    .line 81
    invoke-static {p0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p0

    float-to-double p0, p0

    const-string p2, "left"

    invoke-interface {v0, p2, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-float p0, p3

    .line 82
    invoke-static {p0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p0

    float-to-double p0, p0

    const-string p2, "top"

    invoke-interface {v0, p2, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-float p0, p4

    .line 83
    invoke-static {p0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p0

    float-to-double p0, p0

    const-string p2, "right"

    invoke-interface {v0, p2, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    int-to-float p0, p5

    .line 84
    invoke-static {p0}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p0

    float-to-double p0, p0

    const-string p2, "bottom"

    invoke-interface {v0, p2, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_1
    const-string p0, "unknown"

    .line 86
    invoke-interface {v0, v2, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getSpanned()Landroid/text/Spannable;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mSpanned:Landroid/text/Spannable;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 401
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 403
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 404
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 405
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->invalidate()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 445
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 446
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextIsSelectable:Z

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setTextIsSelectable(Z)V

    .line 447
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 449
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 450
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 451
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onAttachedToWindow()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 415
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 416
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 418
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 419
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 420
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onDetachedFromWindow()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 4

    .line 458
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onFinishTemporaryDetach()V

    .line 459
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 461
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 462
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 463
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onFinishTemporaryDetach()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    move-object/from16 v0, p0

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getId()I

    move-result v1

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_15

    .line 105
    invoke-static {v1}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto/16 :goto_f

    .line 122
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2

    .line 123
    const-class v3, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 124
    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 140
    :cond_1
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    const/4 v7, 0x0

    invoke-interface {v3, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    .line 142
    iget-boolean v6, v0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    sub-int v8, p4, p2

    sub-int v9, p5, p3

    .line 146
    array-length v10, v5

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_13

    aget-object v12, v5, v11

    .line 147
    invoke-virtual {v12}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getReactTag()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/facebook/react/uimanager/UIManagerModule;->resolveView(I)Landroid/view/View;

    move-result-object v13

    .line 149
    invoke-interface {v3, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 150
    invoke-virtual {v4, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v14

    .line 151
    invoke-virtual {v4, v14}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v16

    const/16 v17, 0x1

    if-lez v16, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    if-eqz v16, :cond_4

    .line 157
    invoke-virtual {v4, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    invoke-virtual {v4, v14}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v18

    add-int v7, v16, v18

    if-ge v15, v7, :cond_11

    :cond_4
    iget v7, v0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    if-ge v14, v7, :cond_11

    .line 165
    invoke-virtual {v4, v14}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    if-lt v15, v7, :cond_5

    goto/16 :goto_c

    .line 174
    :cond_5
    invoke-virtual {v12}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getWidth()I

    move-result v7

    .line 175
    invoke-virtual {v12}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getHeight()I

    move-result v12

    move-object/from16 v20, v5

    .line 178
    invoke-virtual {v4, v15}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    move/from16 p5, v10

    .line 180
    invoke-virtual {v4, v14}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    move/from16 v21, v1

    const/4 v1, -0x1

    if-ne v10, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 186
    :goto_3
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v15, v10, :cond_8

    if-eqz v1, :cond_7

    .line 191
    invoke-virtual {v4, v14}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v8, v1

    goto :goto_8

    .line 192
    :cond_7
    invoke-virtual {v4, v14}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_7

    :cond_8
    if-ne v1, v5, :cond_9

    const/4 v10, 0x1

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_a

    .line 203
    invoke-virtual {v4, v15}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    goto :goto_5

    .line 204
    :cond_a
    invoke-virtual {v4, v15}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v10

    :goto_5
    float-to-int v10, v10

    if-eqz v1, :cond_b

    .line 216
    invoke-virtual {v4, v14}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, v10

    sub-int v1, v8, v1

    goto :goto_6

    :cond_b
    move v1, v10

    :goto_6
    if-eqz v5, :cond_c

    :goto_7
    sub-int/2addr v1, v7

    :cond_c
    :goto_8
    if-eqz v5, :cond_d

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getTotalPaddingRight()I

    move-result v5

    goto :goto_9

    .line 227
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getTotalPaddingLeft()I

    move-result v5

    :goto_9
    add-int/2addr v1, v5

    add-int v5, p2, v1

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactTextView;->getTotalPaddingTop()I

    move-result v10

    invoke-virtual {v4, v14}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v14

    add-int/2addr v10, v14

    sub-int/2addr v10, v12

    add-int v14, p3, v10

    if-le v8, v1, :cond_f

    if-gt v9, v10, :cond_e

    goto :goto_a

    :cond_e
    const/16 v17, 0x0

    :cond_f
    :goto_a
    if-eqz v17, :cond_10

    const/16 v1, 0x8

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v7, v5

    add-int v10, v14, v12

    .line 244
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    invoke-virtual {v13, v5, v14, v7, v10}, Landroid/view/View;->layout(IIII)V

    .line 246
    iget-boolean v12, v0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v12, :cond_12

    move v12, v14

    move v14, v1

    move/from16 v16, v5

    move/from16 v17, v12

    move/from16 v18, v7

    move/from16 v19, v10

    .line 248
    invoke-static/range {v14 .. v19}, Lcom/facebook/react/views/text/ReactTextView;->inlineViewJson(IIIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 247
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_11
    :goto_c
    move/from16 v21, v1

    move-object/from16 v20, v5

    move/from16 p5, v10

    const/16 v1, 0x8

    .line 169
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-boolean v1, v0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v1, :cond_12

    const/16 v14, 0x8

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    .line 171
    invoke-static/range {v14 .. v19}, Lcom/facebook/react/views/text/ReactTextView;->inlineViewJson(IIIIII)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_d
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, p5

    move-object/from16 v5, v20

    move/from16 v1, v21

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_13
    move/from16 v21, v1

    .line 254
    iget-boolean v1, v0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    if-eqz v1, :cond_15

    .line 255
    new-instance v1, Lcom/facebook/react/views/text/ReactTextView$1;

    invoke-direct {v1, v0}, Lcom/facebook/react/views/text/ReactTextView$1;-><init>(Lcom/facebook/react/views/text/ReactTextView;)V

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 266
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 267
    check-cast v4, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_e

    .line 270
    :cond_14
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v4, "inlineViews"

    .line 271
    invoke-interface {v3, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    if-eqz v2, :cond_15

    const-string v1, "topInlineViewLayout"

    move/from16 v4, v21

    .line 273
    invoke-virtual {v2, v4, v1, v3}, Lcom/facebook/react/uimanager/UIManagerModule;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_15
    :goto_f
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 4

    .line 427
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onStartTemporaryDetach()V

    .line 428
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 430
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 431
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 432
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->onStartTemporaryDetach()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reactTagForTouch(FF)I
    .locals 6

    .line 334
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getId()I

    move-result v1

    float-to-int p1, p1

    float-to-int p2, p2

    .line 340
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 346
    :cond_0
    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    .line 348
    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    float-to-int v3, v3

    .line 349
    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    float-to-int v4, v4

    .line 352
    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    if-lt p1, v3, :cond_2

    if-gt p1, v4, :cond_2

    .line 353
    move-object v3, v0

    check-cast v3, Landroid/text/Spanned;

    int-to-float p1, p1

    .line 356
    :try_start_0
    invoke-virtual {v2, p2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    const-class p2, Lcom/facebook/react/views/text/ReactTagSpan;

    invoke-interface {v3, p1, p1, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/facebook/react/views/text/ReactTagSpan;

    if-eqz p2, :cond_2

    .line 370
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    .line 371
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 372
    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 373
    aget-object v5, p2, v2

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-lt v5, p1, :cond_1

    sub-int/2addr v5, v4

    if-gt v5, v0, :cond_1

    .line 375
    aget-object v0, p2, v2

    invoke-virtual {v0}, Lcom/facebook/react/views/text/ReactTagSpan;->getReactTag()I

    move-result v1

    move v0, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Crash in HorizontalMeasurementProvider: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReactNative"

    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public setAdjustFontSizeToFit(Z)V
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mAdjustsFontSizeToFit:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBackgroundColor(I)V

    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderColor(IFF)V

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(F)V

    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(FI)V

    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderWidth(IF)V

    return-void
.end method

.method public setEllipsizeLocation(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method setGravityHorizontal(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 475
    iget p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityHorizontal:I

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x8

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 477
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextView;->setGravity(I)V

    return-void
.end method

.method setGravityVertical(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 486
    iget p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mDefaultGravityVertical:I

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextView;->setGravity(I)V

    return-void
.end method

.method public setLinkifyMask(I)V
    .locals 0

    .line 552
    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    return-void
.end method

.method public setNotifyOnInlineViewLayout(Z)V
    .locals 0

    .line 506
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mNotifyOnInlineViewLayout:Z

    return-void
.end method

.method public setNumberOfLines(I)V
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    .line 492
    :cond_0
    iput p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 493
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setSingleLine(Z)V

    .line 494
    iget p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextView;->setMaxLines(I)V

    return-void
.end method

.method public setSpanned(Landroid/text/Spannable;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mSpanned:Landroid/text/Spannable;

    return-void
.end method

.method public setText(Lcom/facebook/react/views/text/ReactTextUpdate;)V
    .locals 6

    .line 279
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    .line 283
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 284
    sget-object v0, Lcom/facebook/react/views/text/ReactTextView;->EMPTY_LAYOUT_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v0

    .line 287
    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mLinkifyMaskType:I

    if-lez v1, :cond_1

    .line 288
    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 289
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/react/views/text/ReactTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 291
    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingLeft()F

    move-result v0

    .line 293
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingTop()F

    move-result v1

    .line 294
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingRight()F

    move-result v2

    .line 295
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getPaddingBottom()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_2

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_2

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    float-to-double v4, v0

    .line 306
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    float-to-double v4, v1

    .line 307
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    float-to-double v4, v2

    .line 308
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    float-to-double v3, v3

    .line 309
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 305
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/react/views/text/ReactTextView;->setPadding(IIII)V

    .line 312
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextAlign()I

    move-result v0

    .line 313
    iget v1, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    if-eq v1, v0, :cond_3

    .line 314
    iput v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    .line 316
    :cond_3
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextAlign:I

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setGravityHorizontal(I)V

    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 318
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getBreakStrategy()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 319
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getTextBreakStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setBreakStrategy(I)V

    .line 322
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5

    .line 323
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getJustificationMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJustificationMode()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 324
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextUpdate;->getJustificationMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextView;->setJustificationMode(I)V

    .line 329
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->requestLayout()V

    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 0

    .line 439
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactTextView;->mTextIsSelectable:Z

    .line 440
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextIsSelectable(Z)V

    return-void
.end method

.method public updateView()V
    .locals 2

    .line 512
    iget v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mNumberOfLines:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mAdjustsFontSizeToFit:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mEllipsizeLocation:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 515
    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/text/ReactTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .line 387
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactTextView;->mContainsImages:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 389
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/TextInlineImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/TextInlineImageSpan;

    .line 390
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 391
    invoke-virtual {v2}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
