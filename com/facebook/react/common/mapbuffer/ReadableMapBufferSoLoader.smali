.class public Lcom/facebook/react/common/mapbuffer/ReadableMapBufferSoLoader;
.super Ljava/lang/Object;
.source "ReadableMapBufferSoLoader.java"


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
    sget-boolean v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBufferSoLoader;->sDidInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, "ReadableMapBufferSoLoader.staticInit::load:mapbufferjni"

    .line 24
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 27
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_MAPBUFFER_SO_FILE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-string v2, "mapbufferjni"

    .line 28
    invoke-static {v2}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 29
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->LOAD_REACT_NATIVE_MAPBUFFER_SO_FILE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 30
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBufferSoLoader;->sDidInit:Z

    return-void
.end method
