.class Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup$2;
.super Ljava/lang/Object;
.source "ReactModalHostView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->updateState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

.field final synthetic val$realHeight:F

.field final synthetic val$realWidth:F


# direct methods
.method constructor <init>(Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;FF)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup$2;->this$0:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    iput p2, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup$2;->val$realWidth:F

    iput p3, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup$2;->val$realHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateUpdate()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 490
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 491
    iget v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup$2;->val$realWidth:F

    float-to-double v1, v1

    const-string v3, "screenWidth"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 492
    iget v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup$2;->val$realHeight:F

    float-to-double v1, v1

    const-string v3, "screenHeight"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method
