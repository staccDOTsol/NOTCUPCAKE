.class public Lcom/facebook/react/fabric/FabricSoLoader;
.super Ljava/lang/Object;
.source "FabricSoLoader.java"


# static fields
.field private static volatile sDidInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static staticInit()V
    .locals 3

    .line 21
    sget-boolean v0, Lcom/facebook/react/fabric/FabricSoLoader;->sDidInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, "FabricSoLoader.staticInit::load:fabricjni"

    .line 24
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 26
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_SO_FILE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-string v2, "fabricjni"

    .line 27
    invoke-static {v2}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 28
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_SO_FILE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 29
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    const/4 v0, 0x1

    .line 30
    sput-boolean v0, Lcom/facebook/react/fabric/FabricSoLoader;->sDidInit:Z

    return-void
.end method
