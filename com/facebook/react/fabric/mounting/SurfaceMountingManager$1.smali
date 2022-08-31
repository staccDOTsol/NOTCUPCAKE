.class Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;
.super Ljava/lang/Object;
.source "SurfaceMountingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->addRootView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Landroid/view/View;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # getter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I
    invoke-static {v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$100(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 179
    sget-object v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Race condition in addRootView detected. Trying to set an id of ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 183
    # getter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I
    invoke-static {v4}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$100(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] on the RootView, but that id has already been set. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->val$rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # getter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I
    invoke-static {v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$100(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 198
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->val$rootView:Landroid/view/View;

    instance-of v1, v0, Lcom/facebook/react/uimanager/ReactRoot;

    if-eqz v1, :cond_2

    .line 199
    check-cast v0, Lcom/facebook/react/uimanager/ReactRoot;

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # getter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I
    invoke-static {v1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$100(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/ReactRoot;->setRootViewTag(I)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # setter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mRootViewAttached:Z
    invoke-static {v0, v2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$202(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;Z)Z

    .line 203
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    # invokes: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->executeViewAttachMountItems()V
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$300(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)V

    return-void

    .line 186
    :cond_3
    sget-object v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->val$rootView:Landroid/view/View;

    .line 189
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 190
    # getter for: Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->mSurfaceId:I
    invoke-static {v3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->access$100(Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Trying to add RootTag to RootView that already has a tag: existing tag: [%d] new tag: [%d]"

    .line 186
    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string v1, "Trying to add a root view with an explicit id already set. React Native uses the id field to track react tags and will overwrite this field. If that is fine, explicitly overwrite the id field to View.NO_ID before calling addRootView."

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
