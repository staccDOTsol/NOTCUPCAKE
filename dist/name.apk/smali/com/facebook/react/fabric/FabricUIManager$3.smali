.class Lcom/facebook/react/fabric/FabricUIManager$3;
.super Ljava/lang/Object;
.source "FabricUIManager.java"

# interfaces
.implements Lcom/facebook/react/fabric/mounting/mountitems/MountItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/fabric/FabricUIManager;->setJSResponder(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/FabricUIManager;

.field final synthetic val$blockNativeResponder:Z

.field final synthetic val$initialReactTag:I

.field final synthetic val$reactTag:I

.field final synthetic val$surfaceId:I


# direct methods
.method constructor <init>(Lcom/facebook/react/fabric/FabricUIManager;IIIZ)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    iput p2, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$surfaceId:I

    iput p3, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$reactTag:I

    iput p4, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$initialReactTag:I

    iput-boolean p5, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$blockNativeResponder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 3

    .line 1032
    iget v0, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$surfaceId:I

    .line 1033
    invoke-virtual {p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1035
    iget v0, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$reactTag:I

    iget v1, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$initialReactTag:I

    iget-boolean v2, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$blockNativeResponder:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->setJSResponder(IIZ)V

    goto :goto_0

    .line 1038
    :cond_0
    sget-object p1, Lcom/facebook/react/fabric/FabricUIManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setJSResponder skipped, surface no longer available ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$surfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getSurfaceId()I
    .locals 1

    .line 1045
    iget v0, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$surfaceId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1050
    iget v1, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$reactTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/facebook/react/fabric/FabricUIManager$3;->val$surfaceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SET_JS_RESPONDER [%d] [surface:%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
