.class public final synthetic Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/locks/ReentrantLock;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$2:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/locks/Condition;

    invoke-static {v0, v1, v2}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->$r8$lambda$JDXAqm0iIeCCM8QPaQWMIKWjd70(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method
