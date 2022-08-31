.class public final synthetic Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;


# instance fields
.field public final synthetic f$0:Lcom/th3rdwave/safeareacontext/EdgeInsets;


# direct methods
.method public synthetic constructor <init>(Lcom/th3rdwave/safeareacontext/EdgeInsets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda0;->f$0:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    return-void
.end method


# virtual methods
.method public final getStateUpdate()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView$$ExternalSyntheticLambda0;->f$0:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->$r8$lambda$GYvVASVOHRPQtzUAhktxHC9Ym3c(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
