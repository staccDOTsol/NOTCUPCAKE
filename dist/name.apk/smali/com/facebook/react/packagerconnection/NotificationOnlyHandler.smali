.class public abstract Lcom/facebook/react/packagerconnection/NotificationOnlyHandler;
.super Ljava/lang/Object;
.source "NotificationOnlyHandler.java"

# interfaces
.implements Lcom/facebook/react/packagerconnection/RequestHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/facebook/react/packagerconnection/JSPackagerClient;

    const-string v0, "JSPackagerClient"

    sput-object v0, Lcom/facebook/react/packagerconnection/NotificationOnlyHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNotification(Ljava/lang/Object;)V
.end method

.method public final onRequest(Ljava/lang/Object;Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 0

    const-string p1, "Request is not supported"

    .line 17
    invoke-interface {p2, p1}, Lcom/facebook/react/packagerconnection/Responder;->error(Ljava/lang/Object;)V

    .line 18
    sget-object p2, Lcom/facebook/react/packagerconnection/NotificationOnlyHandler;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
