.class public abstract Lcom/facebook/react/devsupport/DevSupportManagerBase;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevSupportManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;
    }
.end annotation


# static fields
.field public static final EMOJI_FACE_WITH_NO_GOOD_GESTURE:Ljava/lang/String; = " \ud83d\ude45"

.field public static final EMOJI_HUNDRED_POINTS_SYMBOL:Ljava/lang/String; = " \ud83d\udcaf"

.field private static final EXOPACKAGE_LOCATION_FORMAT:Ljava/lang/String; = "/data/local/tmp/exopackage/%s//secondary-dex"

.field private static final FLIPPER_DEBUGGER_URL:Ljava/lang/String; = "flipper://null/Hermesdebuggerrn?device=React%20Native"

.field private static final FLIPPER_DEVTOOLS_URL:Ljava/lang/String; = "flipper://null/React?device=React%20Native"

.field private static final JAVA_ERROR_COOKIE:I = -0x1

.field private static final JSEXCEPTION_ERROR_COOKIE:I = -0x1

.field private static final RELOAD_APP_ACTION_SUFFIX:Ljava/lang/String; = ".RELOAD_APP_ACTION"


# instance fields
.field private currentActivity:Landroid/app/Activity;

.field private final mApplicationContext:Landroid/content/Context;

.field private mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

.field private mBundleStatus:Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;

.field private mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

.field private final mCustomDevOptions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomPackagerCommandHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

.field private final mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

.field private final mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

.field private mDevLoadingViewVisible:Z

.field private mDevOptionsDialog:Landroid/app/AlertDialog;

.field private final mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

.field private mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

.field private mErrorCustomizers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDevSupportEnabled:Z

.field private mIsReceiverRegistered:Z

.field private mIsShakeDetectorStarted:Z

.field private final mJSAppBundleName:Ljava/lang/String;

.field private final mJSBundleDownloadedFile:Ljava/io/File;

.field private final mJSSplitBundlesDir:Ljava/io/File;

.field private mLastErrorCookie:I

.field private mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

.field private mLastErrorTitle:Ljava/lang/String;

.field private mLastErrorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

.field private mPackagerLocationCustomizer:Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;

.field private mPendingJSSplitBundleRequests:I

.field private final mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

.field private mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

.field private mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

.field private final mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

.field private final mSurfaceDelegateFactory:Lcom/facebook/react/common/SurfaceDelegateFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/devsupport/ReactInstanceDevHelper;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/react/devsupport/RedBoxHandler;",
            "Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;",
            "Lcom/facebook/react/common/SurfaceDelegateFactory;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    .line 103
    iput v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    .line 106
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    .line 107
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    .line 108
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    .line 113
    iput v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I

    .line 135
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    .line 136
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    .line 137
    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    .line 138
    new-instance p3, Lcom/facebook/react/devsupport/DevInternalSettings;

    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$1;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-direct {p3, p1, v1}, Lcom/facebook/react/devsupport/DevInternalSettings;-><init>(Landroid/content/Context;Lcom/facebook/react/devsupport/DevInternalSettings$Listener;)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 147
    new-instance p3, Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;

    invoke-direct {p3}, Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;-><init>()V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleStatus:Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;

    .line 148
    new-instance p3, Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$2;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$2;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-direct {p3, v1, v2, v3}, Lcom/facebook/react/devsupport/DevServerHelper;-><init>(Lcom/facebook/react/devsupport/DevInternalSettings;Ljava/lang/String;Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatusProvider;)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    .line 158
    iput-object p6, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    .line 161
    new-instance p3, Lcom/facebook/react/common/ShakeDetector;

    new-instance p6, Lcom/facebook/react/devsupport/DevSupportManagerBase$3;

    invoke-direct {p6, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$3;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-direct {p3, p6, p7}, Lcom/facebook/react/common/ShakeDetector;-><init>(Lcom/facebook/react/common/ShakeDetector$ShakeListener;I)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    .line 171
    iput-object p8, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomPackagerCommandHandlers:Ljava/util/Map;

    .line 174
    new-instance p3, Lcom/facebook/react/devsupport/DevSupportManagerBase$4;

    invoke-direct {p3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$4;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getUniqueTag()Ljava/lang/String;

    move-result-object p3

    .line 197
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, "ReactNativeDevBundle.js"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 198
    new-instance p7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p8

    invoke-direct {p7, p8, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p7, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    .line 200
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_dev_js_split_bundles"

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 201
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSSplitBundlesDir:Ljava/io/File;

    .line 203
    new-instance p1, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    invoke-direct {p1}, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    .line 205
    invoke-virtual {p0, p4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->setDevSupportEnabled(Z)V

    .line 207
    iput-object p5, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    .line 208
    new-instance p1, Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-direct {p1, p2}, Lcom/facebook/react/devsupport/DevLoadingViewController;-><init>(Lcom/facebook/react/devsupport/ReactInstanceDevHelper;)V

    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    .line 209
    iput-object p9, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mSurfaceDelegateFactory:Lcom/facebook/react/common/SurfaceDelegateFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleStatus:Lcom/facebook/react/devsupport/InspectorPackagerConnection$BundleStatus;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/app/Activity;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->currentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->currentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/bridge/ReactContext;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reload()V

    return-void
.end method

.method static synthetic access$1500(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showSplitBundleDevLoadingView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideSplitBundleDevLoadingView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevLoadingViewController;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/Exception;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reportBundleLoadingFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleCaptureHeap(Lcom/facebook/react/packagerconnection/Responder;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Ljava/util/Map;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomPackagerCommandHandlers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevServerHelper;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxDialog;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/RedBoxDialog;)Lcom/facebook/react/devsupport/RedBoxDialog;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/facebook/react/devsupport/DevSupportManagerBase;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I

    return p0
.end method

.method static synthetic access$600(Lcom/facebook/react/devsupport/DevSupportManagerBase;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->processErrorCustomizers(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/RedBoxHandler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxHandler:Lcom/facebook/react/devsupport/RedBoxHandler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    return-object p0
.end method

.method private static getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".RELOAD_APP_ACTION"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleCaptureHeap(Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    return-void

    .line 899
    :cond_0
    const-class v1, Lcom/facebook/react/devsupport/JSCHeapCapture;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/devsupport/JSCHeapCapture;

    if-eqz v0, :cond_1

    .line 902
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    .line 903
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$20;

    invoke-direct {v2, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$20;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/packagerconnection/Responder;)V

    .line 902
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/JSCHeapCapture;->captureHeap(Ljava/lang/String;Lcom/facebook/react/devsupport/JSCHeapCapture$CaptureCallback;)V

    :cond_1
    return-void
.end method

.method private hideDevOptionsDialog()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private hideSplitBundleDevLoadingView()V
    .locals 1

    .line 853
    iget v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    if-nez v0, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideDevLoadingView()V

    :cond_0
    return-void
.end method

.method private logJSException(Ljava/lang/Exception;)V
    .locals 4

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in native call from JS"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :goto_1
    const-string v3, "\n\n"

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 233
    :cond_1
    instance-of v1, p1, Lcom/facebook/react/devsupport/JSException;

    if-eqz v1, :cond_2

    const-string v1, "ReactNative"

    .line 234
    invoke-static {v1, v2, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    check-cast p1, Lcom/facebook/react/devsupport/JSException;

    invoke-virtual {p1}, Lcom/facebook/react/devsupport/JSException;->getStack()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    const/4 v1, -0x1

    sget-object v2, Lcom/facebook/react/devsupport/interfaces/ErrorType;->JS:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    goto :goto_2

    .line 241
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private processErrorCustomizers(Landroid/util/Pair;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Lcom/facebook/react/devsupport/interfaces/StackFrame;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p1

    .line 279
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;

    .line 280
    invoke-interface {v1, p1}, Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;->customizeErrorInfo(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private reload()V
    .locals 4

    .line 1090
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 1093
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_4

    .line 1095
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isFpsDebugEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    .line 1100
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    const-string v3, "sensor"

    .line 1102
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 1101
    invoke-virtual {v0, v2}, Lcom/facebook/react/common/ShakeDetector;->start(Landroid/hardware/SensorManager;)V

    .line 1103
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    .line 1107
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    if-nez v0, :cond_2

    .line 1108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1109
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getReloadAppAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1110
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1111
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    .line 1115
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    if-eqz v0, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    const-string v1, "Reloading..."

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showMessage(Ljava/lang/String;)V

    .line 1119
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    .line 1120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$28;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$28;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 1119
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/devsupport/DevServerHelper;->openPackagerConnection(Ljava/lang/String;Lcom/facebook/react/devsupport/DevServerHelper$PackagerCommandListener;)V

    goto :goto_0

    .line 1174
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1175
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    .line 1179
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    if-eqz v0, :cond_6

    .line 1180
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mShakeDetector:Lcom/facebook/react/common/ShakeDetector;

    invoke-virtual {v0}, Lcom/facebook/react/common/ShakeDetector;->stop()V

    .line 1181
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsShakeDetectorStarted:Z

    .line 1185
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_7

    .line 1186
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReloadAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1187
    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsReceiverRegistered:Z

    .line 1191
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideRedboxDialog()V

    .line 1194
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->hideDevOptionsDialog()V

    .line 1197
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevLoadingViewController;->hide()V

    .line 1198
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->closePackagerConnection()V

    :goto_0
    return-void
.end method

.method private reportBundleLoadingFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 999
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$23;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$23;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/Exception;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 8

    .line 700
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-ne v0, p1, :cond_0

    return-void

    .line 705
    :cond_0
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    .line 708
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 709
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DebugOverlayController;->setFpsDebugViewVisible(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 712
    new-instance v0, Lcom/facebook/react/devsupport/DebugOverlayController;

    invoke-direct {v0, p1}, Lcom/facebook/react/devsupport/DebugOverlayController;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDebugOverlayController:Lcom/facebook/react/devsupport/DebugOverlayController;

    .line 715
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz p1, :cond_3

    .line 717
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getSourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 719
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 720
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 721
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v0, Lcom/facebook/react/devsupport/HMRClient;

    .line 722
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/facebook/react/devsupport/HMRClient;

    const-string v3, "android"

    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    .line 723
    invoke-virtual {p1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v7

    invoke-interface/range {v2 .. v7}, Lcom/facebook/react/devsupport/HMRClient;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 725
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 729
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadSettings()V

    return-void
.end method

.method private showDevLoadingViewForUrl(Ljava/lang/String;)V
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showForUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 770
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    return-void
.end method

.method private showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    .locals 7

    .line 348
    new-instance v6, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    invoke-static {v6}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showSplitBundleDevLoadingView(Ljava/lang/String;)V
    .locals 0

    .line 847
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showDevLoadingViewForUrl(Ljava/lang/String;)V

    .line 848
    iget p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPendingJSSplitBundleRequests:I

    return-void
.end method

.method private updateLastErrorInfo(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorTitle:Ljava/lang/String;

    .line 924
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 925
    iput p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorCookie:I

    .line 926
    iput-object p4, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    return-void
.end method


# virtual methods
.method public addCustomDevOption(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0, p1}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->createRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public createSurfaceDelegate(Ljava/lang/String;)Lcom/facebook/react/common/SurfaceDelegate;
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mSurfaceDelegateFactory:Lcom/facebook/react/common/SurfaceDelegateFactory;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1224
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/react/common/SurfaceDelegateFactory;->createSurfaceDelegate(Ljava/lang/String;)Lcom/facebook/react/common/SurfaceDelegate;

    move-result-object p1

    return-object p1
.end method

.method public destroyRootView(Landroid/view/View;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0, p1}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->destroyRootView(Landroid/view/View;)V

    return-void
.end method

.method public downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/devsupport/DevServerHelper;->downloadBundleResourceFromUrlSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public fetchSplitBundleAndCreateBundleLoader(Ljava/lang/String;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V
    .locals 6

    .line 787
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerSplitBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSSplitBundlesDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    const-string v5, "_"

    .line 790
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jsbundle"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 791
    new-instance p1, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/facebook/react/devsupport/DevSupportManagerBase$18;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;Ljava/io/File;Lcom/facebook/react/devsupport/DevSupportManagerBase$CallbackWithBundleLoader;)V

    invoke-static {p1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method protected getDevServerHelper()Lcom/facebook/react/devsupport/DevServerHelper;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    return-object v0
.end method

.method public getDevSettings()Lcom/facebook/react/devsupport/DevInternalSettings;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    return-object v0
.end method

.method public bridge synthetic getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getDevSettings()Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDevSupportEnabled()Z
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    return v0
.end method

.method public getDownloadedJSBundleFile()Ljava/lang/String;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getJSAppBundleName()Ljava/lang/String;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getJSBundleURLForRemoteDebugging()Ljava/lang/String;
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    .line 660
    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 659
    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevServerHelper;->getJSBundleURLForRemoteDebugging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastErrorStack()[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorStack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    return-object v0
.end method

.method public getLastErrorTitle()Ljava/lang/String;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLastErrorType()Lcom/facebook/react/devsupport/interfaces/ErrorType;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mLastErrorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    return-object v0
.end method

.method protected getReactInstanceDevHelper()Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    return-object v0
.end method

.method public getSourceMapUrl()Ljava/lang/String;
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->getSourceMapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSAppBundleName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->getSourceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getUniqueTag()Ljava/lang/String;
.end method

.method public handleException(Ljava/lang/Exception;)V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->logJSException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDefaultNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/DefaultNativeModuleCallExceptionHandler;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public hasUpToDateJSBundleInCache()Z
    .locals 8

    .line 675
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 678
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    .line 679
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 680
    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v2, v3, v5

    if-lez v2, :cond_2

    .line 684
    new-instance v2, Ljava/io/File;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "/data/local/tmp/exopackage/%s//secondary-dex"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v1

    .line 685
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v3, v6

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v5

    :catch_0
    const-string v0, "ReactNative"

    const-string v2, "DevSupport is unable to get current app info"

    .line 693
    invoke-static {v0, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method protected hideDevLoadingView()V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevLoadingViewController;->hide()V

    const/4 v0, 0x0

    .line 782
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    return-void
.end method

.method public hideRedboxDialog()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/facebook/react/devsupport/RedBoxDialog;->dismiss()V

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mRedBoxDialog:Lcom/facebook/react/devsupport/RedBoxDialog;

    :cond_0
    return-void
.end method

.method public isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 1

    .line 860
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$19;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    .line 867
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPackagerLocationCustomizer:Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;

    if-eqz p1, :cond_0

    .line 868
    invoke-interface {p1, v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;->run(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 870
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onNewReactContextCreated(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 627
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method public onReactInstanceDestroyed(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 635
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->resetCurrentContext(Lcom/facebook/react/bridge/ReactContext;)V

    :cond_0
    return-void
.end method

.method public registerErrorCustomizer(Lcom/facebook/react/devsupport/interfaces/ErrorCustomizer;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mErrorCustomizers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reloadJSFromServer(Ljava/lang/String;)V
    .locals 1

    .line 930
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$21;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$21;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadJSFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;)V

    return-void
.end method

.method public reloadJSFromServer(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;)V
    .locals 3

    .line 947
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->DOWNLOAD_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 949
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showDevLoadingViewForUrl(Ljava/lang/String;)V

    .line 951
    new-instance v0, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;

    invoke-direct {v0}, Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;-><init>()V

    .line 953
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$22;

    invoke-direct {v2, p0, v0, p2}, Lcom/facebook/react/devsupport/DevSupportManagerBase$22;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;Lcom/facebook/react/devsupport/interfaces/BundleLoadCallback;)V

    iget-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mJSBundleDownloadedFile:Ljava/io/File;

    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->downloadBundleFromURL(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;Ljava/io/File;Ljava/lang/String;Lcom/facebook/react/devsupport/BundleDownloader$BundleInfo;)V

    return-void
.end method

.method public reloadSettings()V
    .locals 1

    .line 734
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reload()V

    goto :goto_0

    .line 737
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$17;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$17;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setDevSupportEnabled(Z)V
    .locals 0

    .line 611
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    .line 612
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->reloadSettings()V

    return-void
.end method

.method public setFpsDebugEnabled(Z)V
    .locals 1

    .line 1060
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1064
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$26;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$26;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHotModuleReplacementEnabled(Z)V
    .locals 1

    .line 1028
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1032
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$24;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$24;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPackagerLocationCustomizer(Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;)V
    .locals 0

    .line 1210
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mPackagerLocationCustomizer:Lcom/facebook/react/devsupport/interfaces/DevSupportManager$PackagerLocationCustomizer;

    return-void
.end method

.method public setRemoteJSDebugEnabled(Z)V
    .locals 1

    .line 1044
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1048
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$25;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$25;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showDevLoadingViewForRemoteJSEnabled()V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewController:Lcom/facebook/react/devsupport/DevLoadingViewController;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showForRemoteJSEnabled()V

    const/4 v0, 0x1

    .line 776
    iput-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevLoadingViewVisible:Z

    return-void
.end method

.method public showDevOptionsDialog()V
    .locals 7

    .line 393
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 396
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 398
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v2, Lcom/facebook/react/R$string;->catalyst_reload:I

    .line 399
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;

    invoke-direct {v2, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$7;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 398
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isDeviceDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isRemoteJSDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1, v2}, Lcom/facebook/react/devsupport/DevInternalSettings;->setRemoteJSDebugEnabled(Z)V

    .line 424
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleReloadJS()V

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_debug_open:I

    .line 427
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$8;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$8;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 426
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_devtools_open:I

    .line 438
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$9;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$9;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 437
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_change_bundle_location:I

    .line 451
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$10;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$10;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 450
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isElementInspectorEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 488
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_inspector_stop:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 489
    :cond_3
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_inspector:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$11;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$11;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 486
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isHotModuleReplacementEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 500
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_hot_reloading_stop:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 501
    :cond_4
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_hot_reloading:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$12;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 498
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;

    invoke-virtual {v1}, Lcom/facebook/react/devsupport/DevInternalSettings;->isFpsDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 528
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_perf_monitor_stop:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 529
    :cond_5
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_perf_monitor:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$13;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$13;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 526
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_settings:I

    .line 546
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/react/devsupport/DevSupportManagerBase$14;

    invoke-direct {v3, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$14;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 545
    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 557
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCustomDevOptions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 560
    :cond_6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v3, v2, [Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;

    .line 562
    iget-object v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mReactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v3}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 563
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_3

    .line 570
    :cond_7
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "React Native DevMenu ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->getUniqueTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x32

    .line 572
    invoke-virtual {v4, v2, v5, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x11

    .line 573
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, -0x1000000

    .line 574
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41880000    # 17.0f

    .line 575
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 576
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 578
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 582
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/facebook/react/devsupport/DevSupportManagerBase$16;

    invoke-direct {v2, p0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$16;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;[Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V

    .line 581
    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/devsupport/DevSupportManagerBase$15;

    invoke-direct {v1, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$15;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    .line 590
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevOptionsDialog:Landroid/app/AlertDialog;

    .line 598
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 599
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mCurrentContext:Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_8

    .line 600
    const-class v1, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    const/4 v1, 0x0

    const-string v2, "RCTDevMenuShown"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    return-void

    :cond_9
    :goto_3
    const-string v0, "ReactNative"

    const-string v1, "Unable to launch dev options menu because react activity isn\'t available"

    .line 564
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public showNewJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 1

    .line 264
    invoke-static {p2}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJsStackTrace(Lcom/facebook/react/bridge/ReadableArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object p2

    sget-object v0, Lcom/facebook/react/devsupport/interfaces/ErrorType;->JS:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    return-void
.end method

.method public showNewJavaError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "ReactNative"

    const-string v1, "Exception in native call"

    .line 247
    invoke-static {v0, v1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    invoke-static {p2}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJavaStackTrace(Ljava/lang/Throwable;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object p2

    sget-object v0, Lcom/facebook/react/devsupport/interfaces/ErrorType;->NATIVE:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    const/4 v1, -0x1

    .line 248
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    return-void
.end method

.method public startInspector()V
    .locals 1

    .line 1016
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->openInspectorConnection()V

    :cond_0
    return-void
.end method

.method public stopInspector()V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevServerHelper:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-virtual {v0}, Lcom/facebook/react/devsupport/DevServerHelper;->closeInspectorConnection()V

    return-void
.end method

.method public toggleElementInspector()V
    .locals 1

    .line 1075
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase;->mIsDevSupportEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1079
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$27;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevSupportManagerBase$27;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
    .locals 1

    .line 292
    new-instance v0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;-><init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;ILcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
