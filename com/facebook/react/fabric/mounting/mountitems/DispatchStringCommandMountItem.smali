.class public Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;
.super Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;
.source "DispatchStringCommandMountItem.java"


# instance fields
.field private final mCommandArgs:Lcom/facebook/react/bridge/ReadableArray;

.field private final mCommandId:Ljava/lang/String;

.field private final mReactTag:I

.field private final mSurfaceId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;-><init>()V

    .line 24
    iput p1, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mSurfaceId:I

    .line 25
    iput p2, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mReactTag:I

    .line 26
    iput-object p3, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mCommandId:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mCommandArgs:Lcom/facebook/react/bridge/ReadableArray;

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 4

    .line 37
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mSurfaceId:I

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mReactTag:I

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mCommandId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mCommandArgs:Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/facebook/react/fabric/mounting/MountingManager;->receiveCommand(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public getSurfaceId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mSurfaceId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchStringCommandMountItem ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mReactTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;->mCommandId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
