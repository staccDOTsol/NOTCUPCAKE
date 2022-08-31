.class Lcom/facebook/react/animated/PropsAnimatedNode;
.super Lcom/facebook/react/animated/AnimatedNode;
.source "PropsAnimatedNode.java"


# instance fields
.field private mConnectedViewTag:I

.field private final mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

.field private final mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

.field private final mPropNodeMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUIManager:Lcom/facebook/react/bridge/UIManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    const-string v0, "props"

    .line 35
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropNodeMapping:Ljava/util/Map;

    .line 38
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    iget-object v3, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropNodeMapping:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {p1}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    .line 44
    iput-object p2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    return-void
.end method


# virtual methods
.method public connectToView(ILcom/facebook/react/bridge/UIManager;)V
    .locals 2

    .line 48
    iget v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 52
    iput p1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    .line 53
    iput-object p2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mUIManager:Lcom/facebook/react/bridge/UIManager;

    return-void

    .line 49
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animated node "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mTag:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is already attached to a view: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disconnectFromView(I)V
    .locals 3

    .line 57
    iget v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    const/4 v1, -0x1

    if-eq v0, p1, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to disconnect view that has not been connected with the given animated node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but is connected to view "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    :goto_0
    iput v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    return-void
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PropsAnimatedNode["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] connectedViewTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPropNodeMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropNodeMapping:Ljava/util/Map;

    const-string v2, "null"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPropMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/JavaOnlyMap;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restoreDefaultValues()V
    .locals 3

    .line 71
    iget v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaOnlyMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 84
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/JavaOnlyMap;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mUIManager:Lcom/facebook/react/bridge/UIManager;

    iget v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    iget-object v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/UIManager;->synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public final updateView()V
    .locals 6

    .line 92
    iget v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropNodeMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    iget-object v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mNativeAnimatedNodesManager:Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getNodeById(I)Lcom/facebook/react/animated/AnimatedNode;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 99
    instance-of v3, v2, Lcom/facebook/react/animated/StyleAnimatedNode;

    if-eqz v3, :cond_1

    .line 100
    check-cast v2, Lcom/facebook/react/animated/StyleAnimatedNode;

    iget-object v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-virtual {v2, v1}, Lcom/facebook/react/animated/StyleAnimatedNode;->collectViewUpdates(Lcom/facebook/react/bridge/JavaOnlyMap;)V

    goto :goto_0

    .line 101
    :cond_1
    instance-of v3, v2, Lcom/facebook/react/animated/ValueAnimatedNode;

    if-eqz v3, :cond_3

    .line 102
    check-cast v2, Lcom/facebook/react/animated/ValueAnimatedNode;

    invoke-virtual {v2}, Lcom/facebook/react/animated/ValueAnimatedNode;->getAnimatedObject()Ljava/lang/Object;

    move-result-object v3

    .line 103
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 104
    iget-object v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/facebook/react/bridge/JavaOnlyMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 109
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type of node used in property node "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mapped property node does not exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mUIManager:Lcom/facebook/react/bridge/UIManager;

    iget v1, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mConnectedViewTag:I

    iget-object v2, p0, Lcom/facebook/react/animated/PropsAnimatedNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/UIManager;->synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method
