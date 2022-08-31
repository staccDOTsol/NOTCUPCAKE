.class public abstract Lcom/facebook/react/views/text/ReactBaseTextShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "ReactBaseTextShadowNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;
    }
.end annotation


# static fields
.field public static final DEFAULT_TEXT_SHADOW_COLOR:I = 0x55000000

.field private static final INLINE_VIEW_PLACEHOLDER:Ljava/lang/String; = "0"

.field public static final PROP_SHADOW_COLOR:Ljava/lang/String; = "textShadowColor"

.field public static final PROP_SHADOW_OFFSET:Ljava/lang/String; = "textShadowOffset"

.field public static final PROP_SHADOW_OFFSET_HEIGHT:Ljava/lang/String; = "height"

.field public static final PROP_SHADOW_OFFSET_WIDTH:Ljava/lang/String; = "width"

.field public static final PROP_SHADOW_RADIUS:Ljava/lang/String; = "textShadowRadius"

.field public static final PROP_TEXT_TRANSFORM:Ljava/lang/String; = "textTransform"

.field public static final UNSET:I = -0x1


# instance fields
.field protected mAdjustsFontSizeToFit:Z

.field protected mBackgroundColor:I

.field protected mColor:I

.field protected mContainsImages:Z

.field protected mFontFamily:Ljava/lang/String;

.field protected mFontFeatureSettings:Ljava/lang/String;

.field protected mFontStyle:I

.field protected mFontWeight:I

.field protected mHyphenationFrequency:I

.field protected mIncludeFontPadding:Z

.field protected mInlineViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsBackgroundColorSet:Z

.field protected mIsColorSet:Z

.field protected mIsLineThroughTextDecorationSet:Z

.field protected mIsUnderlineTextDecorationSet:Z

.field protected mJustificationMode:I

.field protected mMinimumFontScale:F

.field protected mNumberOfLines:I

.field protected mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

.field protected mTextAlign:I

.field protected mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

.field protected mTextBreakStrategy:I

.field protected mTextShadowColor:I

.field protected mTextShadowOffsetDx:F

.field protected mTextShadowOffsetDy:F

.field protected mTextShadowRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-direct {p0, v0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;-><init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V
    .locals 5

    .line 384
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsColorSet:Z

    .line 320
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsBackgroundColorSet:Z

    const/4 v1, -0x1

    .line 323
    iput v1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mNumberOfLines:I

    .line 324
    iput v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAlign:I

    .line 326
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x17

    if-ge v2, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextBreakStrategy:I

    .line 328
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mHyphenationFrequency:I

    .line 330
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mJustificationMode:I

    const/4 v2, 0x0

    .line 332
    iput v2, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowOffsetDx:F

    .line 333
    iput v2, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowOffsetDy:F

    .line 334
    iput v2, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowRadius:F

    const/high16 v4, 0x55000000

    .line 335
    iput v4, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowColor:I

    .line 337
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsUnderlineTextDecorationSet:Z

    .line 338
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsLineThroughTextDecorationSet:Z

    .line 339
    iput-boolean v3, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIncludeFontPadding:Z

    .line 340
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mAdjustsFontSizeToFit:Z

    .line 341
    iput v2, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mMinimumFontScale:F

    .line 347
    iput v1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontStyle:I

    .line 349
    iput v1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontWeight:I

    const/4 v1, 0x0

    .line 371
    iput-object v1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontFamily:Ljava/lang/String;

    .line 374
    iput-object v1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontFeatureSettings:Ljava/lang/String;

    .line 376
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mContainsImages:Z

    .line 385
    new-instance v0, Lcom/facebook/react/views/text/TextAttributes;

    invoke-direct {v0}, Lcom/facebook/react/views/text/TextAttributes;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    .line 386
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    return-void
.end method

.method private static buildSpannedFromShadowNode(Lcom/facebook/react/views/text/ReactBaseTextShadowNode;Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/facebook/react/views/text/TextAttributes;ZLjava/util/Map;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/views/text/ReactBaseTextShadowNode;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;",
            ">;",
            "Lcom/facebook/react/views/text/TextAttributes;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p6

    if-eqz v10, :cond_0

    .line 106
    iget-object v1, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v10, v1}, Lcom/facebook/react/views/text/TextAttributes;->applyChild(Lcom/facebook/react/views/text/TextAttributes;)Lcom/facebook/react/views/text/TextAttributes;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v1, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    :goto_0
    move-object v12, v1

    const/4 v1, 0x0

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->getChildCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_7

    .line 112
    invoke-virtual {v0, v14}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->getChildAt(I)Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v15

    .line 114
    instance-of v1, v15, Lcom/facebook/react/views/text/ReactRawTextShadowNode;

    if-eqz v1, :cond_1

    .line 115
    move-object v1, v15

    check-cast v1, Lcom/facebook/react/views/text/ReactRawTextShadowNode;

    .line 117
    invoke-virtual {v1}, Lcom/facebook/react/views/text/ReactRawTextShadowNode;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcom/facebook/react/views/text/TextAttributes;->getTextTransform()Lcom/facebook/react/views/text/TextTransform;

    move-result-object v2

    .line 116
    invoke-static {v1, v2}, Lcom/facebook/react/views/text/TextTransform;->apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    move-object/from16 v2, p5

    goto/16 :goto_5

    .line 118
    :cond_1
    instance-of v1, v15, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;

    if-eqz v1, :cond_2

    .line 119
    move-object v1, v15

    check-cast v1, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 119
    invoke-static/range {v1 .. v7}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->buildSpannedFromShadowNode(Lcom/facebook/react/views/text/ReactBaseTextShadowNode;Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/facebook/react/views/text/TextAttributes;ZLjava/util/Map;I)V

    goto :goto_2

    .line 127
    :cond_2
    instance-of v1, v15, Lcom/facebook/react/views/text/ReactTextInlineImageShadowNode;

    const-string v2, "0"

    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {v8, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 131
    new-instance v1, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move-object v4, v15

    check-cast v4, Lcom/facebook/react/views/text/ReactTextInlineImageShadowNode;

    .line 135
    invoke-virtual {v4}, Lcom/facebook/react/views/text/ReactTextInlineImageShadowNode;->buildInlineImageSpan()Lcom/facebook/react/views/text/TextInlineImageSpan;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 131
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_6

    .line 137
    invoke-interface {v15}, Lcom/facebook/react/uimanager/ReactShadowNode;->getReactTag()I

    move-result v1

    .line 138
    invoke-interface {v15}, Lcom/facebook/react/uimanager/ReactShadowNode;->getStyleWidth()Lcom/facebook/yoga/YogaValue;

    move-result-object v3

    .line 139
    invoke-interface {v15}, Lcom/facebook/react/uimanager/ReactShadowNode;->getStyleHeight()Lcom/facebook/yoga/YogaValue;

    move-result-object v4

    .line 143
    iget-object v5, v3, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    sget-object v6, Lcom/facebook/yoga/YogaUnit;->POINT:Lcom/facebook/yoga/YogaUnit;

    if-ne v5, v6, :cond_5

    iget-object v5, v4, Lcom/facebook/yoga/YogaValue;->unit:Lcom/facebook/yoga/YogaUnit;

    sget-object v6, Lcom/facebook/yoga/YogaUnit;->POINT:Lcom/facebook/yoga/YogaUnit;

    if-eq v5, v6, :cond_4

    goto :goto_3

    .line 150
    :cond_4
    iget v3, v3, Lcom/facebook/yoga/YogaValue;->value:F

    .line 151
    iget v4, v4, Lcom/facebook/yoga/YogaValue;->value:F

    goto :goto_4

    .line 146
    :cond_5
    :goto_3
    invoke-interface {v15}, Lcom/facebook/react/uimanager/ReactShadowNode;->calculateLayout()V

    .line 147
    invoke-interface {v15}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutWidth()F

    move-result v3

    .line 148
    invoke-interface {v15}, Lcom/facebook/react/uimanager/ReactShadowNode;->getLayoutHeight()F

    move-result v4

    .line 157
    :goto_4
    invoke-virtual {v8, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 158
    new-instance v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    new-instance v7, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-direct {v7, v1, v3, v4}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;-><init>(III)V

    invoke-direct {v2, v5, v6, v7}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 158
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-interface {v2, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :goto_5
    invoke-interface {v15}, Lcom/facebook/react/uimanager/ReactShadowNode;->markUpdateSeen()V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 165
    :cond_6
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected view type nested under a <Text> or <TextInput> node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lt v1, v11, :cond_16

    .line 172
    iget-boolean v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsColorSet:Z

    if-eqz v2, :cond_8

    .line 173
    new-instance v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    new-instance v3, Lcom/facebook/react/views/text/ReactForegroundColorSpan;

    iget v4, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mColor:I

    invoke-direct {v3, v4}, Lcom/facebook/react/views/text/ReactForegroundColorSpan;-><init>(I)V

    invoke-direct {v2, v11, v1, v3}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_8
    iget-boolean v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsBackgroundColorSet:Z

    if-eqz v2, :cond_9

    .line 177
    new-instance v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    new-instance v3, Lcom/facebook/react/views/text/ReactBackgroundColorSpan;

    iget v4, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mBackgroundColor:I

    invoke-direct {v3, v4}, Lcom/facebook/react/views/text/ReactBackgroundColorSpan;-><init>(I)V

    invoke-direct {v2, v11, v1, v3}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_9
    invoke-virtual {v12}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveLetterSpacing()F

    move-result v2

    .line 182
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v10, :cond_a

    .line 184
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveLetterSpacing()F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_b

    .line 185
    :cond_a
    new-instance v3, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    new-instance v4, Lcom/facebook/react/views/text/CustomLetterSpacingSpan;

    invoke-direct {v4, v2}, Lcom/facebook/react/views/text/CustomLetterSpacingSpan;-><init>(F)V

    invoke-direct {v3, v11, v1, v4}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_b
    invoke-virtual {v12}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v2

    if-eqz v10, :cond_c

    .line 192
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveFontSize()I

    move-result v3

    if-eq v3, v2, :cond_d

    .line 193
    :cond_c
    new-instance v3, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    new-instance v4, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;

    invoke-direct {v4, v2}, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;-><init>(I)V

    invoke-direct {v3, v11, v1, v4}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_d
    iget v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontStyle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    iget v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontWeight:I

    if-ne v2, v3, :cond_e

    iget-object v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontFamily:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 198
    :cond_e
    new-instance v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    new-instance v13, Lcom/facebook/react/views/text/CustomStyleSpan;

    iget v4, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontStyle:I

    iget v5, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontWeight:I

    iget-object v6, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v7, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontFamily:Ljava/lang/String;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/uimanager/ThemedReactContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    move-object v3, v13

    invoke-direct/range {v3 .. v8}, Lcom/facebook/react/views/text/CustomStyleSpan;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    invoke-direct {v2, v11, v1, v13}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 198
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_f
    iget-boolean v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsUnderlineTextDecorationSet:Z

    if-eqz v2, :cond_10

    .line 210
    new-instance v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    new-instance v3, Lcom/facebook/react/views/text/ReactUnderlineSpan;

    invoke-direct {v3}, Lcom/facebook/react/views/text/ReactUnderlineSpan;-><init>()V

    invoke-direct {v2, v11, v1, v3}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_10
    iget-boolean v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsLineThroughTextDecorationSet:Z

    if-eqz v2, :cond_11

    .line 213
    new-instance v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    new-instance v3, Lcom/facebook/react/views/text/ReactStrikethroughSpan;

    invoke-direct {v3}, Lcom/facebook/react/views/text/ReactStrikethroughSpan;-><init>()V

    invoke-direct {v2, v11, v1, v3}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_11
    iget v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowOffsetDx:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_12

    iget v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowOffsetDy:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_12

    iget v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowRadius:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_13

    :cond_12
    iget v2, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowColor:I

    .line 218
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_13

    .line 219
    new-instance v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    new-instance v3, Lcom/facebook/react/views/text/ShadowStyleSpan;

    iget v4, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowOffsetDx:F

    iget v5, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowOffsetDy:F

    iget v6, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowRadius:F

    iget v7, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowColor:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/facebook/react/views/text/ShadowStyleSpan;-><init>(FFFI)V

    invoke-direct {v2, v11, v1, v3}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_13
    invoke-virtual {v12}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveLineHeight()F

    move-result v2

    .line 230
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_15

    if-eqz v10, :cond_14

    .line 232
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/react/views/text/TextAttributes;->getEffectiveLineHeight()F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_15

    .line 233
    :cond_14
    new-instance v3, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    new-instance v4, Lcom/facebook/react/views/text/CustomLineHeightSpan;

    invoke-direct {v4, v2}, Lcom/facebook/react/views/text/CustomLineHeightSpan;-><init>(F)V

    invoke-direct {v3, v11, v1, v4}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_15
    new-instance v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    new-instance v3, Lcom/facebook/react/views/text/ReactTagSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->getReactTag()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/facebook/react/views/text/ReactTagSpan;-><init>(I)V

    invoke-direct {v2, v11, v1, v3}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method private getTextAlign()I
    .locals 5

    .line 391
    iget v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAlign:I

    .line 392
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->getLayoutDirection()Lcom/facebook/yoga/YogaDirection;

    move-result-object v1

    sget-object v2, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-ne v1, v2, :cond_1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    const/4 v0, 0x5

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public setAdjustFontSizeToFit(Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "adjustsFontSizeToFit"
    .end annotation

    .line 625
    iget-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mAdjustsFontSizeToFit:Z

    if-eq p1, v0, :cond_0

    .line 626
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mAdjustsFontSizeToFit:Z

    .line 627
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    :cond_0
    return-void
.end method

.method public setAllowFontScaling(Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "allowFontScaling"
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextAttributes;->getAllowFontScaling()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setAllowFontScaling(Z)V

    .line 424
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "backgroundColor"
    .end annotation

    .line 484
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->isVirtual()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 485
    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsBackgroundColorSet:Z

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mBackgroundColor:I

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    :cond_2
    return-void
.end method

.method public setColor(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "color"
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 471
    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsColorSet:Z

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mColor:I

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontFamily"
    .end annotation

    .line 495
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontFamily:Ljava/lang/String;

    .line 496
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void
.end method

.method public setFontSize(F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = NaNf
        name = "fontSize"
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setFontSize(F)V

    .line 466
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void
.end method

.method public setFontStyle(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontStyle"
    .end annotation

    .line 520
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontStyle(Ljava/lang/String;)I

    move-result p1

    .line 521
    iget v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontStyle:I

    if-eq p1, v0, :cond_0

    .line 522
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontStyle:I

    .line 523
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    :cond_0
    return-void
.end method

.method public setFontVariant(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontVariant"
    .end annotation

    .line 510
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontVariant(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object p1

    .line 512
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontFeatureSettings:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontFeatureSettings:Ljava/lang/String;

    .line 514
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    :cond_0
    return-void
.end method

.method public setFontWeight(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fontWeight"
    .end annotation

    .line 501
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontWeight(Ljava/lang/String;)I

    move-result p1

    .line 502
    iget v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontWeight:I

    if-eq p1, v0, :cond_0

    .line 503
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mFontWeight:I

    .line 504
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    :cond_0
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "includeFontPadding"
    .end annotation

    .line 529
    iput-boolean p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIncludeFontPadding:Z

    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = NaNf
        name = "letterSpacing"
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setLetterSpacing(F)V

    .line 417
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void
.end method

.method public setLineHeight(F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = NaNf
        name = "lineHeight"
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setLineHeight(F)V

    .line 411
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void
.end method

.method public setMaxFontSizeMultiplier(F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = NaNf
        name = "maxFontSizeMultiplier"
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0}, Lcom/facebook/react/views/text/TextAttributes;->getMaxFontSizeMultiplier()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/text/TextAttributes;->setMaxFontSizeMultiplier(F)V

    .line 432
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    :cond_0
    return-void
.end method

.method public setMinimumFontScale(F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minimumFontScale"
    .end annotation

    .line 633
    iget v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mMinimumFontScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 634
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mMinimumFontScale:F

    .line 635
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    :cond_0
    return-void
.end method

.method public setNumberOfLines(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = -0x1
        name = "numberOfLines"
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 404
    :cond_0
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mNumberOfLines:I

    .line 405
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textAlign"
    .end annotation

    const-string v0, "justify"

    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x1a

    if-eqz v0, :cond_1

    .line 439
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_0

    .line 440
    iput v1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mJustificationMode:I

    .line 442
    :cond_0
    iput v2, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAlign:I

    goto :goto_1

    .line 444
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    if-lt v0, v3, :cond_2

    .line 445
    iput v4, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mJustificationMode:I

    :cond_2
    if-eqz p1, :cond_7

    const-string v0, "auto"

    .line 448
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "left"

    .line 450
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    iput v2, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAlign:I

    goto :goto_1

    :cond_4
    const-string v0, "right"

    .line 452
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    .line 453
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAlign:I

    goto :goto_1

    :cond_5
    const-string v0, "center"

    .line 454
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 455
    iput v1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAlign:I

    goto :goto_1

    .line 457
    :cond_6
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textAlign: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_7
    :goto_0
    iput v4, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAlign:I

    .line 460
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void
.end method

.method public setTextBreakStrategy(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textBreakStrategy"
    .end annotation

    .line 550
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    const-string v0, "highQuality"

    .line 554
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "simple"

    .line 556
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 557
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextBreakStrategy:I

    goto :goto_1

    :cond_2
    const-string v0, "balanced"

    .line 558
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    .line 559
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextBreakStrategy:I

    goto :goto_1

    .line 561
    :cond_3
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textBreakStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 555
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextBreakStrategy:I

    .line 565
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void
.end method

.method public setTextDecorationLine(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textDecorationLine"
    .end annotation

    const/4 v0, 0x0

    .line 534
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsUnderlineTextDecorationSet:Z

    .line 535
    iput-boolean v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsLineThroughTextDecorationSet:Z

    if-eqz p1, :cond_2

    const-string v1, " "

    .line 537
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    const-string v3, "underline"

    .line 538
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 539
    iput-boolean v4, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsUnderlineTextDecorationSet:Z

    goto :goto_1

    :cond_0
    const-string v3, "line-through"

    .line 540
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    iput-boolean v4, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mIsLineThroughTextDecorationSet:Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void
.end method

.method public setTextShadowColor(I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        defaultInt = 0x55000000
        name = "textShadowColor"
    .end annotation

    .line 599
    iget v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowColor:I

    if-eq p1, v0, :cond_0

    .line 600
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowColor:I

    .line 601
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    :cond_0
    return-void
.end method

.method public setTextShadowOffset(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textShadowOffset"
    .end annotation

    const/4 v0, 0x0

    .line 570
    iput v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowOffsetDx:F

    .line 571
    iput v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowOffsetDy:F

    if-eqz p1, :cond_1

    const-string v0, "width"

    .line 574
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowOffsetDx:F

    :cond_0
    const-string v0, "height"

    .line 579
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowOffsetDy:F

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void
.end method

.method public setTextShadowRadius(F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "textShadowRadius"
    .end annotation

    .line 591
    iget v0, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowRadius:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 592
    iput p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextShadowRadius:F

    .line 593
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    :cond_0
    return-void
.end method

.method public setTextTransform(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textTransform"
    .end annotation

    if-nez p1, :cond_0

    .line 608
    iget-object p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->UNSET:Lcom/facebook/react/views/text/TextTransform;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/TextAttributes;->setTextTransform(Lcom/facebook/react/views/text/TextTransform;)V

    goto :goto_0

    :cond_0
    const-string v0, "none"

    .line 609
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/TextAttributes;->setTextTransform(Lcom/facebook/react/views/text/TextTransform;)V

    goto :goto_0

    :cond_1
    const-string v0, "uppercase"

    .line 611
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    iget-object p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->UPPERCASE:Lcom/facebook/react/views/text/TextTransform;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/TextAttributes;->setTextTransform(Lcom/facebook/react/views/text/TextTransform;)V

    goto :goto_0

    :cond_2
    const-string v0, "lowercase"

    .line 613
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 614
    iget-object p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->LOWERCASE:Lcom/facebook/react/views/text/TextTransform;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/TextAttributes;->setTextTransform(Lcom/facebook/react/views/text/TextTransform;)V

    goto :goto_0

    :cond_3
    const-string v0, "capitalize"

    .line 615
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 616
    iget-object p1, p0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    sget-object v0, Lcom/facebook/react/views/text/TextTransform;->CAPITALIZE:Lcom/facebook/react/views/text/TextTransform;

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/text/TextAttributes;->setTextTransform(Lcom/facebook/react/views/text/TextTransform;)V

    .line 620
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->markUpdated()V

    return-void

    .line 618
    :cond_4
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textTransform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected spannedFromShadowNode(Lcom/facebook/react/views/text/ReactBaseTextShadowNode;Ljava/lang/String;ZLcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;)Landroid/text/Spannable;
    .locals 14

    move-object v7, p1

    move-object/from16 v0, p2

    move-object/from16 v8, p4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p3, :cond_1

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "nativeViewHierarchyOptimizer is required when inline views are supported"

    .line 245
    invoke-static {v1, v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 248
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 255
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_2

    .line 257
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v13, v1

    if-eqz v0, :cond_3

    .line 262
    iget-object v1, v7, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v1}, Lcom/facebook/react/views/text/TextAttributes;->getTextTransform()Lcom/facebook/react/views/text/TextTransform;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/react/views/text/TextTransform;->apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v11

    move-object v2, v12

    move/from16 v4, p3

    move-object v5, v13

    .line 265
    invoke-static/range {v0 .. v6}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->buildSpannedFromShadowNode(Lcom/facebook/react/views/text/ReactBaseTextShadowNode;Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/facebook/react/views/text/TextAttributes;ZLjava/util/Map;I)V

    .line 267
    iput-boolean v9, v7, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mContainsImages:Z

    .line 268
    iput-object v13, v7, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mInlineViews:Ljava/util/Map;

    const/high16 v0, 0x7fc00000    # NaNf

    .line 274
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;

    .line 275
    iget-object v3, v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->what:Lcom/facebook/react/views/text/ReactSpan;

    instance-of v3, v3, Lcom/facebook/react/views/text/TextInlineImageSpan;

    if-nez v3, :cond_4

    .line 276
    iget-object v4, v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->what:Lcom/facebook/react/views/text/ReactSpan;

    instance-of v4, v4, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    if-eqz v4, :cond_7

    :cond_4
    if-eqz v3, :cond_5

    .line 279
    iget-object v3, v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->what:Lcom/facebook/react/views/text/ReactSpan;

    check-cast v3, Lcom/facebook/react/views/text/TextInlineImageSpan;

    invoke-virtual {v3}, Lcom/facebook/react/views/text/TextInlineImageSpan;->getHeight()I

    move-result v3

    .line 280
    iput-boolean v10, v7, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mContainsImages:Z

    goto :goto_4

    .line 282
    :cond_5
    iget-object v3, v2, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->what:Lcom/facebook/react/views/text/ReactSpan;

    check-cast v3, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    .line 283
    invoke-virtual {v3}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getHeight()I

    move-result v4

    .line 287
    invoke-virtual {v3}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getReactTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/ReactShadowNode;

    .line 288
    invoke-virtual {v8, v3}, Lcom/facebook/react/uimanager/NativeViewHierarchyOptimizer;->handleForceViewToBeNonLayoutOnly(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    .line 291
    invoke-interface {v3, p1}, Lcom/facebook/react/uimanager/ReactShadowNode;->setLayoutParent(Lcom/facebook/react/uimanager/ReactShadowNode;)V

    move v3, v4

    .line 294
    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    int-to-float v4, v3

    cmpl-float v4, v4, v0

    if-lez v4, :cond_7

    :cond_6
    int-to-float v0, v3

    .line 302
    :cond_7
    invoke-virtual {v2, v11, v9}, Lcom/facebook/react/views/text/ReactBaseTextShadowNode$SetSpanOperation;->execute(Landroid/text/SpannableStringBuilder;I)V

    add-int/2addr v9, v10

    goto :goto_3

    .line 306
    :cond_8
    iget-object v1, v7, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mTextAttributes:Lcom/facebook/react/views/text/TextAttributes;

    invoke-virtual {v1, v0}, Lcom/facebook/react/views/text/TextAttributes;->setHeightOfTallestInlineViewOrImage(F)V

    move-object v0, p0

    .line 309
    iget-object v1, v0, Lcom/facebook/react/views/text/ReactBaseTextShadowNode;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    if-eqz v1, :cond_9

    .line 310
    invoke-interface {v1, v11}, Lcom/facebook/react/views/text/ReactTextViewManagerCallback;->onPostProcessSpannable(Landroid/text/Spannable;)V

    :cond_9
    return-object v11
.end method
