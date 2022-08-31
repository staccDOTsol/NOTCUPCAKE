.class Lcom/facebook/react/views/text/ReactTextShadowNode$2;
.super Ljava/lang/Object;
.source "ReactTextShadowNode.java"

# interfaces
.implements Lcom/facebook/yoga/YogaBaselineFunction;


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

    .line 164
    iput-object p1, p0, Lcom/facebook/react/views/text/ReactTextShadowNode$2;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public baseline(Lcom/facebook/yoga/YogaNode;FF)F
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/facebook/react/views/text/ReactTextShadowNode$2;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    .line 169
    # getter for: Lcom/facebook/react/views/text/ReactTextShadowNode;->mPreparedSpannableText:Landroid/text/Spannable;
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$000(Lcom/facebook/react/views/text/ReactTextShadowNode;)Landroid/text/Spannable;

    move-result-object p1

    const-string p3, "Spannable element has not been prepared in onBeforeLayout"

    .line 168
    invoke-static {p1, p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Spannable;

    .line 172
    iget-object p3, p0, Lcom/facebook/react/views/text/ReactTextShadowNode$2;->this$0:Lcom/facebook/react/views/text/ReactTextShadowNode;

    sget-object v0, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    # invokes: Lcom/facebook/react/views/text/ReactTextShadowNode;->measureSpannedText(Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;
    invoke-static {p3, p1, p2, v0}, Lcom/facebook/react/views/text/ReactTextShadowNode;->access$100(Lcom/facebook/react/views/text/ReactTextShadowNode;Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;)Landroid/text/Layout;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method
