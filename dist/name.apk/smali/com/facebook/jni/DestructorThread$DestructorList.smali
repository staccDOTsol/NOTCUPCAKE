.class Lcom/facebook/jni/DestructorThread$DestructorList;
.super Ljava/lang/Object;
.source "DestructorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/jni/DestructorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DestructorList"
.end annotation


# instance fields
.field private final mHead:Lcom/facebook/jni/DestructorThread$Destructor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/facebook/jni/DestructorThread$Terminus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/jni/DestructorThread$Terminus;-><init>(Lcom/facebook/jni/DestructorThread$1;)V

    iput-object v0, p0, Lcom/facebook/jni/DestructorThread$DestructorList;->mHead:Lcom/facebook/jni/DestructorThread$Destructor;

    .line 131
    new-instance v2, Lcom/facebook/jni/DestructorThread$Terminus;

    invoke-direct {v2, v1}, Lcom/facebook/jni/DestructorThread$Terminus;-><init>(Lcom/facebook/jni/DestructorThread$1;)V

    # setter for: Lcom/facebook/jni/DestructorThread$Destructor;->next:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {v0, v2}, Lcom/facebook/jni/DestructorThread$Destructor;->access$602(Lcom/facebook/jni/DestructorThread$Destructor;Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    .line 132
    # getter for: Lcom/facebook/jni/DestructorThread$Destructor;->next:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {v0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$600(Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    move-result-object v1

    # setter for: Lcom/facebook/jni/DestructorThread$Destructor;->previous:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {v1, v0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$302(Lcom/facebook/jni/DestructorThread$Destructor;Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/jni/DestructorThread$Destructor;)V
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/facebook/jni/DestructorThread$DestructorList;->drop(Lcom/facebook/jni/DestructorThread$Destructor;)V

    return-void
.end method

.method private static drop(Lcom/facebook/jni/DestructorThread$Destructor;)V
    .locals 2

    .line 144
    # getter for: Lcom/facebook/jni/DestructorThread$Destructor;->next:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {p0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$600(Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    move-result-object v0

    # getter for: Lcom/facebook/jni/DestructorThread$Destructor;->previous:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {p0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$300(Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    move-result-object v1

    # setter for: Lcom/facebook/jni/DestructorThread$Destructor;->previous:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {v0, v1}, Lcom/facebook/jni/DestructorThread$Destructor;->access$302(Lcom/facebook/jni/DestructorThread$Destructor;Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    .line 145
    # getter for: Lcom/facebook/jni/DestructorThread$Destructor;->previous:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {p0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$300(Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    move-result-object v0

    # getter for: Lcom/facebook/jni/DestructorThread$Destructor;->next:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {p0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$600(Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    move-result-object p0

    # setter for: Lcom/facebook/jni/DestructorThread$Destructor;->next:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {v0, p0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$602(Lcom/facebook/jni/DestructorThread$Destructor;Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    return-void
.end method


# virtual methods
.method public enqueue(Lcom/facebook/jni/DestructorThread$Destructor;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/facebook/jni/DestructorThread$DestructorList;->mHead:Lcom/facebook/jni/DestructorThread$Destructor;

    # getter for: Lcom/facebook/jni/DestructorThread$Destructor;->next:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {v0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$600(Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    move-result-object v0

    # setter for: Lcom/facebook/jni/DestructorThread$Destructor;->next:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {p1, v0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$602(Lcom/facebook/jni/DestructorThread$Destructor;Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    .line 137
    iget-object v0, p0, Lcom/facebook/jni/DestructorThread$DestructorList;->mHead:Lcom/facebook/jni/DestructorThread$Destructor;

    # setter for: Lcom/facebook/jni/DestructorThread$Destructor;->next:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {v0, p1}, Lcom/facebook/jni/DestructorThread$Destructor;->access$602(Lcom/facebook/jni/DestructorThread$Destructor;Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    .line 139
    # getter for: Lcom/facebook/jni/DestructorThread$Destructor;->next:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {p1}, Lcom/facebook/jni/DestructorThread$Destructor;->access$600(Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    move-result-object v0

    # setter for: Lcom/facebook/jni/DestructorThread$Destructor;->previous:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {v0, p1}, Lcom/facebook/jni/DestructorThread$Destructor;->access$302(Lcom/facebook/jni/DestructorThread$Destructor;Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    .line 140
    iget-object v0, p0, Lcom/facebook/jni/DestructorThread$DestructorList;->mHead:Lcom/facebook/jni/DestructorThread$Destructor;

    # setter for: Lcom/facebook/jni/DestructorThread$Destructor;->previous:Lcom/facebook/jni/DestructorThread$Destructor;
    invoke-static {p1, v0}, Lcom/facebook/jni/DestructorThread$Destructor;->access$302(Lcom/facebook/jni/DestructorThread$Destructor;Lcom/facebook/jni/DestructorThread$Destructor;)Lcom/facebook/jni/DestructorThread$Destructor;

    return-void
.end method
