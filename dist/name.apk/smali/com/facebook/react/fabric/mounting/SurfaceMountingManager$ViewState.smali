.class Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;
.super Ljava/lang/Object;
.source "SurfaceMountingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewState"
.end annotation


# instance fields
.field public mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mIsRoot:Z

.field final mReactTag:I

.field public mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mView:Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mViewManager:Lcom/facebook/react/uimanager/ViewManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/react/uimanager/ViewManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1023
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Z)V

    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;)V
    .locals 0

    .line 1012
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;)V

    return-void
.end method

.method private constructor <init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Z)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1017
    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 1018
    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    .line 1019
    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    .line 1020
    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    .line 1027
    iput p1, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mReactTag:I

    .line 1028
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mView:Landroid/view/View;

    .line 1029
    iput-boolean p4, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mIsRoot:Z

    .line 1030
    iput-object p3, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;ZLcom/facebook/react/fabric/mounting/SurfaceMountingManager$1;)V
    .locals 0

    .line 1012
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Z)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1035
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1036
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewState ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mReactTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - isRoot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mIsRoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " - props: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - localData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - viewManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - isLayoutOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
