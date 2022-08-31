.class Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "ReactSliderManager.java"

# interfaces
.implements Lcom/facebook/yoga/YogaMeasureFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/slider/ReactSliderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReactSliderShadowNode"
.end annotation


# instance fields
.field private mHeight:I

.field private mMeasured:Z

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    .line 62
    invoke-direct {p0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->initMeasureFunction()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/views/slider/ReactSliderManager$1;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;-><init>()V

    return-void
.end method

.method private initMeasureFunction()V
    .locals 0

    .line 66
    invoke-virtual {p0, p0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->setMeasureFunction(Lcom/facebook/yoga/YogaMeasureFunction;)V

    return-void
.end method


# virtual methods
.method public measure(Lcom/facebook/yoga/YogaNode;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 0

    .line 76
    iget-boolean p1, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mMeasured:Z

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lcom/facebook/react/views/slider/ReactSlider;

    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->getThemedContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object p2

    const/4 p3, 0x0

    const p4, 0x101007b

    invoke-direct {p1, p2, p3, p4}, Lcom/facebook/react/views/slider/ReactSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    invoke-virtual {p1}, Lcom/facebook/react/views/slider/ReactSlider;->disableStateListAnimatorIfNeeded()V

    const/4 p2, -0x2

    const/4 p3, 0x0

    .line 83
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 85
    invoke-virtual {p1, p2, p2}, Lcom/facebook/react/views/slider/ReactSlider;->measure(II)V

    .line 86
    invoke-virtual {p1}, Lcom/facebook/react/views/slider/ReactSlider;->getMeasuredWidth()I

    move-result p2

    iput p2, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mWidth:I

    .line 87
    invoke-virtual {p1}, Lcom/facebook/react/views/slider/ReactSlider;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mHeight:I

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mMeasured:Z

    .line 91
    :cond_0
    iget p1, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mWidth:I

    iget p2, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderShadowNode;->mHeight:I

    invoke-static {p1, p2}, Lcom/facebook/yoga/YogaMeasureOutput;->make(II)J

    move-result-wide p1

    return-wide p1
.end method
