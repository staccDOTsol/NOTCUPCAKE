.class final Lcom/facebook/jni/DestructorThread$1;
.super Ljava/lang/Thread;
.source "DestructorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/jni/DestructorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    :catch_0
    :goto_0
    :try_start_0
    # getter for: Lcom/facebook/jni/DestructorThread;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Lcom/facebook/jni/DestructorThread;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/facebook/jni/DestructorThread$Destructor;

    .line 77
    invoke-virtual {v0}, Lcom/facebook/jni/DestructorThread$Destructor;->destruct()V

    .line 81
    # getter for: Lcom/facebook/jni/DestructorThread$Destructor;->previous:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {v0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$300(Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    # getter for: Lcom/facebook/jni/DestructorThread;->sDestructorStack:Lcom/facebook/jni/DestructorThread$DestructorStack;
    invoke-static {}, Lcom/facebook/jni/DestructorThread;->access$100()Lcom/facebook/jni/DestructorThread$DestructorStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/jni/DestructorThread$DestructorStack;->transferAllToList()V

    .line 85
    :cond_0
    # invokes: Lcom/facebook/jni/DestructorThread$DestructorList;->drop(Lcom/facebook/jni/DestructorThread$Destructor;)V
    invoke-static {v0}, Lcom/facebook/jni/DestructorThread$DestructorList;->access$400(Lcom/facebook/jni/DestructorThread$Destructor;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
