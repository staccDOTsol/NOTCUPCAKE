.class Lcom/facebook/react/fabric/mounting/MountingManager$1;
.super Ljava/lang/Object;
.source "MountingManager.java"

# interfaces
.implements Lcom/facebook/react/views/text/ReactTextViewManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/fabric/mounting/MountingManager;->measureTextMapBuffer(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/mounting/MountingManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/fabric/mounting/MountingManager;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager$1;->this$0:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostProcessSpannable(Landroid/text/Spannable;)V
    .locals 0

    return-void
.end method
