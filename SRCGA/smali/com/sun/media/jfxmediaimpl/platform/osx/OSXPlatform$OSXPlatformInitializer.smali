.class final Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$OSXPlatformInitializer;
.super Ljava/lang/Object;
.source "OSXPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OSXPlatformInitializer"
.end annotation


# static fields
.field private static final globalInstance:Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 65
    const/4 v2, 0x0

    move v0, v2

    .line 67
    .local v0, "isLoaded":Z
    :try_start_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$OSXPlatformInitializer$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 85
    .line 86
    :goto_0
    move v2, v0

    if-eqz v2, :cond_0

    .line 87
    new-instance v2, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;-><init>(Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$1;)V

    sput-object v2, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$OSXPlatformInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;

    .line 91
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0

    .line 89
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$OSXPlatformInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$OSXPlatformInitializer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$OSXPlatformInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;

    return-object v0
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$OSXPlatformInitializer;->lambda$static$9()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$9()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 68
    const/4 v3, 0x0

    move v0, v3

    .line 69
    .local v0, "avf":Z
    const/4 v3, 0x0

    move v1, v3

    .line 73
    .local v1, "qtk":Z
    :try_start_0
    const-string v3, "jfxmedia_avf"

    invoke-static {v3}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v3, 0x1

    move v0, v3

    .line 75
    .line 77
    :goto_0
    :try_start_1
    const-string v3, "jfxmedia_qtkit"

    invoke-static {v3}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    const/4 v3, 0x1

    move v1, v3

    .line 79
    .line 81
    :goto_1
    move v3, v0

    if-nez v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "avf":Z
    return-object v0

    .line 75
    .restart local v0    # "avf":Z
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0

    .line 79
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_1

    .line 81
    :cond_1
    const/4 v3, 0x0

    goto :goto_2
.end method
