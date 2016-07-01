.class public Ljavafxports/android/FXDalvikEntity;
.super Ljava/lang/Object;
.source "FXDalvikEntity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafxports/android/FXDalvikEntity$SurfaceDetails;,
        Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;,
        Ljavafxports/android/FXDalvikEntity$InternalTextureView;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LIB:Ljava/lang/String; = "activity"

.field private static final APPLICATION_DEX_NAME:Ljava/lang/String; = "Application_dex.jar"

.field private static final APPLICATION_RESOURCES_NAME:Ljava/lang/String; = "Application_resources.jar"

.field private static final CLASSLOADER_PROPERTIES_NAME:Ljava/lang/String; = "classloader.properties"

.field private static final DEFAULT_LAUNCHER_CLASS:Ljava/lang/String; = "javafxports.android.DalvikLauncher"

.field private static final META_DATA_DEBUG_PORT:Ljava/lang/String; = "debug.port"

.field private static final META_DATA_LAUNCHER_CLASS:Ljava/lang/String; = "launcher.class"

.field public static final META_DATA_MAIN_CLASS:Ljava/lang/String; = "main.class"

.field private static final META_DATA_PRELOADER_CLASS:Ljava/lang/String; = "preloader.class"

.field private static final TAG:Ljava/lang/String; = "FXEntity"

.field private static cdlEvLoopFinished:Ljava/util/concurrent/CountDownLatch;

.field private static glassHasStarted:Z

.field private static imm:Landroid/view/inputmethod/InputMethodManager;

.field private static initializeMonocleMethod:Ljava/lang/reflect/Method;

.field private static launcher:Ljavafxports/android/Launcher;

.field private static myView:Landroid/view/TextureView;

.field private static onConfigurationChangedNativeMethod:Ljava/lang/reflect/Method;

.field private static onGlobalLayoutChangedMethod:Ljava/lang/reflect/Method;

.field private static onSurfaceChangedNativeMethod1:Ljava/lang/reflect/Method;

.field private static onSurfaceChangedNativeMethod2:Ljava/lang/reflect/Method;

.field private static onSurfaceCreatedMethod:Ljava/lang/reflect/Method;

.field private static onSurfaceRedrawNeededNativeMethod:Ljava/lang/reflect/Method;

.field private static softInput:J


# instance fields
.field private SCREEN_ORIENTATION:I

.field private final activity:Landroid/app/Activity;

.field private density:F

.field private launcherClassName:Ljava/lang/String;

.field private mainClassName:Ljava/lang/String;

.field private final metadata:Landroid/os/Bundle;

.field private onMultiTouchEventMethod:Ljava/lang/reflect/Method;

.field private preloaderClassName:Ljava/lang/String;

.field private surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Ljavafxports/android/FXDalvikEntity;->glassHasStarted:Z

    .line 292
    const-wide/16 v0, 0x0

    sput-wide v0, Ljavafxports/android/FXDalvikEntity;->softInput:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "metadata":Landroid/os/Bundle;
    move-object v2, p2

    .local v2, "activity":Landroid/app/Activity;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Ljavafxports/android/FXDalvikEntity;->SCREEN_ORIENTATION:I

    .line 86
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafxports/android/FXDalvikEntity;->metadata:Landroid/os/Bundle;

    .line 87
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafxports/android/FXDalvikEntity;->activity:Landroid/app/Activity;

    .line 89
    move-object v3, v2

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    sput-object v3, Ljavafxports/android/FXDalvikEntity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 90
    move-object v3, v0

    invoke-virtual {v3}, Ljavafxports/android/FXDalvikEntity;->jfxEventsLoop()V

    .line 91
    return-void
.end method

.method private native _jfxEventsLoop()V
.end method

.method private native _setDataDir(Ljava/lang/String;)V
.end method

.method private native _setDensity(F)V
.end method

.method private native _setSurface(Landroid/view/Surface;)V
.end method

.method static synthetic access$000()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Ljavafxports/android/FXDalvikEntity;->cdlEvLoopFinished:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$100(Ljavafxports/android/FXDalvikEntity;)V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "x0":Ljavafxports/android/FXDalvikEntity;
    move-object v1, v0

    invoke-direct {v1}, Ljavafxports/android/FXDalvikEntity;->_jfxEventsLoop()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Ljavafxports/android/FXDalvikEntity;->glassHasStarted:Z

    return v0
.end method

.method static synthetic access$300(Ljavafxports/android/FXDalvikEntity;)F
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "x0":Ljavafxports/android/FXDalvikEntity;
    move-object v1, v0

    iget v1, v1, Ljavafxports/android/FXDalvikEntity;->density:F

    move v0, v1

    .end local v0    # "x0":Ljavafxports/android/FXDalvikEntity;
    return v0
.end method

.method static synthetic access$400(Ljavafxports/android/FXDalvikEntity;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "x0":Ljavafxports/android/FXDalvikEntity;
    move-object v1, v0

    iget-object v1, v1, Ljavafxports/android/FXDalvikEntity;->onMultiTouchEventMethod:Ljava/lang/reflect/Method;

    move-object v0, v1

    .end local v0    # "x0":Ljavafxports/android/FXDalvikEntity;
    return-object v0
.end method

.method static synthetic access$500(Ljavafxports/android/FXDalvikEntity;)I
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "x0":Ljavafxports/android/FXDalvikEntity;
    move-object v1, v0

    iget v1, v1, Ljavafxports/android/FXDalvikEntity;->SCREEN_ORIENTATION:I

    move v0, v1

    .end local v0    # "x0":Ljavafxports/android/FXDalvikEntity;
    return v0
.end method

.method static synthetic access$600()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Ljavafxports/android/FXDalvikEntity;->onConfigurationChangedNativeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static notify_glassHasStarted()V
    .locals 5

    .prologue
    .line 265
    const-string v1, "FXEntity"

    const-string v2, "notify_glassHasStarted called in FXActivity. register device now."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 266
    const/4 v1, 0x1

    sput-boolean v1, Ljavafxports/android/FXDalvikEntity;->glassHasStarted:Z

    .line 268
    :try_start_0
    sget-object v1, Ljavafxports/android/FXDalvikEntity;->initializeMonocleMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    .line 275
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "register device done"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    return-void

    .line 271
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 272
    .restart local v0    # "t":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throwable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static notify_glassShutdown()V
    .locals 5

    .prologue
    .line 279
    const-string v0, "FXEntity"

    const-string v1, "notify_glassShutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 280
    new-instance v0, Ljava/lang/Thread;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    new-instance v2, Ljavafxports/android/FXDalvikEntity$1;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafxports/android/FXDalvikEntity$1;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 290
    return-void
.end method

.method private static notify_hideIME()V
    .locals 3

    .prologue
    .line 302
    const-string v0, "FXEntity"

    const-string v1, "Called notify_hideIME"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 304
    sget-object v0, Ljavafxports/android/FXDalvikEntity;->imm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Ljavafxports/android/FXDalvikEntity;->myView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    .line 305
    const-wide/16 v0, 0x0

    sput-wide v0, Ljavafxports/android/FXDalvikEntity;->softInput:J

    .line 306
    const-string v0, "FXEntity"

    const-string v1, "Done Calling notify_hideIME"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 307
    return-void
.end method

.method private static notify_showIME()V
    .locals 3

    .prologue
    .line 294
    const-string v0, "FXEntity"

    const-string v1, "Called notify_showIME"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 296
    sget-object v0, Ljavafxports/android/FXDalvikEntity;->imm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Ljavafxports/android/FXDalvikEntity;->myView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ljavafxports/android/FXDalvikEntity;->softInput:J

    .line 298
    const-string v0, "FXEntity"

    const-string v1, "Done calling notify_showIME"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 299
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 4

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "surface":Landroid/view/Surface;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafxports/android/FXDalvikEntity;->_setSurface(Landroid/view/Surface;)V

    .line 402
    return-void
.end method


# virtual methods
.method public createView()Landroid/view/TextureView;
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    new-instance v1, Ljavafxports/android/FXDalvikEntity$InternalTextureView;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafxports/android/FXDalvikEntity;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, v4}, Ljavafxports/android/FXDalvikEntity$InternalTextureView;-><init>(Ljavafxports/android/FXDalvikEntity;Landroid/content/Context;)V

    sput-object v1, Ljavafxports/android/FXDalvikEntity;->myView:Landroid/view/TextureView;

    .line 131
    sget-object v1, Ljavafxports/android/FXDalvikEntity;->myView:Landroid/view/TextureView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 133
    sget-object v1, Ljavafxports/android/FXDalvikEntity;->myView:Landroid/view/TextureView;

    move-object v0, v1

    .end local v0    # "this":Ljavafxports/android/FXDalvikEntity;
    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, v0

    iget-object v1, v1, Ljavafxports/android/FXDalvikEntity;->activity:Landroid/app/Activity;

    move-object v0, v1

    .end local v0    # "this":Ljavafxports/android/FXDalvikEntity;
    return-object v0
.end method

.method public getLauncherAndLaunchApplication()V
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/FXDalvikEntity;->metadata:Landroid/os/Bundle;

    const-string v4, "launcher.class"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/FXDalvikEntity;->metadata:Landroid/os/Bundle;

    const-string v4, "launcher.class"

    .line 101
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Ljavafxports/android/FXDalvikEntity;->launcherClassName:Ljava/lang/String;

    .line 103
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/FXDalvikEntity;->metadata:Landroid/os/Bundle;

    const-string v4, "main.class"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/FXDalvikEntity;->metadata:Landroid/os/Bundle;

    const-string v4, "main.class"

    .line 104
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v2, Ljavafxports/android/FXDalvikEntity;->mainClassName:Ljava/lang/String;

    .line 106
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/FXDalvikEntity;->metadata:Landroid/os/Bundle;

    const-string v4, "preloader.class"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/FXDalvikEntity;->metadata:Landroid/os/Bundle;

    const-string v4, "preloader.class"

    .line 107
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, v2, Ljavafxports/android/FXDalvikEntity;->preloaderClassName:Ljava/lang/String;

    .line 108
    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/FXDalvikEntity;->mainClassName:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/FXDalvikEntity;->mainClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 109
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Main application class must be defined.\nUse <meta-data android.name=\"main.class\" android.value=\"your.package.YourMainClass\"/>"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_1
    const-string v3, "javafxports.android.DalvikLauncher"

    goto :goto_0

    .line 104
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 107
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 113
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/FXDalvikEntity;->preloaderClassName:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Ljavafxports/android/FXDalvikEntity;->preloaderClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 114
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafxports/android/FXDalvikEntity;->preloaderClassName:Ljava/lang/String;

    .line 119
    :cond_5
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/FXDalvikEntity;->launcherClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 120
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Ljavafxports/android/Launcher;>;"
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafxports/android/Launcher;

    sput-object v2, Ljavafxports/android/FXDalvikEntity;->launcher:Ljavafxports/android/Launcher;

    .line 121
    sget-object v2, Ljavafxports/android/FXDalvikEntity;->launcher:Ljavafxports/android/Launcher;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafxports/android/FXDalvikEntity;->mainClassName:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Ljavafxports/android/FXDalvikEntity;->preloaderClassName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Ljavafxports/android/Launcher;->launchApp(Ljavafxports/android/FXDalvikEntity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    return-void

    .line 123
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Ljavafxports/android/Launcher;>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 124
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Did not create correct launcher."

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public jfxEventsLoop()V
    .locals 8

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v2, Ljavafxports/android/FXDalvikEntity;->cdlEvLoopFinished:Ljava/util/concurrent/CountDownLatch;

    .line 311
    new-instance v2, Ljava/lang/Thread;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljavafxports/android/FXDalvikEntity$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafxports/android/FXDalvikEntity$2;-><init>(Ljavafxports/android/FXDalvikEntity;)V

    const-string v5, "FXActivityEventsLoop"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v1, v2

    .line 318
    .local v1, "t":Ljava/lang/Thread;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 319
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 320
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 14

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "st":Landroid/graphics/SurfaceTexture;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    const-string v7, "FXEntity"

    const-string v8, "Surface created."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 139
    new-instance v7, Landroid/util/DisplayMetrics;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v4, v7

    .line 140
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/FXDalvikEntity;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    const-string v7, "FXEntity"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "metrics = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 142
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Ljavafxports/android/FXDalvikEntity;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 143
    new-instance v7, Landroid/view/Surface;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v5, v7

    .line 144
    .local v5, "surface":Landroid/view/Surface;
    move-object v7, v0

    new-instance v8, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v5

    move-object v12, v4

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v9, v10, v11, v12}, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;-><init>(Ljavafxports/android/FXDalvikEntity;Landroid/view/Surface;F)V

    iput-object v8, v7, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    .line 145
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    iget-object v8, v8, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->surface:Landroid/view/Surface;

    invoke-direct {v7, v8}, Ljavafxports/android/FXDalvikEntity;->_setSurface(Landroid/view/Surface;)V

    .line 146
    move-object v7, v0

    move-object v8, v4

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    iput v8, v7, Ljavafxports/android/FXDalvikEntity;->density:F

    .line 147
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    iget v8, v8, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->density:F

    invoke-direct {v7, v8}, Ljavafxports/android/FXDalvikEntity;->_setDensity(F)V

    .line 148
    sget-object v7, Ljavafxports/android/FXDalvikEntity;->launcher:Ljavafxports/android/Launcher;

    if-nez v7, :cond_0

    .line 150
    move-object v7, v0

    invoke-virtual {v7}, Ljavafxports/android/FXDalvikEntity;->getLauncherAndLaunchApplication()V

    .line 162
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    const-string v7, "FXEntity"

    const-string v8, "Surface created, application was already launched and we will recreate eglSurface now"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 154
    sget-object v7, Ljavafxports/android/FXDalvikEntity;->onSurfaceCreatedMethod:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 155
    const-string v7, "FXEntity"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Surface created, application was already launched and we will invoke native surface changed method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljavafxports/android/FXDalvikEntity;->onSurfaceChangedNativeMethod1:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 156
    sget-object v7, Ljavafxports/android/FXDalvikEntity;->onSurfaceChangedNativeMethod1:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 157
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/javafx/tk/Toolkit;->resumeRenderer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 159
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "Failed to invoke com.sun.glass.ui.android.DalvikInput.onSurfaceChangedNative1 method by reflection"

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 8

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "st":Landroid/graphics/SurfaceTexture;
    const-string v3, "FXEntity"

    const-string v4, "Called Surface destroyed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 185
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->pauseRenderer()V

    .line 186
    move-object v3, v0

    new-instance v4, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;-><init>(Ljavafxports/android/FXDalvikEntity;)V

    iput-object v4, v3, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    .line 187
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    iget-object v4, v4, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->surface:Landroid/view/Surface;

    invoke-direct {v3, v4}, Ljavafxports/android/FXDalvikEntity;->_setSurface(Landroid/view/Surface;)V

    .line 188
    sget-boolean v3, Ljavafxports/android/FXDalvikEntity;->glassHasStarted:Z

    if-eqz v3, :cond_0

    .line 190
    :try_start_0
    sget-object v3, Ljavafxports/android/FXDalvikEntity;->onSurfaceChangedNativeMethod1:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 193
    .line 195
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Ljavafxports/android/FXDalvikEntity;
    return v0

    .line 191
    .restart local v0    # "this":Ljavafxports/android/FXDalvikEntity;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Failed to invoke com.sun.glass.ui.android.DalvikInput.onSurfaceChangedNative1 method by reflection"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 14

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "st":Landroid/graphics/SurfaceTexture;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    const-string v6, "FXEntity"

    const-string v7, "Called Surface changed [%d, %d]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 167
    new-instance v6, Landroid/view/Surface;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v4, v6

    .line 168
    .local v4, "surface":Landroid/view/Surface;
    move-object v6, v0

    new-instance v7, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v4

    move v11, v2

    move v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;-><init>(Ljavafxports/android/FXDalvikEntity;Landroid/view/Surface;II)V

    iput-object v7, v6, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    .line 169
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    iget-object v7, v7, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->surface:Landroid/view/Surface;

    invoke-direct {v6, v7}, Ljavafxports/android/FXDalvikEntity;->_setSurface(Landroid/view/Surface;)V

    .line 170
    sget-boolean v6, Ljavafxports/android/FXDalvikEntity;->glassHasStarted:Z

    if-eqz v6, :cond_0

    .line 172
    :try_start_0
    sget-object v6, Ljavafxports/android/FXDalvikEntity;->onSurfaceChangedNativeMethod2:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    iget v11, v11, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->format:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    iget v11, v11, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->width:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move-object v11, v0

    iget-object v11, v11, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    iget v11, v11, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->height:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 173
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 174
    sget-object v6, Ljavafxports/android/FXDalvikEntity;->onSurfaceChangedNativeMethod2:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    iget v11, v11, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->format:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    iget v11, v11, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->width:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move-object v11, v0

    iget-object v11, v11, Ljavafxports/android/FXDalvikEntity;->surfaceDetails:Ljavafxports/android/FXDalvikEntity$SurfaceDetails;

    iget v11, v11, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->height:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 177
    .line 180
    :cond_0
    return-void

    .line 175
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 176
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "Failed to invoke com.sun.glass.ui.android.DalvikInput.onSurfaceChangedNative2 method by reflection"

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "st":Landroid/graphics/SurfaceTexture;
    const-string v2, "FXEntity"

    const-string v3, "surfacetextureupdated..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 202
    return-void
.end method

.method protected setInitializeMonocleMethod(Ljava/lang/reflect/Method;)V
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "v":Ljava/lang/reflect/Method;
    move-object v2, v1

    sput-object v2, Ljavafxports/android/FXDalvikEntity;->initializeMonocleMethod:Ljava/lang/reflect/Method;

    .line 229
    return-void
.end method

.method protected setOnConfigurationChangedNativeMethod(Ljava/lang/reflect/Method;)V
    .locals 3

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "onConfigurationChangedNativeMethod":Ljava/lang/reflect/Method;
    move-object v2, v0

    move-object v2, v1

    sput-object v2, Ljavafxports/android/FXDalvikEntity;->onConfigurationChangedNativeMethod:Ljava/lang/reflect/Method;

    .line 261
    return-void
.end method

.method protected setOnGlobalLayoutChangedMethod(Ljava/lang/reflect/Method;)V
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v2, v1

    sput-object v2, Ljavafxports/android/FXDalvikEntity;->onGlobalLayoutChangedMethod:Ljava/lang/reflect/Method;

    .line 237
    return-void
.end method

.method protected setOnMultiTouchEventMethod(Ljava/lang/reflect/Method;)V
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "onMultiTouchEventMethod":Ljava/lang/reflect/Method;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafxports/android/FXDalvikEntity;->onMultiTouchEventMethod:Ljava/lang/reflect/Method;

    .line 233
    return-void
.end method

.method protected setOnSurfaceChangedNativeMethod1(Ljava/lang/reflect/Method;)V
    .locals 3

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "onSurfaceChangedNativeMethod1":Ljava/lang/reflect/Method;
    move-object v2, v0

    move-object v2, v1

    sput-object v2, Ljavafxports/android/FXDalvikEntity;->onSurfaceChangedNativeMethod1:Ljava/lang/reflect/Method;

    .line 246
    return-void
.end method

.method protected setOnSurfaceChangedNativeMethod2(Ljava/lang/reflect/Method;)V
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "onSurfaceChangedNativeMethod2":Ljava/lang/reflect/Method;
    move-object v2, v0

    move-object v2, v1

    sput-object v2, Ljavafxports/android/FXDalvikEntity;->onSurfaceChangedNativeMethod2:Ljava/lang/reflect/Method;

    .line 251
    return-void
.end method

.method protected setOnSurfaceCreatedMethod(Ljava/lang/reflect/Method;)V
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "method":Ljava/lang/reflect/Method;
    move-object v2, v1

    sput-object v2, Ljavafxports/android/FXDalvikEntity;->onSurfaceCreatedMethod:Ljava/lang/reflect/Method;

    .line 241
    return-void
.end method

.method protected setOnSurfaceRedrawNeededNativeMethod(Ljava/lang/reflect/Method;)V
    .locals 3

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity;
    move-object v1, p1

    .local v1, "onSurfaceRedrawNeededNativeMethod":Ljava/lang/reflect/Method;
    move-object v2, v0

    move-object v2, v1

    sput-object v2, Ljavafxports/android/FXDalvikEntity;->onSurfaceRedrawNeededNativeMethod:Ljava/lang/reflect/Method;

    .line 256
    return-void
.end method
