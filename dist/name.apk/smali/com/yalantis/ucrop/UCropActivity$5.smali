.class Lcom/yalantis/ucrop/UCropActivity$5;
.super Ljava/lang/Object;
.source "UCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/UCropActivity;->setupRotateWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalantis/ucrop/UCropActivity;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$5;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 519
    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$5;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    const/16 v0, 0x5a

    # invokes: Lcom/yalantis/ucrop/UCropActivity;->rotateByAngle(I)V
    invoke-static {p1, v0}, Lcom/yalantis/ucrop/UCropActivity;->access$800(Lcom/yalantis/ucrop/UCropActivity;I)V

    return-void
.end method
