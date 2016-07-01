.class public Ljavafxports/android/DalvikLauncher;
.super Ljava/lang/Object;
.source "DalvikLauncher.java"

# interfaces
.implements Ljavafxports/android/Launcher;


# static fields
.field private static final ANDROID_PROPERTY_PREFIX:Ljava/lang/String; = "android."

.field private static final COM_SUN_JAVAFX_APPLICATION_LAUNCHERIMPL:Ljava/lang/String; = "com.sun.javafx.application.LauncherImpl"

.field private static final JAVAFX_APPLICATION_APPLICATION:Ljava/lang/String; = "javafx.application.Application"

.field private static final JAVAFX_PLATFORM_PROPERTIES:Ljava/lang/String; = "javafx.platform.properties"

.field private static final JAVA_CUSTOM_PROPERTIES:Ljava/lang/String; = "java.custom.properties"

.field private static final LAUNCH_APPLICATION_ARGS:[Ljava/lang/Class;

.field private static final LAUNCH_APPLICATION_METHOD:Ljava/lang/String; = "launchApplication"

.field private static final MAIN_METHOD:Ljava/lang/String; = "main"

.field private static final MAIN_METHOD_ARGS:[Ljava/lang/Class;

.field private static final PROPERTY_JAVAFXPORTS_OVERRIDE_TMPDIR:Ljava/lang/String; = "javafxports.override.tmpdir"

.field private static final TAG:Ljava/lang/String; = "DalvikLauncher"

.field private static applicationClassLoader:Ljava/lang/ClassLoader;

.field private static fxApplicationLaunched:Z

.field private static fxApplicationLaunching:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

.field private mainClassName:Ljava/lang/String;

.field private preloaderClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v0, Ljavafxports/android/DalvikLauncher;->LAUNCH_APPLICATION_ARGS:[Ljava/lang/Class;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v0, Ljavafxports/android/DalvikLauncher;->MAIN_METHOD_ARGS:[Ljava/lang/Class;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Ljavafxports/android/DalvikLauncher;->fxApplicationLaunched:Z

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Ljavafxports/android/DalvikLauncher;->fxApplicationLaunching:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 4

    .prologue
    .line 44
    move v0, p0

    .local v0, "x0":Z
    move v1, v0

    move v3, v1

    move v1, v3

    move v2, v3

    sput-boolean v2, Ljavafxports/android/DalvikLauncher;->fxApplicationLaunching:Z

    move v0, v1

    .end local v0    # "x0":Z
    return v0
.end method

.method static synthetic access$100()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Ljavafxports/android/DalvikLauncher;->MAIN_METHOD_ARGS:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 4

    .prologue
    .line 44
    move v0, p0

    .local v0, "x0":Z
    move v1, v0

    move v3, v1

    move v1, v3

    move v2, v3

    sput-boolean v2, Ljavafxports/android/DalvikLauncher;->fxApplicationLaunched:Z

    move v0, v1

    .end local v0    # "x0":Z
    return v0
.end method

.method static synthetic access$300(Ljavafxports/android/DalvikLauncher;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "x0":Ljavafxports/android/DalvikLauncher;
    move-object v1, v0

    iget-object v1, v1, Ljavafxports/android/DalvikLauncher;->activity:Landroid/app/Activity;

    move-object v0, v1

    .end local v0    # "x0":Ljavafxports/android/DalvikLauncher;
    return-object v0
.end method

.method private getApplicationClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafxports/android/DalvikLauncher;
    return-object v0
.end method

.method private initMethodHandles()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher;
    move-object v7, v0

    invoke-direct {v7}, Ljavafxports/android/DalvikLauncher;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "com.sun.glass.ui.monocle.AndroidInputDeviceRegistry"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v1, v7

    .line 218
    .local v1, "androidInputDeviceRegistry":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v1

    const-string v8, "registerDevice"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v2, v7

    .line 219
    .local v2, "registerDevice":Ljava/lang/reflect/Method;
    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/DalvikLauncher;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafxports/android/FXDalvikEntity;->setInitializeMonocleMethod(Ljava/lang/reflect/Method;)V

    .line 220
    move-object v7, v0

    invoke-direct {v7}, Ljavafxports/android/DalvikLauncher;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "com.sun.glass.ui.android.DalvikInput"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v3, v7

    .line 221
    .local v3, "dalvikInputClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/DalvikLauncher;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    move-object v8, v3

    const-string v9, "onMultiTouchEvent"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    const-class v13, [I

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    const-class v13, [I

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    const-class v13, [I

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x4

    const-class v13, [I

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafxports/android/FXDalvikEntity;->setOnMultiTouchEventMethod(Ljava/lang/reflect/Method;)V

    .line 222
    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/DalvikLauncher;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    move-object v8, v3

    const-string v9, "onGlobalLayoutChanged"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafxports/android/FXDalvikEntity;->setOnGlobalLayoutChangedMethod(Ljava/lang/reflect/Method;)V

    .line 223
    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/DalvikLauncher;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    move-object v8, v3

    const-string v9, "onSurfaceChangedNative"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafxports/android/FXDalvikEntity;->setOnSurfaceChangedNativeMethod1(Ljava/lang/reflect/Method;)V

    .line 224
    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/DalvikLauncher;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    move-object v8, v3

    const-string v9, "onSurfaceChangedNative"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafxports/android/FXDalvikEntity;->setOnSurfaceChangedNativeMethod2(Ljava/lang/reflect/Method;)V

    .line 225
    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/DalvikLauncher;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    move-object v8, v3

    const-string v9, "onSurfaceRedrawNeededNative"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafxports/android/FXDalvikEntity;->setOnSurfaceRedrawNeededNativeMethod(Ljava/lang/reflect/Method;)V

    .line 226
    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/DalvikLauncher;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    move-object v8, v3

    const-string v9, "onConfigurationChangedNative"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafxports/android/FXDalvikEntity;->setOnConfigurationChangedNativeMethod(Ljava/lang/reflect/Method;)V

    .line 227
    move-object v7, v0

    invoke-direct {v7}, Ljavafxports/android/DalvikLauncher;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "com.sun.glass.ui.monocle.AndroidAcceleratedScreen"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 228
    .local v4, "androidAcceleratedScreen":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/DalvikLauncher;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    move-object v8, v4

    const-string v9, "createEglSurface"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafxports/android/FXDalvikEntity;->setOnSurfaceCreatedMethod(Ljava/lang/reflect/Method;)V

    .line 229
    const/4 v7, 0x0

    move v5, v7

    .line 232
    .local v5, "hasAccessToFXClasses":Z
    move-object v7, v0

    :try_start_0
    invoke-direct {v7}, Ljavafxports/android/DalvikLauncher;->registerExitListener()V

    .line 233
    const-string v7, "DalvikLauncher"

    const-string v8, "We have JavaFX on our current (base) classpath, registered exit listener"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 238
    .line 239
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 236
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "DalvikLauncher"

    const-string v8, "No JavaFX on our current (base) classpath, don\'t register exit listener"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 237
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private registerExitListener()V
    .locals 6

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher;
    new-instance v2, Ljavafxports/android/DalvikLauncher$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafxports/android/DalvikLauncher$2;-><init>(Ljavafxports/android/DalvikLauncher;)V

    move-object v1, v2

    .line 252
    .local v1, "l":Lcom/sun/javafx/application/PlatformImpl$FinishListener;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/application/PlatformImpl;->addListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V

    .line 253
    return-void
.end method

.method private resolveApplicationClass()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher;
    move-object v3, v0

    invoke-direct {v3}, Ljavafxports/android/DalvikLauncher;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v1, v3

    .line 261
    .local v1, "cl":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    move-object v2, v3

    .line 262
    .local v2, "clazz":Ljava/lang/Class;
    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/DalvikLauncher;->mainClassName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/DalvikLauncher;->mainClassName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 263
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafxports/android/DalvikLauncher;->mainClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 267
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 268
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljavafxports/android/DalvikLauncher;
    return-object v0
.end method

.method private resolvePreloaderClass()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher;
    move-object v3, v0

    invoke-direct {v3}, Ljavafxports/android/DalvikLauncher;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v1, v3

    .line 276
    .local v1, "cl":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    move-object v2, v3

    .line 277
    .local v2, "clazz":Ljava/lang/Class;
    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/DalvikLauncher;->preloaderClassName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafxports/android/DalvikLauncher;->preloaderClassName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 278
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafxports/android/DalvikLauncher;->preloaderClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 280
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljavafxports/android/DalvikLauncher;
    return-object v0
.end method


# virtual methods
.method public launchApp(Ljavafxports/android/FXDalvikEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    .prologue
    .line 72
    move-object/from16 v0, p0

    .local v0, "this":Ljavafxports/android/DalvikLauncher;
    move-object/from16 v1, p1

    .local v1, "fxDalvikEntity":Ljavafxports/android/FXDalvikEntity;
    move-object/from16 v2, p2

    .local v2, "mainClassName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "preloaderClassName":Ljava/lang/String;
    move-object v13, v0

    move-object v14, v1

    iput-object v14, v13, Ljavafxports/android/DalvikLauncher;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    .line 73
    move-object v13, v0

    move-object v14, v1

    invoke-virtual {v14}, Ljavafxports/android/FXDalvikEntity;->getActivity()Landroid/app/Activity;

    move-result-object v14

    iput-object v14, v13, Ljavafxports/android/DalvikLauncher;->activity:Landroid/app/Activity;

    .line 74
    move-object v13, v0

    move-object v14, v3

    iput-object v14, v13, Ljavafxports/android/DalvikLauncher;->preloaderClassName:Ljava/lang/String;

    .line 75
    move-object v13, v0

    move-object v14, v2

    iput-object v14, v13, Ljavafxports/android/DalvikLauncher;->mainClassName:Ljava/lang/String;

    .line 77
    const/4 v13, 0x0

    move-object v4, v13

    .line 79
    .local v4, "isJavafxPlatformProperties":Ljava/io/InputStream;
    :try_start_0
    const-class v13, Ljavafxports/android/DalvikLauncher;

    const-string v14, "/javafx.platform.properties"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    move-object v4, v13

    .line 80
    move-object v13, v4

    if-nez v13, :cond_1

    .line 81
    new-instance v13, Ljava/lang/RuntimeException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const-string v15, "Could not find /javafx.platform.properties on classpath."

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 93
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    const-string v13, "DalvikLauncher"

    const-string v14, "Can\'t load javafx.platform.properties"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 94
    new-instance v13, Ljava/lang/RuntimeException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const-string v15, "Can\'t load javafx.platform.properties"

    move-object/from16 v16, v5

    invoke-direct/range {v14 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    move-object v9, v13

    .line 97
    move-object v13, v4

    if-eqz v13, :cond_0

    .line 98
    move-object v13, v4

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    :cond_0
    :goto_0
    move-object v13, v9

    throw v13

    .line 84
    :cond_1
    :try_start_3
    new-instance v13, Ljava/util/Properties;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    move-object v5, v13

    .line 85
    .local v5, "javafxPlatformProperties":Ljava/util/Properties;
    move-object v13, v5

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 86
    move-object v13, v5

    invoke-virtual {v13}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v6, v13

    :goto_1
    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    move-object v7, v13

    .line 87
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v13, v7

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v8, v13

    .line 88
    .local v8, "key":Ljava/lang/String;
    move-object v13, v8

    const-string v14, "android."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v13, v8

    const-string v14, "android."

    .line 89
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :goto_2
    move-object v14, v7

    .line 90
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 88
    invoke-static {v13, v14}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .line 91
    goto :goto_1

    .line 89
    :cond_2
    move-object v13, v8

    goto :goto_2

    .line 97
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "key":Ljava/lang/String;
    :cond_3
    move-object v13, v4

    if-eqz v13, :cond_4

    .line 98
    move-object v13, v4

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 102
    .line 106
    .end local v5    # "javafxPlatformProperties":Ljava/util/Properties;
    :cond_4
    :goto_3
    const/4 v13, 0x0

    move-object v5, v13

    .line 108
    .local v5, "isJavaCustomProperties":Ljava/io/InputStream;
    :try_start_5
    const-class v13, Ljavafxports/android/DalvikLauncher;

    const-string v14, "/java.custom.properties"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    move-object v5, v13

    .line 109
    move-object v13, v5

    if-eqz v13, :cond_5

    .line 110
    new-instance v13, Ljava/util/Properties;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    move-object v6, v13

    .line 111
    .local v6, "javaCustomProperties":Ljava/util/Properties;
    move-object v13, v6

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 112
    move-object v13, v6

    invoke-virtual {v13}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v7, v13

    :goto_4
    move-object v13, v7

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    move-object v8, v13

    .line 113
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v13, v8

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v14, v8

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v13

    .line 114
    goto :goto_4

    .line 100
    .end local v6    # "javaCustomProperties":Ljava/util/Properties;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v5, "javafxPlatformProperties":Ljava/util/Properties;
    :catch_1
    move-exception v13

    move-object v5, v13

    .line 101
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "DalvikLauncher"

    const-string v14, "Exception closing javafx.platform.properties InputStream"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 103
    goto :goto_3

    .line 100
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    move-object v10, v13

    .line 101
    .local v10, "e":Ljava/lang/Exception;
    const-string v13, "DalvikLauncher"

    const-string v14, "Exception closing javafx.platform.properties InputStream"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_0

    .line 119
    .end local v10    # "e":Ljava/lang/Exception;
    .local v5, "isJavaCustomProperties":Ljava/io/InputStream;
    :cond_5
    move-object v13, v5

    if-eqz v13, :cond_6

    .line 121
    move-object v13, v5

    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 124
    .line 134
    :cond_6
    :goto_5
    const-string v13, "javafxports.override.tmpdir"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 135
    .local v6, "overrideTmpDirWithCacheDir":Ljava/lang/String;
    move-object v13, v6

    if-eqz v13, :cond_8

    .line 136
    move-object v13, v6

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    move v7, v13

    .line 137
    .local v7, "overrideCacheDir":Z
    move v13, v7

    if-nez v13, :cond_7

    .line 138
    move-object v13, v6

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 139
    .local v8, "splitPaths":[Ljava/lang/String;
    move-object v13, v8

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object v9, v13

    .line 140
    .local v9, "paths":Ljava/util/List;
    const-string v13, "java.io.tmpdir"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 141
    .local v10, "currentTmpDir":Ljava/lang/String;
    move-object v13, v9

    move-object v14, v10

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    move v7, v13

    .line 142
    const-string v13, "DalvikLauncher"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Does value of system property \'java.io.tmpdir\' ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") match any of the overriding paths ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")? "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 145
    .end local v8    # "splitPaths":[Ljava/lang/String;
    .end local v9    # "paths":Ljava/util/List;
    .end local v10    # "currentTmpDir":Ljava/lang/String;
    :cond_7
    move v13, v7

    if-eqz v13, :cond_a

    .line 146
    const-string v13, "DalvikLauncher"

    const-string v14, "Overriding system property \'java.io.tmpdir\' with activity cache dir."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 147
    move-object v13, v0

    iget-object v13, v13, Ljavafxports/android/DalvikLauncher;->activity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 148
    .local v8, "activityCacheDir":Ljava/lang/String;
    const-string v13, "java.io.tmpdir"

    move-object v14, v8

    invoke-static {v13, v14}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 149
    .line 154
    .end local v7    # "overrideCacheDir":Z
    .end local v8    # "activityCacheDir":Ljava/lang/String;
    :cond_8
    :goto_6
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v13

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v13, v14}, Ljava/util/Properties;->list(Ljava/io/PrintStream;)V

    .line 156
    const-string v13, "DalvikLauncher"

    const-string v14, "Launch JavaFX application on DALVIK vm."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 158
    move-object v13, v0

    :try_start_7
    invoke-direct {v13}, Ljavafxports/android/DalvikLauncher;->initMethodHandles()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 161
    .line 164
    move-object v13, v0

    :try_start_8
    invoke-direct {v13}, Ljavafxports/android/DalvikLauncher;->resolveApplicationClass()Ljava/lang/Class;

    move-result-object v13

    move-object v7, v13

    .line 165
    .local v7, "applicationClass":Ljava/lang/Class;
    move-object v13, v0

    invoke-direct {v13}, Ljavafxports/android/DalvikLauncher;->resolvePreloaderClass()Ljava/lang/Class;

    move-result-object v13

    move-object v8, v13

    .line 166
    .local v8, "preloaderClass":Ljava/lang/Class;
    move-object v13, v0

    invoke-direct {v13}, Ljavafxports/android/DalvikLauncher;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const-string v14, "javafx.application.Application"

    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    move-object v9, v13

    .line 167
    .local v9, "javafxApplicationClass":Ljava/lang/Class;
    move-object v13, v0

    invoke-direct {v13}, Ljavafxports/android/DalvikLauncher;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const-string v14, "com.sun.javafx.application.LauncherImpl"

    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    move-object v10, v13

    .line 169
    .local v10, "javafxLauncherClass":Ljava/lang/Class;
    move-object v13, v10

    const-string v14, "launchApplication"

    sget-object v15, Ljavafxports/android/DalvikLauncher;->LAUNCH_APPLICATION_ARGS:[Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    move-object v11, v13

    .line 172
    .local v11, "launchMethod":Ljava/lang/reflect/Method;
    const-string v13, "DalvikLauncher"

    const-string v14, "application class: [%s]\npreloader class: [%s]\njavafx application class: [%s]\njavafx launcher class: [%s]\nlaunch application method: [%s]"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x0

    move-object/from16 v18, v7

    aput-object v18, v16, v17

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x1

    move-object/from16 v18, v8

    aput-object v18, v16, v17

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x2

    move-object/from16 v18, v9

    aput-object v18, v16, v17

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x3

    move-object/from16 v18, v10

    aput-object v18, v16, v17

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x4

    move-object/from16 v18, v11

    aput-object v18, v16, v17

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 183
    new-instance v13, Ljava/lang/Thread;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    new-instance v15, Ljavafxports/android/DalvikLauncher$1;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    move-object/from16 v21, v8

    invoke-direct/range {v16 .. v21}, Ljavafxports/android/DalvikLauncher$1;-><init>(Ljavafxports/android/DalvikLauncher;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    const-string v16, "Prelauncher Thread"

    invoke-direct/range {v14 .. v16}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 207
    .line 208
    .end local v7    # "applicationClass":Ljava/lang/Class;
    .end local v8    # "preloaderClass":Ljava/lang/Class;
    .end local v9    # "javafxApplicationClass":Ljava/lang/Class;
    .end local v10    # "javafxLauncherClass":Ljava/lang/Class;
    .end local v11    # "launchMethod":Ljava/lang/reflect/Method;
    :goto_7
    return-void

    .line 122
    .end local v6    # "overrideTmpDirWithCacheDir":Ljava/lang/String;
    :catch_3
    move-exception v13

    move-object v6, v13

    .line 123
    .local v6, "e":Ljava/io/IOException;
    const-string v13, "DalvikLauncher"

    const-string v14, "Exception closing java.custom.properties InputStream"

    move-object v15, v6

    invoke-static {v13, v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v13

    .line 124
    goto/16 :goto_5

    .line 116
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v13

    move-object v6, v13

    .line 117
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v13, "DalvikLauncher"

    const-string v14, "Can\'t load java.custom.properties"

    move-object v15, v6

    invoke-static {v13, v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v13

    .line 119
    move-object v13, v5

    if-eqz v13, :cond_6

    .line 121
    move-object v13, v5

    :try_start_a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 124
    goto/16 :goto_5

    .line 122
    :catch_5
    move-exception v13

    move-object v6, v13

    .line 123
    const-string v13, "DalvikLauncher"

    const-string v14, "Exception closing java.custom.properties InputStream"

    move-object v15, v6

    invoke-static {v13, v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v13

    .line 124
    goto/16 :goto_5

    .line 119
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    move-object v11, v13

    move-object v13, v5

    if-eqz v13, :cond_9

    .line 121
    move-object v13, v5

    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 124
    :cond_9
    :goto_8
    move-object v13, v11

    throw v13

    .line 122
    :catch_6
    move-exception v13

    move-object v12, v13

    .line 123
    .local v12, "e":Ljava/io/IOException;
    const-string v13, "DalvikLauncher"

    const-string v14, "Exception closing java.custom.properties InputStream"

    move-object v15, v12

    invoke-static {v13, v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v13

    goto :goto_8

    .line 150
    .end local v12    # "e":Ljava/io/IOException;
    .local v6, "overrideTmpDirWithCacheDir":Ljava/lang/String;
    .local v7, "overrideCacheDir":Z
    :cond_a
    const-string v13, "DalvikLauncher"

    const-string v14, "Not overriding system property \'java.io.tmpdir\'."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_6

    .line 159
    .end local v7    # "overrideCacheDir":Z
    :catch_7
    move-exception v13

    move-object v7, v13

    .line 160
    .local v7, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/RuntimeException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const-string v15, "Failed to init method handles"

    move-object/from16 v16, v7

    invoke-direct/range {v14 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 205
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v13

    move-object v7, v13

    .line 206
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v13, "DalvikLauncher"

    const-string v14, "Launch failed with exception."

    move-object v15, v7

    invoke-static {v13, v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v13

    goto :goto_7
.end method
