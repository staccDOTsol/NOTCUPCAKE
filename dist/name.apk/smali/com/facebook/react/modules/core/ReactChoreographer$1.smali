.class Lcom/facebook/react/modules/core/ReactChoreographer$1;
.super Ljava/lang/Object;
.source "ReactChoreographer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/core/ReactChoreographer;


# direct methods
.method constructor <init>(Lcom/facebook/react/modules/core/ReactChoreographer;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/facebook/react/modules/core/ReactChoreographer$1;->this$0:Lcom/facebook/react/modules/core/ReactChoreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/facebook/react/modules/core/ReactChoreographer$1;->this$0:Lcom/facebook/react/modules/core/ReactChoreographer;

    # invokes: Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallbackOnChoreographer()V
    invoke-static {v0}, Lcom/facebook/react/modules/core/ReactChoreographer;->access$100(Lcom/facebook/react/modules/core/ReactChoreographer;)V

    return-void
.end method
