.class public Lcom/google/android/material/badge/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BadgeDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeDrawable$SavedState;,
        Lcom/google/android/material/badge/BadgeDrawable$BadgeGravity;
    }
.end annotation


# static fields
.field private static final BADGE_NUMBER_NONE:I = -0x1

.field public static final BOTTOM_END:I = 0x800055

.field public static final BOTTOM_START:I = 0x800053

.field static final DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX:Ljava/lang/String; = "+"

.field private static final DEFAULT_MAX_BADGE_CHARACTER_COUNT:I = 0x4

.field private static final DEFAULT_STYLE:I

.field private static final DEFAULT_THEME_ATTR:I

.field private static final MAX_CIRCULAR_BADGE_NUMBER_COUNT:I = 0x9

.field public static final TOP_END:I = 0x800035

.field public static final TOP_START:I = 0x800033


# instance fields
.field private anchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final badgeBounds:Landroid/graphics/Rect;

.field private badgeCenterX:F

.field private badgeCenterY:F

.field private final badgeRadius:F

.field private final badgeWidePadding:F

.field private final badgeWithTextRadius:F

.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cornerRadius:F

.field private customBadgeParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private halfBadgeHeight:F

.field private halfBadgeWidth:F

.field private maxBadgeNumber:I

.field private final savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

.field private final shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Badge:I

    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    .line 145
    sget v0, Lcom/google/android/material/R$attr;->badgeStyle:I

    sput v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 359
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 360
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 361
    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 363
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 364
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 366
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeRadius:F

    .line 367
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWidePadding:F

    .line 368
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_badge_with_text_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWithTextRadius:F

    .line 370
    new-instance v0, Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 371
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 372
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-direct {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 373
    sget p1, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setTextAppearanceResource(I)V

    return-void
.end method

.method private calculateCenterAndBounds(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    const v1, 0x800053

    if-eq v0, v1, :cond_0

    const v2, 0x800055

    if-eq v0, v2, :cond_0

    .line 695
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    goto :goto_0

    .line 690
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 699
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_2

    .line 700
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeRadius:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWithTextRadius:F

    :goto_1
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    .line 701
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 702
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    goto :goto_2

    .line 704
    :cond_2
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWithTextRadius:F

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    .line 705
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 706
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeText()Ljava/lang/String;

    move-result-object v0

    .line 707
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeWidePadding:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 712
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 714
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_text_horizontal_edge_offset:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_badge_horizontal_edge_offset:I

    .line 713
    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 718
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    const v2, 0x800033

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_5

    .line 730
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_4

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr p2, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    goto :goto_4

    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr p2, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    :goto_4
    iput p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    goto :goto_6

    .line 722
    :cond_5
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_6

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr p2, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    goto :goto_5

    :cond_6
    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr p2, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    :goto_5
    iput p2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    :goto_6
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 3

    .line 262
    sget v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    sget v1, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1

    .line 294
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {v0, p0}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/badge/BadgeDrawable;->loadDefaultStateFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method public static createFromResource(Landroid/content/Context;I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 2

    const-string v0, "badge"

    .line 279
    invoke-static {p0, p1, v0}, Lcom/google/android/material/drawable/DrawableUtils;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 280
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    sget v0, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_STYLE:I

    .line 284
    :cond_0
    sget v1, Lcom/google/android/material/badge/BadgeDrawable;->DEFAULT_THEME_ATTR:I

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method static createFromSavedState(Landroid/content/Context;Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1

    .line 254
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {v0, p0}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-direct {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->restoreFromSavedState(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)V

    return-object v0
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 5

    .line 738
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 739
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeText()Ljava/lang/String;

    move-result-object v1

    .line 740
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 741
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 744
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 745
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 741
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getBadgeText()Ljava/lang/String;
    .locals 5

    .line 751
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    if-gt v0, v1, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 759
    :cond_1
    sget v1, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_suffix:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 761
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "+"

    aput-object v4, v2, v3

    .line 759
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadDefaultStateFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 328
    sget-object v2, Lcom/google/android/material/R$styleable;->Badge:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 329
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 332
    sget p3, Lcom/google/android/material/R$styleable;->Badge_maxCharacterCount:I

    const/4 p4, 0x4

    .line 333
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 332
    invoke-virtual {p0, p3}, Lcom/google/android/material/badge/BadgeDrawable;->setMaxCharacterCount(I)V

    .line 338
    sget p3, Lcom/google/android/material/R$styleable;->Badge_number:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 339
    sget p3, Lcom/google/android/material/R$styleable;->Badge_number:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/badge/BadgeDrawable;->setNumber(I)V

    .line 342
    :cond_0
    sget p3, Lcom/google/android/material/R$styleable;->Badge_backgroundColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeDrawable;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/badge/BadgeDrawable;->setBackgroundColor(I)V

    .line 346
    sget p3, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 347
    sget p3, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/badge/BadgeDrawable;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeTextColor(I)V

    .line 350
    :cond_1
    sget p1, Lcom/google/android/material/R$styleable;->Badge_badgeGravity:I

    const p3, 0x800035

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeGravity(I)V

    .line 351
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 0

    .line 356
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private restoreFromSavedState(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)V
    .locals 2

    .line 308
    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setMaxCharacterCount(I)V

    .line 313
    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 314
    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setNumber(I)V

    .line 317
    :cond_0
    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->backgroundColor:I
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$200(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBackgroundColor(I)V

    .line 321
    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$300(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeTextColor(I)V

    .line 323
    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I
    invoke-static {p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->setBadgeGravity(I)V

    return-void
.end method

.method private setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    .line 651
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    return-void
.end method

.method private setTextAppearanceResource(I)V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 639
    :cond_0
    new-instance v1, Lcom/google/android/material/resources/TextAppearance;

    invoke-direct {v1, v0, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    return-void
.end method

.method private updateCenterAndBounds()V
    .locals 6

    .line 655
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 656
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto :goto_1

    .line 660
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 661
    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 663
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 665
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 667
    iget-object v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_2
    if-nez v2, :cond_3

    .line 668
    sget-boolean v5, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v5, :cond_5

    :cond_3
    if-nez v2, :cond_4

    .line 671
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 672
    :cond_4
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 675
    :cond_5
    invoke-direct {p0, v0, v4, v1}, Lcom/google/android/material/badge/BadgeDrawable;->calculateCenterAndBounds(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 677
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    iget v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/material/badge/BadgeUtils;->updateBadgeBounds(Landroid/graphics/Rect;FFFF)V

    .line 679
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 680
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 681
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private updateMaxBadgeNumber()V
    .locals 4

    .line 767
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getMaxCharacterCount()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    return-void
.end method


# virtual methods
.method public clearNumber()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    const/4 v1, -0x1

    # setter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$102(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 487
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 582
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    invoke-direct {p0, p1}, Lcom/google/android/material/badge/BadgeDrawable;->drawText(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$500(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBadgeGravity()I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    return v0
.end method

.method public getBadgeTextColor()I
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 6

    .line 613
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$700(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    if-lez v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-object v1

    .line 623
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    .line 625
    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I
    invoke-static {v1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$700(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 624
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1

    .line 630
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$600(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getMaxCharacterCount()I
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    return v0
.end method

.method public getNumber()I
    .locals 1

    .line 460
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getSavedState()Lcom/google/android/material/badge/BadgeDrawable$SavedState;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    return-object v0
.end method

.method public hasNumber()Z
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 600
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public onTextSizeChange()V
    .locals 0

    .line 595
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # setter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->alpha:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$502(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 554
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 555
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # setter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->backgroundColor:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$202(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 413
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 414
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBadgeGravity(I)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$400(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # setter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeGravity:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$402(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 529
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 530
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 531
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 530
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public setBadgeTextColor(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # setter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->badgeTextColor:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$302(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 439
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 441
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setContentDescriptionNumberless(Ljava/lang/CharSequence;)V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # setter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionNumberless:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$602(Lcom/google/android/material/badge/BadgeDrawable$SavedState;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method

.method public setContentDescriptionQuantityStringsResource(I)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # setter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->contentDescriptionQuantityStrings:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$702(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    return-void
.end method

.method public setMaxCharacterCount(I)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$000(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # setter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->maxCharacterCount:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$002(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 509
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateMaxBadgeNumber()V

    .line 510
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 511
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 512
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setNumber(I)V
    .locals 1

    const/4 v0, 0x0

    .line 475
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 476
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # getter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$100(Lcom/google/android/material/badge/BadgeDrawable$SavedState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->savedState:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    # setter for: Lcom/google/android/material/badge/BadgeDrawable$SavedState;->number:I
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->access$102(Lcom/google/android/material/badge/BadgeDrawable$SavedState;I)I

    .line 478
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 479
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->setVisible(ZZ)Z

    return-void
.end method

.method public updateBadgeCoordinates(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 388
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 389
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 390
    invoke-direct {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 391
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->invalidateSelf()V

    return-void
.end method
