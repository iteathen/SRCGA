.class public abstract Lcom/sun/javafx/font/PrismFontFactory;
.super Ljava/lang/Object;
.source "PrismFontFactory.java"

# interfaces
.implements Lcom/sun/javafx/font/FontFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/font/PrismFontFactory$TTFilter;
    }
.end annotation


# static fields
.field private static final CT_FACTORY:Ljava/lang/String; = "com.sun.javafx.font.coretext.CTFactory"

.field private static final DW_FACTORY:Ljava/lang/String; = "com.sun.javafx.font.directwrite.DWFactory"

.field private static final FT_FACTORY:Ljava/lang/String; = "com.sun.javafx.font.freetype.FTFactory"

.field private static final STR_ARRAY:[Ljava/lang/String;

.field public static final SUB_PIXEL_NATIVE:I = 0x4

.field public static final SUB_PIXEL_ON:I = 0x1

.field public static final SUB_PIXEL_Y:I = 0x2

.field private static final T2K_FACTORY:Ljava/lang/String; = "com.sun.javafx.font.t2k.T2KFactory"

.field private static allFamilyNames:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static allFontNames:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final cacheLayoutSize:I

.field public static final debugFonts:Z

.field private static fileCloser:Ljava/lang/Thread; = null

.field private static fontSizeLimit:F = 0.0f

.field public static final isAndroid:Z

.field public static final isEmbedded:Z

.field public static final isIOS:Z

.field public static final isLinux:Z

.field public static final isMacOSX:Z

.field public static final isWindows:Z

.field private static final jreDefaultFont:Ljava/lang/String; = "Lucida Sans Regular"

.field private static final jreDefaultFontFile:Ljava/lang/String; = "LucidaSansRegular.ttf"

.field private static final jreDefaultFontLC:Ljava/lang/String; = "lucida sans regular"

.field private static jreFontDir:Ljava/lang/String;

.field private static lcdContrast:F

.field private static lcdEnabled:Z

.field private static monospaceFontFamily:Ljava/lang/String;

.field private static subPixelMode:I

.field private static sysFontDir:Ljava/lang/String;

.field private static systemFontFamily:Ljava/lang/String;

.field private static systemFontSize:F

.field private static theFontFactory:Lcom/sun/javafx/font/PrismFontFactory;

.field static useNativeRasterizer:Z

.field private static userFontDir:Ljava/lang/String;


# instance fields
.field compResourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/font/CompositeFontResource;",
            ">;"
        }
    .end annotation
.end field

.field private embeddedFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/font/PrismFontFile;",
            ">;"
        }
    .end annotation
.end field

.field private familyToFontListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private fileNameToFontResourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/font/PrismFontFile;",
            ">;"
        }
    .end annotation
.end field

.field private fileToFontMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fontResourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/font/FontResource;",
            ">;"
        }
    .end annotation
.end field

.field private fontToFamilyNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile fontToFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numEmbeddedFonts:I

.field private tmpFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/PrismFontFile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 64
    const/high16 v1, 0x42a00000    # 80.0f

    sput v1, Lcom/sun/javafx/font/PrismFontFactory;->fontSizeLimit:F

    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lcom/sun/javafx/font/PrismFontFactory;->lcdContrast:F

    .line 90
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    .line 91
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    .line 92
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isLinux:Z

    .line 93
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isIOS:Z

    .line 94
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isAndroid()Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isAndroid:Z

    .line 95
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isEmbedded:Z

    .line 96
    const/4 v1, 0x1

    new-array v1, v1, [I

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const/high16 v4, 0x10000

    aput v4, v2, v3

    move-object v0, v1

    .line 98
    .local v0, "tempCacheLayoutSize":[I
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/font/PrismFontFactory$$Lambda$4;->lambdaFactory$([I)Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    .line 170
    move-object v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    sput v1, Lcom/sun/javafx/font/PrismFontFactory;->cacheLayoutSize:I

    .line 184
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->theFontFactory:Lcom/sun/javafx/font/PrismFontFactory;

    .line 901
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->STR_ARRAY:[Ljava/lang/String;

    .line 928
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->sysFontDir:Ljava/lang/String;

    .line 929
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->userFontDir:Ljava/lang/String;

    .line 1398
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->fileCloser:Ljava/lang/Thread;

    .line 1905
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    .line 1906
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->monospaceFontFamily:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 83
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontFactory;->fontResourceMap:Ljava/util/HashMap;

    .line 86
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontFactory;->compResourceMap:Ljava/util/HashMap;

    .line 245
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontFactory;->fileNameToFontResourceMap:Ljava/util/HashMap;

    .line 908
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;

    .line 911
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontFactory;->fileToFontMap:Ljava/util/HashMap;

    .line 917
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    .line 924
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    .line 1586
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/font/PrismFontFactory;->numEmbeddedFonts:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sun/javafx/font/PrismFontFactory;->sysFontDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sun/javafx/font/PrismFontFactory;->userFontDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/font/PrismFontFactory;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismFontFactory;->lambda$addFileCloserHook$228()V

    return-void
.end method

.method static synthetic access$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/font/PrismFontFactory;->lambda$addFileCloserHook$229(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/io/File;)[Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/font/PrismFontFactory;->lambda$populateFontFileNameMapGeneric$230(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$3([I)Ljava/lang/Boolean;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/font/PrismFontFactory;->lambda$static$227([I)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private declared-synchronized addFileCloserHook()V
    .locals 4

    .prologue
    .line 1401
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v3, p0

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/sun/javafx/font/PrismFontFactory;->fileCloser:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 1402
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/font/PrismFontFactory$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/font/PrismFontFactory;)Ljava/lang/Runnable;

    move-result-object v2

    move-object v1, v2

    .line 1417
    .local v1, "fileCloserRunnable":Ljava/lang/Runnable;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/font/PrismFontFactory$$Lambda$2;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1433
    .end local v1    # "fileCloserRunnable":Ljava/lang/Runnable;
    :cond_0
    monitor-exit v3

    return-void

    .line 1401
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method private declared-synchronized addTmpFont(Lcom/sun/javafx/font/PrismFontFile;)V
    .locals 8

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "fr":Lcom/sun/javafx/font/PrismFontFile;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFactory;->tmpFonts:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 384
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/font/PrismFontFactory;->tmpFonts:Ljava/util/ArrayList;

    .line 387
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/PrismFontFile;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 392
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/PrismFontFile;>;"
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFactory;->tmpFonts:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 393
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/font/PrismFontFactory;->addFileCloserHook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit v6

    return-void

    .line 390
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/PrismFontFile;>;"
    :cond_1
    move-object v3, v1

    move-object v4, v0

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/PrismFontFile;->createFileDisposer(Lcom/sun/javafx/font/PrismFontFactory;)Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/PrismFontFile;>;"
    goto :goto_0

    .line 383
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/PrismFontFile;>;"
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method private createFontResource(Ljava/lang/String;I)Lcom/sun/javafx/font/PrismFontFile;
    .locals 10

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;IZZZZ)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    return-object v0
.end method

.method private createFontResource(Ljava/lang/String;IZZZZ)Lcom/sun/javafx/font/PrismFontFile;
    .locals 19

    .prologue
    .line 266
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object/from16 v1, p1

    .local v1, "filename":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "index":I
    move/from16 v3, p3

    .local v3, "register":Z
    move/from16 v4, p4

    .local v4, "embedded":Z
    move/from16 v5, p5

    .local v5, "copy":Z
    move/from16 v6, p6

    .local v6, "tracked":Z
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 267
    .local v7, "key":Ljava/lang/String;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/font/PrismFontFactory;->fileNameToFontResourceMap:Ljava/util/HashMap;

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/font/PrismFontFile;

    move-object v8, v10

    .line 268
    .local v8, "fr":Lcom/sun/javafx/font/PrismFontFile;
    move-object v10, v8

    if-eqz v10, :cond_0

    .line 269
    move-object v10, v8

    move-object v0, v10

    .line 284
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    return-object v0

    .line 273
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v10, v0

    const/4 v11, 0x0

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    :try_start_0
    invoke-virtual/range {v10 .. v17}, Lcom/sun/javafx/font/PrismFontFactory;->createFontFile(Ljava/lang/String;Ljava/lang/String;IZZZZ)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v10

    move-object v8, v10

    .line 275
    move v10, v3

    if-eqz v10, :cond_1

    .line 276
    move-object v10, v0

    move-object v11, v8

    invoke-virtual {v11}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v8

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 277
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/font/PrismFontFactory;->fileNameToFontResourceMap:Ljava/util/HashMap;

    move-object v11, v7

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 279
    :cond_1
    move-object v10, v8

    move-object v0, v10

    goto :goto_0

    .line 280
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 281
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v10, :cond_2

    .line 282
    move-object v10, v9

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    :cond_2
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0
.end method

.method private createFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;
    .locals 10

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    return-object v0
.end method

.method private createFontResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/sun/javafx/font/PrismFontFile;
    .locals 22

    .prologue
    .line 297
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "filename":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "register":Z
    move/from16 v4, p4

    .local v4, "embedded":Z
    move/from16 v5, p5

    .local v5, "copy":Z
    move/from16 v6, p6

    .local v6, "tracked":Z
    move-object v13, v2

    if-nez v13, :cond_0

    .line 298
    const/4 v13, 0x0

    move-object v0, v13

    .line 339
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    return-object v0

    .line 300
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v13, v2

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 301
    .local v7, "lcFN":Ljava/lang/String;
    move-object v13, v7

    const-string v14, ".ttc"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 302
    const/4 v13, 0x0

    move v8, v13

    .line 303
    .local v8, "index":I
    const/4 v13, 0x0

    move-object v10, v13

    .line 305
    .local v10, "namedFR":Lcom/sun/javafx/font/PrismFontFile;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 307
    .local v11, "key":Ljava/lang/String;
    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Lcom/sun/javafx/font/PrismFontFactory;->fileNameToFontResourceMap:Ljava/util/HashMap;

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/font/PrismFontFile;

    move-object v9, v13

    .line 308
    .local v9, "fr":Lcom/sun/javafx/font/PrismFontFile;
    move-object v13, v9

    if-eqz v13, :cond_3

    .line 309
    move-object v13, v1

    move-object v14, v9

    invoke-virtual {v14}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_2

    .line 310
    move-object v13, v9

    move-object v0, v13

    goto :goto_0

    .line 314
    .line 336
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v13, v8

    move-object v14, v9

    invoke-virtual {v14}, Lcom/sun/javafx/font/PrismFontFile;->getFontCount()I

    move-result v14

    if-lt v13, v14, :cond_1

    .line 337
    move-object v13, v10

    move-object v0, v13

    goto :goto_0

    .line 317
    :cond_3
    move-object v13, v0

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v8

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    :try_start_1
    invoke-virtual/range {v13 .. v20}, Lcom/sun/javafx/font/PrismFontFactory;->createFontFile(Ljava/lang/String;Ljava/lang/String;IZZZZ)Lcom/sun/javafx/font/PrismFontFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    move-object v9, v13

    .line 326
    .line 328
    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 329
    .local v12, "fontname":Ljava/lang/String;
    move v13, v3

    if-eqz v13, :cond_4

    .line 330
    move-object v13, v0

    move-object v14, v12

    move-object v15, v9

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 331
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/font/PrismFontFactory;->fileNameToFontResourceMap:Ljava/util/HashMap;

    move-object v14, v11

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 333
    :cond_4
    move v13, v8

    if-eqz v13, :cond_5

    move-object v13, v1

    move-object v14, v12

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 334
    :cond_5
    move-object v13, v9

    move-object v10, v13

    goto :goto_1

    .line 321
    .end local v9    # "fr":Lcom/sun/javafx/font/PrismFontFile;
    .end local v12    # "fontname":Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v12, v13

    .line 322
    .local v12, "e":Ljava/lang/Exception;
    sget-boolean v13, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v13, :cond_6

    .line 323
    move-object v13, v12

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    :cond_6
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_0

    .line 339
    .end local v8    # "index":I
    .end local v10    # "namedFR":Lcom/sun/javafx/font/PrismFontFile;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_7
    move-object v13, v0

    move-object v14, v2

    const/4 v15, 0x0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-direct/range {v13 .. v19}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;IZZZZ)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_0
.end method

.method private dotStyleStr(ZZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move v1, p1

    .local v1, "bold":Z
    move v2, p2

    .local v2, "italic":Z
    move v3, v1

    if-nez v3, :cond_1

    .line 347
    move v3, v2

    if-nez v3, :cond_0

    .line 348
    const-string v3, ""

    move-object v0, v3

    .line 358
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    return-object v0

    .line 351
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    const-string v3, ".italic"

    move-object v0, v3

    goto :goto_0

    .line 354
    :cond_1
    move v3, v2

    if-nez v3, :cond_2

    .line 355
    const-string v3, ".bold"

    move-object v0, v3

    goto :goto_0

    .line 358
    :cond_2
    const-string v3, ".bolditalic"

    move-object v0, v3

    goto :goto_0
.end method

.method private findFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v1

    const-string v4, "lucida sans regular"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 885
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sun/javafx/font/PrismFontFactory;->jreFontDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "LucidaSansRegular.ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 897
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    return-object v0

    .line 887
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/font/PrismFontFactory;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object v3

    .line 888
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 889
    .local v2, "filename":Ljava/lang/String;
    sget-boolean v3, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-eqz v3, :cond_1

    .line 890
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/javafx/font/PrismFontFactory;->getPathNameWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 897
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method private static native getEUDCFontFile()Ljava/lang/String;
.end method

.method public static declared-synchronized getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;
    .locals 7

    .prologue
    .line 186
    const-class v5, Lcom/sun/javafx/font/PrismFontFactory;

    monitor-enter v5

    :try_start_0
    sget-object v2, Lcom/sun/javafx/font/PrismFontFactory;->theFontFactory:Lcom/sun/javafx/font/PrismFontFactory;

    if-eqz v2, :cond_0

    .line 187
    sget-object v2, Lcom/sun/javafx/font/PrismFontFactory;->theFontFactory:Lcom/sun/javafx/font/PrismFontFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 229
    :goto_0
    monitor-exit v5

    return-object v0

    .line 189
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 190
    .local v0, "factoryClass":Ljava/lang/String;
    :try_start_1
    sget-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    if-eqz v2, :cond_1

    .line 191
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getNativeFactoryName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 193
    :cond_1
    move-object v2, v0

    if-nez v2, :cond_2

    .line 194
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    .line 195
    const-string v2, "com.sun.javafx.font.t2k.T2KFactory"

    move-object v0, v2

    .line 197
    :cond_2
    sget-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v2, :cond_5

    .line 198
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading FontFactory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    sget v2, Lcom/sun/javafx/font/PrismFontFactory;->subPixelMode:I

    if-eqz v2, :cond_5

    .line 200
    const-string v2, "Subpixel: enabled"

    move-object v1, v2

    .line 201
    .local v1, "s":Ljava/lang/String;
    sget v2, Lcom/sun/javafx/font/PrismFontFactory;->subPixelMode:I

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vertical"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 204
    :cond_3
    sget v2, Lcom/sun/javafx/font/PrismFontFactory;->subPixelMode:I

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", native"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 207
    :cond_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    .end local v1    # "s":Ljava/lang/String;
    :cond_5
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory(Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v2

    sput-object v2, Lcom/sun/javafx/font/PrismFontFactory;->theFontFactory:Lcom/sun/javafx/font/PrismFontFactory;

    .line 211
    sget-object v2, Lcom/sun/javafx/font/PrismFontFactory;->theFontFactory:Lcom/sun/javafx/font/PrismFontFactory;

    if-nez v2, :cond_7

    .line 212
    sget-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    if-eqz v2, :cond_8

    .line 214
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    .line 215
    const-string v2, "com.sun.javafx.font.t2k.T2KFactory"

    move-object v0, v2

    .line 221
    :goto_1
    move-object v2, v0

    if-eqz v2, :cond_6

    .line 222
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory(Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v2

    sput-object v2, Lcom/sun/javafx/font/PrismFontFactory;->theFontFactory:Lcom/sun/javafx/font/PrismFontFactory;

    .line 224
    :cond_6
    sget-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v2, :cond_7

    .line 225
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "*** Loading primary font factory failed. ***"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** Fallbacking to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    :cond_7
    sget-object v2, Lcom/sun/javafx/font/PrismFontFactory;->theFontFactory:Lcom/sun/javafx/font/PrismFontFactory;

    move-object v0, v2

    goto/16 :goto_0

    .line 218
    :cond_8
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    .line 219
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getNativeFactoryName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "factoryClass":Ljava/lang/String;
    throw v0
.end method

.method private static declared-synchronized getFontFactory(Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFactory;
    .locals 8

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "factoryClass":Ljava/lang/String;
    const-class v6, Lcom/sun/javafx/font/PrismFontFactory;

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 235
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v1

    const-string v4, "getFactory"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 236
    .local v2, "mid":Ljava/lang/reflect/Method;
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/font/PrismFontFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 242
    .end local v0    # "factoryClass":Ljava/lang/String;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mid":Ljava/lang/reflect/Method;
    :goto_0
    monitor-exit v6

    return-object v0

    .line 237
    .restart local v0    # "factoryClass":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 238
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-boolean v3, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v3, :cond_0

    .line 239
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading font factory failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 234
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "factoryClass":Ljava/lang/String;
    throw v0
.end method

.method private static native getFontPath()[B
.end method

.method private getFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;
    .locals 10

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "file":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v3, v6

    .line 604
    .local v3, "fr":Lcom/sun/javafx/font/PrismFontFile;
    sget-boolean v6, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-eqz v6, :cond_4

    .line 605
    const/4 v6, 0x0

    move-object v4, v6

    .line 606
    .local v4, "decoder":Lcom/sun/javafx/font/DFontDecoder;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 607
    move-object v6, v2

    const-string v7, ".dfont"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 608
    new-instance v6, Lcom/sun/javafx/font/DFontDecoder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/sun/javafx/font/DFontDecoder;-><init>()V

    move-object v4, v6

    .line 610
    move-object v6, v4

    :try_start_0
    invoke-virtual {v6}, Lcom/sun/javafx/font/DFontDecoder;->openFile()Ljava/io/File;

    move-result-object v6

    .line 611
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/font/DFontDecoder;->decode(Ljava/lang/String;)V

    .line 612
    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/javafx/font/DFontDecoder;->closeFile()V

    .line 613
    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/javafx/font/DFontDecoder;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v2, v6

    .line 621
    .line 624
    :cond_0
    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 625
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v6

    move-object v3, v6

    .line 627
    :cond_1
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 628
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 629
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/font/PrismFontFactory;->addDecodedFont(Lcom/sun/javafx/font/PrismFontFile;)V

    .line 634
    .line 637
    .end local v4    # "decoder":Lcom/sun/javafx/font/DFontDecoder;
    :cond_2
    :goto_1
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    return-object v0

    .line 614
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .restart local v4    # "decoder":Lcom/sun/javafx/font/DFontDecoder;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 615
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    move-object v2, v6

    .line 616
    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/javafx/font/DFontDecoder;->deleteFile()V

    .line 617
    const/4 v6, 0x0

    move-object v4, v6

    .line 618
    sget-boolean v6, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v6, :cond_0

    .line 619
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 631
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/javafx/font/DFontDecoder;->deleteFile()V

    goto :goto_1

    .line 635
    .end local v4    # "decoder":Lcom/sun/javafx/font/DFontDecoder;
    :cond_4
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v6

    move-object v3, v6

    goto :goto_1
.end method

.method private declared-synchronized getFontResourceByFileName(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;
    .locals 13

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "file":Ljava/lang/String;
    move v2, p2

    .local v2, "wantComp":Z
    move-object v11, p0

    monitor-enter v11

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_0

    .line 766
    const/4 v7, 0x0

    move-object v0, v7

    .line 813
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    monitor-exit v11

    return-object v0

    .line 776
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->fileToFontMap:Ljava/util/HashMap;

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v3, v7

    .line 777
    .local v3, "name":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v4, v7

    .line 778
    .local v4, "fontResource":Lcom/sun/javafx/font/FontResource;
    move-object v7, v3

    if-nez v7, :cond_2

    .line 783
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;I)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v7

    move-object v4, v7

    .line 784
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 785
    move-object v7, v4

    invoke-interface {v7}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 786
    .local v5, "lcName":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v5

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 789
    move v7, v2

    if-eqz v7, :cond_1

    .line 790
    new-instance v7, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V

    move-object v4, v7

    .line 793
    .line 813
    .end local v5    # "lcName":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 795
    :cond_2
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 796
    .restart local v5    # "lcName":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v5

    move v9, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->lookupResource(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v7

    move-object v4, v7

    .line 798
    move-object v7, v4

    if-nez v7, :cond_1

    .line 799
    move-object v7, v0

    move-object v8, v5

    invoke-direct {v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->findFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 800
    .local v6, "fullPath":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 801
    move-object v7, v0

    move-object v8, v3

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v7

    move-object v4, v7

    .line 802
    move-object v7, v4

    if-eqz v7, :cond_3

    .line 803
    move-object v7, v0

    move-object v8, v5

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 805
    :cond_3
    move v7, v2

    if-eqz v7, :cond_1

    .line 807
    new-instance v7, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v7

    goto :goto_1

    .line 765
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "fontResource":Lcom/sun/javafx/font/FontResource;
    .end local v5    # "lcName":Ljava/lang/String;
    .end local v6    # "fullPath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method private declared-synchronized getFontResourceByFullName(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;
    .locals 12

    .prologue
    .line 822
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "wantComp":Z
    move-object v10, p0

    monitor-enter v10

    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 824
    .local v3, "lcName":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_0

    .line 827
    const-string v6, "Lucida Sans Regular"

    move-object v1, v6

    .line 830
    :cond_0
    const/4 v6, 0x0

    move-object v4, v6

    .line 831
    .local v4, "fontResource":Lcom/sun/javafx/font/FontResource;
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/sun/javafx/font/PrismFontFactory;->findFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 832
    .local v5, "file":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 833
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v6

    move-object v4, v6

    .line 834
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 835
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 836
    move v6, v2

    if-eqz v6, :cond_1

    .line 838
    new-instance v6, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v6

    .line 843
    :cond_1
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    monitor-exit v10

    return-object v0

    .line 822
    .end local v3    # "lcName":Ljava/lang/String;
    .end local v4    # "fontResource":Lcom/sun/javafx/font/FontResource;
    .end local v5    # "file":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method public static getFontSizeLimit()F
    .locals 1

    .prologue
    .line 181
    sget v0, Lcom/sun/javafx/font/PrismFontFactory;->fontSizeLimit:F

    return v0
.end method

.method private declared-synchronized getFullNameToFileMap()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1705
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v10, p0

    monitor-enter v10

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;

    if-nez v5, :cond_9

    .line 1708
    new-instance v5, Ljava/util/HashMap;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v5

    .line 1709
    .local v1, "tmpFontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, v5, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    .line 1710
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/16 v8, 0x32

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, v5, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    .line 1711
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, v5, Lcom/sun/javafx/font/PrismFontFactory;->fileToFontMap:Ljava/util/HashMap;

    .line 1713
    sget-boolean v5, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-eqz v5, :cond_2

    .line 1714
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getPlatformFontDirs()V

    .line 1715
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->populateFontFileNameMap(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V

    .line 1720
    sget-boolean v5, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v5, :cond_0

    .line 1721
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Windows Locale ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getSystemLCID()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1722
    move-object v5, v0

    const-string v6, " *** WINDOWS FONTS BEFORE RESOLVING"

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->logFontInfo(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1728
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->resolveWindowsFonts(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1732
    sget-boolean v5, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v5, :cond_1

    .line 1733
    move-object v5, v0

    const-string v6, " *** WINDOWS FONTS AFTER RESOLVING"

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->logFontInfo(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1769
    :cond_1
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 1770
    .local v3, "font":Ljava/lang/String;
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 1771
    .local v4, "file":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/PrismFontFactory;->fileToFontMap:Ljava/util/HashMap;

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1772
    goto :goto_1

    .line 1739
    .end local v3    # "font":Ljava/lang/String;
    .end local v4    # "file":Ljava/lang/String;
    :cond_2
    sget-boolean v5, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/sun/javafx/font/PrismFontFactory;->isIOS:Z

    if-eqz v5, :cond_4

    .line 1740
    :cond_3
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v6, v7, v8}, Lcom/sun/javafx/font/MacFontFinder;->populateFontFileNameMap(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)Z

    move-result v5

    goto :goto_0

    .line 1745
    :cond_4
    sget-boolean v5, Lcom/sun/javafx/font/PrismFontFactory;->isLinux:Z

    if-eqz v5, :cond_5

    .line 1746
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    .line 1749
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 1746
    invoke-static {v5, v6, v7, v8}, Lcom/sun/javafx/font/FontConfigManager;->populateMaps(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V

    .line 1750
    sget-boolean v5, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v5, :cond_1

    .line 1751
    move-object v5, v0

    const-string v6, " *** FONTCONFIG LOCATED FONTS:"

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->logFontInfo(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1756
    :cond_5
    sget-boolean v5, Lcom/sun/javafx/font/PrismFontFactory;->isAndroid:Z

    if-eqz v5, :cond_6

    .line 1757
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v6, v7, v8}, Lcom/sun/javafx/font/AndroidFontFinder;->populateFontFileNameMap(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V

    goto :goto_0

    .line 1762
    :cond_6
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;

    .line 1763
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 1789
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .end local v1    # "tmpFontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    monitor-exit v10

    return-object v0

    .line 1774
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .restart local v1    # "tmpFontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    move-object v5, v0

    move-object v6, v1

    :try_start_1
    iput-object v6, v5, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;

    .line 1775
    sget-boolean v5, Lcom/sun/javafx/font/PrismFontFactory;->isAndroid:Z

    if-eqz v5, :cond_8

    .line 1776
    move-object v5, v0

    .line 1777
    invoke-static {}, Lcom/sun/javafx/font/AndroidFontFinder;->getSystemFontsDir()Ljava/lang/String;

    move-result-object v6

    .line 1776
    invoke-virtual {v5, v6}, Lcom/sun/javafx/font/PrismFontFactory;->populateFontFileNameMapGeneric(Ljava/lang/String;)V

    .line 1779
    :cond_8
    move-object v5, v0

    sget-object v6, Lcom/sun/javafx/font/PrismFontFactory;->jreFontDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/font/PrismFontFactory;->populateFontFileNameMapGeneric(Ljava/lang/String;)V

    .line 1789
    .end local v1    # "tmpFontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    goto :goto_2

    .line 1705
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method public static getLCDContrast()F
    .locals 2

    .prologue
    .line 1380
    sget v0, Lcom/sun/javafx/font/PrismFontFactory;->lcdContrast:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1381
    sget-boolean v0, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-eqz v0, :cond_1

    .line 1382
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getLCDContrastWin32()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    sput v0, Lcom/sun/javafx/font/PrismFontFactory;->lcdContrast:F

    .line 1395
    :cond_0
    :goto_0
    sget v0, Lcom/sun/javafx/font/PrismFontFactory;->lcdContrast:F

    return v0

    .line 1392
    :cond_1
    const v0, 0x3fa66666    # 1.3f

    sput v0, Lcom/sun/javafx/font/PrismFontFactory;->lcdContrast:F

    goto :goto_0
.end method

.method static native getLCDContrastWin32()I
.end method

.method static getLinkedFonts(Ljava/lang/String;Z)[Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 966
    move-object/from16 v0, p0

    .local v0, "searchFont":Ljava/lang/String;
    move/from16 v1, p1

    .local v1, "addSearchFont":Z
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/util/ArrayList;

    move-object v2, v11

    .line 969
    .local v2, "fontRegInfo":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v11, v2

    const/4 v12, 0x0

    new-instance v13, Ljava/util/ArrayList;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    aput-object v13, v11, v12

    .line 970
    move-object v11, v2

    const/4 v12, 0x1

    new-instance v13, Ljava/util/ArrayList;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    aput-object v13, v11, v12

    .line 972
    sget-boolean v11, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-eqz v11, :cond_0

    .line 974
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-string v12, "/Library/Fonts/Arial Unicode.ttf"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 975
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-string v12, "Arial Unicode MS"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 978
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sun/javafx/font/PrismFontFactory;->jreFontDir:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "LucidaSansRegular.ttf"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 979
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-string v12, "Lucida Sans Regular"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 982
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-string v12, "/System/Library/Fonts/Apple Symbols.ttf"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 983
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-string v12, "Apple Symbols"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 986
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-string v12, "/System/Library/Fonts/STHeiti Light.ttf"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 987
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-string v12, "Heiti SC Light"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 989
    move-object v11, v2

    move-object v0, v11

    .line 1045
    .end local v0    # "searchFont":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 991
    .restart local v0    # "searchFont":Ljava/lang/String;
    :cond_0
    sget-boolean v11, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-nez v11, :cond_1

    .line 992
    move-object v11, v2

    move-object v0, v11

    goto :goto_0

    .line 995
    :cond_1
    move v11, v1

    if-eqz v11, :cond_2

    .line 996
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 997
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move-object v12, v0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1000
    :cond_2
    move-object v11, v0

    invoke-static {v11}, Lcom/sun/javafx/font/PrismFontFactory;->regReadFontLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 1001
    .local v3, "fontRegBuf":Ljava/lang/String;
    move-object v11, v3

    if-eqz v11, :cond_6

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 1003
    move-object v11, v3

    const-string v12, "\u0000"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 1004
    .local v4, "fontRegList":[Ljava/lang/String;
    move-object v11, v4

    array-length v11, v11

    move v5, v11

    .line 1005
    .local v5, "linkListLen":I
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    :goto_1
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_6

    .line 1006
    move-object v11, v4

    move v12, v6

    aget-object v11, v11, v12

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 1007
    .local v7, "splitFontData":[Ljava/lang/String;
    move-object v11, v7

    array-length v11, v11

    move v8, v11

    .line 1008
    .local v8, "len":I
    move-object v11, v7

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v11}, Lcom/sun/javafx/font/PrismFontFactory;->getPathNameWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 1009
    .local v9, "file":Ljava/lang/String;
    move v11, v8

    const/4 v12, 0x1

    if-le v11, v12, :cond_3

    move-object v11, v7

    const/4 v12, 0x1

    aget-object v11, v11, v12

    :goto_2
    move-object v10, v11

    .line 1010
    .local v10, "name":Ljava/lang/String;
    move-object v11, v10

    if-eqz v11, :cond_4

    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1011
    .line 1005
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1009
    .end local v10    # "name":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 1012
    .restart local v10    # "name":Ljava/lang/String;
    :cond_4
    move-object v11, v10

    if-nez v11, :cond_5

    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1013
    goto :goto_3

    .line 1015
    :cond_5
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1016
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_3

    .line 1020
    .end local v4    # "fontRegList":[Ljava/lang/String;
    .end local v5    # "linkListLen":I
    .end local v6    # "i":I
    .end local v7    # "splitFontData":[Ljava/lang/String;
    .end local v8    # "len":I
    .end local v9    # "file":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getEUDCFontFile()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 1021
    .local v4, "eudcFontFile":Ljava/lang/String;
    move-object v11, v4

    if-eqz v11, :cond_7

    .line 1022
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1023
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1027
    :cond_7
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sun/javafx/font/PrismFontFactory;->jreFontDir:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "LucidaSansRegular.ttf"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1028
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-string v12, "Lucida Sans Regular"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1030
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWinVistaOrLater()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1032
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-string v12, "mingliub.ttc"

    invoke-static {v12}, Lcom/sun/javafx/font/PrismFontFactory;->getPathNameWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1033
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-string v12, "MingLiU-ExtB"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1035
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWin7OrLater()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1037
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-string v12, "seguisym.ttf"

    invoke-static {v12}, Lcom/sun/javafx/font/PrismFontFactory;->getPathNameWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1038
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-string v12, "Segoe UI Symbol"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1045
    :cond_8
    :goto_4
    move-object v11, v2

    move-object v0, v11

    goto/16 :goto_0

    .line 1041
    :cond_9
    move-object v11, v2

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-string v12, "cambria.ttc"

    invoke-static {v12}, Lcom/sun/javafx/font/PrismFontFactory;->getPathNameWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1042
    move-object v11, v2

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-string v12, "Cambria Math"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_4
.end method

.method private static getNativeFactoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-boolean v0, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-eqz v0, :cond_0

    const-string v0, "com.sun.javafx.font.directwrite.DWFactory"

    .line 177
    :goto_0
    return-object v0

    .line 175
    :cond_0
    sget-boolean v0, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sun/javafx/font/PrismFontFactory;->isIOS:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "com.sun.javafx.font.coretext.CTFactory"

    goto :goto_0

    .line 176
    :cond_2
    sget-boolean v0, Lcom/sun/javafx/font/PrismFontFactory;->isLinux:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sun/javafx/font/PrismFontFactory;->isAndroid:Z

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "com.sun.javafx.font.freetype.FTFactory"

    goto :goto_0

    .line 177
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getPathNameWindows(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1226
    move-object v0, p0

    .local v0, "filename":Ljava/lang/String;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 1227
    const/4 v3, 0x0

    move-object v0, v3

    .line 1255
    .end local v0    # "filename":Ljava/lang/String;
    .local v1, "f":Ljava/io/File;
    :goto_0
    return-object v0

    .line 1230
    .end local v1    # "f":Ljava/io/File;
    .restart local v0    # "filename":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getPlatformFontDirs()V

    .line 1231
    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 1232
    .restart local v1    # "f":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1233
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 1235
    :cond_1
    sget-object v3, Lcom/sun/javafx/font/PrismFontFactory;->userFontDir:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 1236
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sun/javafx/font/PrismFontFactory;->sysFontDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1239
    :cond_2
    new-instance v3, Lcom/sun/javafx/font/PrismFontFactory$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/font/PrismFontFactory$1;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 1252
    .local v2, "path":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 1253
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 1255
    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private static getPlatformFontDirs()V
    .locals 7

    .prologue
    .line 937
    sget-object v3, Lcom/sun/javafx/font/PrismFontFactory;->userFontDir:Ljava/lang/String;

    if-nez v3, :cond_0

    sget-object v3, Lcom/sun/javafx/font/PrismFontFactory;->sysFontDir:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 938
    .line 950
    .local v0, "pathBytes":[B
    .local v1, "path":Ljava/lang/String;
    .local v2, "scIdx":I
    :cond_0
    :goto_0
    return-void

    .line 940
    .end local v0    # "pathBytes":[B
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "scIdx":I
    :cond_1
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontPath()[B

    move-result-object v3

    move-object v0, v3

    .line 941
    .restart local v0    # "pathBytes":[B
    new-instance v3, Ljava/lang/String;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object v1, v3

    .line 943
    .restart local v1    # "path":Ljava/lang/String;
    move-object v3, v1

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v2, v3

    .line 944
    .restart local v2    # "scIdx":I
    move v3, v2

    if-gez v3, :cond_2

    .line 945
    move-object v3, v1

    sput-object v3, Lcom/sun/javafx/font/PrismFontFactory;->sysFontDir:Ljava/lang/String;

    .line 950
    :goto_1
    goto :goto_0

    .line 947
    :cond_2
    move-object v3, v1

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sun/javafx/font/PrismFontFactory;->sysFontDir:Ljava/lang/String;

    .line 948
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sun/javafx/font/PrismFontFactory;->userFontDir:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getSystemFont(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1934
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "System"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1935
    sget-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1936
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-eqz v1, :cond_1

    .line 1937
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getSystemFontNative()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    .line 1938
    sget-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1939
    const-string v1, "Arial"

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    .line 1952
    :cond_0
    :goto_0
    sget-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    move-object v0, v1

    .line 1972
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1941
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isIOS:Z

    if-eqz v1, :cond_3

    .line 1942
    :cond_2
    invoke-static {}, Lcom/sun/javafx/font/MacFontFinder;->getSystemFont()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    .line 1943
    sget-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1944
    const-string v1, "Lucida Grande"

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    goto :goto_0

    .line 1946
    :cond_3
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isAndroid:Z

    if-eqz v1, :cond_4

    .line 1947
    invoke-static {}, Lcom/sun/javafx/font/AndroidFontFinder;->getSystemFont()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    goto :goto_0

    .line 1949
    :cond_4
    const-string v1, "Lucida Sans"

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontFamily:Ljava/lang/String;

    goto :goto_0

    .line 1953
    :cond_5
    move-object v1, v0

    const-string v2, "SansSerif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1954
    const-string v1, "Arial"

    move-object v0, v1

    goto :goto_1

    .line 1955
    :cond_6
    move-object v1, v0

    const-string v2, "Serif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1956
    const-string v1, "Times New Roman"

    move-object v0, v1

    goto :goto_1

    .line 1958
    :cond_7
    sget-object v1, Lcom/sun/javafx/font/PrismFontFactory;->monospaceFontFamily:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 1959
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-eqz v1, :cond_8

    .line 1969
    :cond_8
    sget-object v1, Lcom/sun/javafx/font/PrismFontFactory;->monospaceFontFamily:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1970
    const-string v1, "Courier New"

    sput-object v1, Lcom/sun/javafx/font/PrismFontFactory;->monospaceFontFamily:Ljava/lang/String;

    .line 1972
    :cond_9
    sget-object v1, Lcom/sun/javafx/font/PrismFontFactory;->monospaceFontFamily:Ljava/lang/String;

    move-object v0, v1

    goto :goto_1
.end method

.method private static native getSystemFontNative()Ljava/lang/String;
.end method

.method public static getSystemFontSize()F
    .locals 3

    .prologue
    .line 1909
    sget v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontSize:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1910
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-eqz v1, :cond_1

    .line 1911
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/Screen;->getUIScale()F

    move-result v1

    move v0, v1

    .line 1912
    .local v0, "uiScale":F
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getSystemFontSizeNative()I

    move-result v1

    int-to-float v1, v1

    move v2, v0

    div-float/2addr v1, v2

    sput v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontSize:F

    .line 1913
    .line 1929
    .end local v0    # "uiScale":F
    :cond_0
    :goto_0
    sget v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontSize:F

    move v0, v1

    return v0

    .line 1913
    :cond_1
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isIOS:Z

    if-eqz v1, :cond_3

    .line 1914
    :cond_2
    invoke-static {}, Lcom/sun/javafx/font/MacFontFinder;->getSystemFontSize()F

    move-result v1

    sput v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontSize:F

    goto :goto_0

    .line 1915
    :cond_3
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isAndroid:Z

    if-eqz v1, :cond_4

    .line 1916
    invoke-static {}, Lcom/sun/javafx/font/AndroidFontFinder;->getSystemFontSize()F

    move-result v1

    sput v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontSize:F

    goto :goto_0

    .line 1917
    :cond_4
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->isEmbedded:Z

    if-eqz v1, :cond_5

    .line 1919
    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/Screen;->getResolutionY()I

    move-result v1

    move v0, v1

    .line 1920
    .local v0, "screenDPI":I
    move v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    sput v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontSize:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    goto :goto_0

    .line 1921
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1923
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/high16 v1, 0x41500000    # 13.0f

    sput v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontSize:F

    .line 1924
    goto :goto_0

    .line 1926
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_5
    const/high16 v1, 0x41500000    # 13.0f

    sput v1, Lcom/sun/javafx/font/PrismFontFactory;->systemFontSize:F

    goto :goto_0
.end method

.method private static native getSystemFontSizeNative()I
.end method

.method static native getSystemLCID()S
.end method

.method public static isJreFont(Lcom/sun/javafx/font/FontResource;)Z
    .locals 4

    .prologue
    .line 1375
    move-object v0, p0

    .local v0, "fr":Lcom/sun/javafx/font/FontResource;
    move-object v2, v0

    invoke-interface {v2}, Lcom/sun/javafx/font/FontResource;->getFileName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1376
    .local v1, "file":Ljava/lang/String;
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/font/PrismFontFactory;->jreFontDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "fr":Lcom/sun/javafx/font/FontResource;
    return v0
.end method

.method private synthetic lambda$addFileCloserHook$228()V
    .locals 5

    .prologue
    .line 1403
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 1404
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/font/PrismFontFile;

    move-object v2, v4

    .line 1405
    .local v2, "font":Lcom/sun/javafx/font/PrismFontFile;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/font/PrismFontFile;->disposeOnShutdown()V

    .line 1406
    goto :goto_0

    .line 1408
    .end local v2    # "font":Lcom/sun/javafx/font/PrismFontFile;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFactory;->tmpFonts:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1409
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFactory;->tmpFonts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v2, v4

    .line 1410
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/PrismFontFile;>;"
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/font/PrismFontFile;

    move-object v3, v4

    .line 1411
    .local v3, "font":Lcom/sun/javafx/font/PrismFontFile;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 1412
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/font/PrismFontFile;->disposeOnShutdown()V

    .line 1414
    :cond_1
    goto :goto_1

    .line 1416
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/PrismFontFile;>;"
    .end local v3    # "font":Lcom/sun/javafx/font/PrismFontFile;
    :cond_2
    return-void
.end method

.method private static synthetic lambda$addFileCloserHook$229(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1423
    move-object v0, p0

    .local v0, "fileCloserRunnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v3

    move-object v1, v3

    .line 1424
    .local v1, "tg":Ljava/lang/ThreadGroup;
    move-object v3, v1

    move-object v2, v3

    .line 1425
    .local v2, "tgn":Ljava/lang/ThreadGroup;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v1, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 1426
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    sput-object v3, Lcom/sun/javafx/font/PrismFontFactory;->fileCloser:Ljava/lang/Thread;

    .line 1427
    sget-object v3, Lcom/sun/javafx/font/PrismFontFactory;->fileCloser:Ljava/lang/Thread;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1428
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    sget-object v4, Lcom/sun/javafx/font/PrismFontFactory;->fileCloser:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 1429
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "fileCloserRunnable":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static synthetic lambda$populateFontFileNameMapGeneric$230(Ljava/io/File;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1863
    move-object v0, p0

    .local v0, "dir":Ljava/io/File;
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory$TTFilter;->getInstance()Lcom/sun/javafx/font/PrismFontFactory$TTFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "dir":Ljava/io/File;
    return-object v0
.end method

.method private static synthetic lambda$static$227([I)Ljava/lang/Boolean;
    .locals 14

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "tempCacheLayoutSize":[I
    const-string v10, "javafx_font"

    invoke-static {v10}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 101
    const-string v10, "prism.debugfonts"

    const-string v11, ""

    invoke-static {v10, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 102
    .local v1, "dbg":Ljava/lang/String;
    const-string v10, "true"

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v2, v10

    .line 103
    .local v2, "debug":Z
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "java.home"

    const-string v12, ""

    .line 104
    invoke-static {v11, v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "lib"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "fonts"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/sun/javafx/font/PrismFontFactory;->jreFontDir:Ljava/lang/String;

    .line 106
    const-string v10, "com.sun.javafx.fontSize"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 107
    .local v3, "s":Ljava/lang/String;
    const/high16 v10, -0x40800000    # -1.0f

    sput v10, Lcom/sun/javafx/font/PrismFontFactory;->systemFontSize:F

    .line 108
    move-object v10, v3

    if-eqz v10, :cond_0

    .line 110
    move-object v10, v3

    :try_start_0
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    sput v10, Lcom/sun/javafx/font/PrismFontFactory;->systemFontSize:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 116
    :cond_0
    :goto_0
    const-string v10, "prism.subpixeltext"

    const-string v11, "on"

    invoke-static {v10, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 117
    move-object v10, v3

    const-string v11, "on"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    move-object v10, v3

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 118
    :cond_1
    const/4 v10, 0x1

    sput v10, Lcom/sun/javafx/font/PrismFontFactory;->subPixelMode:I

    .line 120
    :cond_2
    move-object v10, v3

    const-string v11, "native"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 121
    sget v10, Lcom/sun/javafx/font/PrismFontFactory;->subPixelMode:I

    const/4 v11, 0x5

    or-int/lit8 v10, v10, 0x5

    sput v10, Lcom/sun/javafx/font/PrismFontFactory;->subPixelMode:I

    .line 123
    :cond_3
    move-object v10, v3

    const-string v11, "vertical"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 124
    sget v10, Lcom/sun/javafx/font/PrismFontFactory;->subPixelMode:I

    const/4 v11, 0x7

    or-int/lit8 v10, v10, 0x7

    sput v10, Lcom/sun/javafx/font/PrismFontFactory;->subPixelMode:I

    .line 127
    :cond_4
    const-string v10, "prism.fontSizeLimit"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 128
    move-object v10, v3

    if-eqz v10, :cond_5

    .line 130
    move-object v10, v3

    :try_start_1
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    sput v10, Lcom/sun/javafx/font/PrismFontFactory;->fontSizeLimit:F

    .line 131
    sget v10, Lcom/sun/javafx/font/PrismFontFactory;->fontSizeLimit:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    .line 132
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    sput v10, Lcom/sun/javafx/font/PrismFontFactory;->fontSizeLimit:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .line 139
    :cond_5
    :goto_1
    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-nez v10, :cond_6

    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-nez v10, :cond_6

    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->isLinux:Z

    if-eqz v10, :cond_a

    :cond_6
    const/4 v10, 0x1

    :goto_2
    sput-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    .line 140
    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    if-eqz v10, :cond_b

    const-string v10, "native"

    :goto_3
    move-object v4, v10

    .line 141
    .local v4, "defPrismText":Ljava/lang/String;
    const-string v10, "prism.text"

    move-object v11, v4

    invoke-static {v10, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 142
    .local v5, "prismText":Ljava/lang/String;
    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    if-eqz v10, :cond_d

    .line 143
    move-object v10, v5

    const-string v11, "t2k"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v10, 0x1

    :goto_4
    sput-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    .line 148
    :goto_5
    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    if-eqz v10, :cond_8

    :cond_7
    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->isIOS:Z

    if-nez v10, :cond_8

    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->isAndroid:Z

    if-nez v10, :cond_8

    sget-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->isEmbedded:Z

    if-eqz v10, :cond_e

    :cond_8
    const/4 v10, 0x1

    :goto_6
    move v6, v10

    .line 150
    .local v6, "lcdTextOff":Z
    move v10, v6

    if-eqz v10, :cond_f

    const-string v10, "false"

    :goto_7
    move-object v7, v10

    .line 151
    .local v7, "defLCDProp":Ljava/lang/String;
    const-string v10, "prism.lcdtext"

    move-object v11, v7

    invoke-static {v10, v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 152
    .local v8, "lcdProp":Ljava/lang/String;
    move-object v10, v8

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->lcdEnabled:Z

    .line 154
    const-string v10, "prism.cacheLayoutSize"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 155
    move-object v10, v3

    if-eqz v10, :cond_9

    .line 157
    move-object v10, v0

    const/4 v11, 0x0

    move-object v12, v3

    :try_start_2
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v10, v11

    .line 158
    move-object v10, v0

    const/4 v11, 0x0

    aget v10, v10, v11

    if-gez v10, :cond_9

    .line 159
    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    .line 167
    :cond_9
    :goto_8
    move v10, v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "tempCacheLayoutSize":[I
    return-object v0

    .line 111
    .end local v4    # "defPrismText":Ljava/lang/String;
    .end local v5    # "prismText":Ljava/lang/String;
    .end local v6    # "lcdTextOff":Z
    .end local v7    # "defLCDProp":Ljava/lang/String;
    .end local v8    # "lcdProp":Ljava/lang/String;
    .restart local v0    # "tempCacheLayoutSize":[I
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 112
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot parse font size \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v10

    move-object v4, v10

    .line 135
    .restart local v4    # "nfe":Ljava/lang/NumberFormatException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot parse fontSizeLimit \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 139
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 140
    :cond_b
    const-string v10, "t2k"

    goto/16 :goto_3

    .line 143
    .local v4, "defPrismText":Ljava/lang/String;
    .restart local v5    # "prismText":Ljava/lang/String;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 145
    :cond_d
    move-object v10, v5

    const-string v11, "native"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/sun/javafx/font/PrismFontFactory;->useNativeRasterizer:Z

    goto/16 :goto_5

    .line 148
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 150
    .restart local v6    # "lcdTextOff":Z
    :cond_f
    const-string v10, "true"

    goto/16 :goto_7

    .line 161
    .restart local v7    # "defLCDProp":Ljava/lang/String;
    .restart local v8    # "lcdProp":Ljava/lang/String;
    :catch_2
    move-exception v10

    move-object v9, v10

    .line 162
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot parse cache layout size \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method private declared-synchronized loadEmbeddedFont(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/sun/javafx/font/PrismFontFile;
    .locals 21

    .prologue
    .line 1595
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "path":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "register":Z
    move/from16 v4, p4

    .local v4, "copy":Z
    move/from16 v5, p5

    .local v5, "tracked":Z
    move-object/from16 v19, p0

    monitor-enter v19

    move-object v12, v0

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    :try_start_0
    iget v13, v13, Lcom/sun/javafx/font/PrismFontFactory;->numEmbeddedFonts:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/sun/javafx/font/PrismFontFactory;->numEmbeddedFonts:I

    .line 1607
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    const/16 v16, 0x1

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/sun/javafx/font/PrismFontFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    move-object v6, v12

    .line 1609
    .local v6, "fr":Lcom/sun/javafx/font/PrismFontFile;
    move-object v12, v6

    if-nez v12, :cond_0

    .line 1610
    const/4 v12, 0x0

    move-object v0, v12

    .line 1680
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    monitor-exit v19

    return-object v0

    .line 1613
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v12, v6

    :try_start_1
    invoke-virtual {v12}, Lcom/sun/javafx/font/PrismFontFile;->getFamilyName()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 1614
    .local v7, "family":Ljava/lang/String;
    move-object v12, v7

    if-eqz v12, :cond_1

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    :cond_1
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 1615
    :cond_2
    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 1616
    .local v8, "fullname":Ljava/lang/String;
    move-object v12, v8

    if-eqz v12, :cond_3

    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 1617
    :cond_4
    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/javafx/font/PrismFontFile;->getPSName()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 1618
    .local v9, "psname":Ljava/lang/String;
    move-object v12, v9

    if-eqz v12, :cond_5

    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 1620
    :cond_6
    const/4 v12, 0x1

    move v10, v12

    .line 1621
    .local v10, "registerEmbedded":Z
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    if-eqz v12, :cond_7

    .line 1622
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/font/FontResource;

    move-object v11, v12

    .line 1623
    .local v11, "resource":Lcom/sun/javafx/font/FontResource;
    move-object v12, v11

    if-eqz v12, :cond_7

    move-object v12, v6

    move-object v13, v11

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/PrismFontFile;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1625
    const/4 v12, 0x0

    move v10, v12

    .line 1629
    .end local v11    # "resource":Lcom/sun/javafx/font/FontResource;
    :cond_7
    move v12, v10

    if-eqz v12, :cond_8

    .line 1631
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v13}, Lcom/sun/javafx/font/PrismFontFile;->getFileName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/PrismFontFactory;->registerEmbeddedFont(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1633
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 1637
    :cond_8
    move v12, v3

    if-nez v12, :cond_a

    .line 1644
    move v12, v4

    if-eqz v12, :cond_9

    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/javafx/font/PrismFontFile;->isDecoded()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1645
    move-object v12, v0

    move-object v13, v6

    invoke-direct {v12, v13}, Lcom/sun/javafx/font/PrismFontFactory;->addTmpFont(Lcom/sun/javafx/font/PrismFontFile;)V

    .line 1647
    :cond_9
    move-object v12, v6

    move-object v0, v12

    goto :goto_0

    .line 1650
    :cond_a
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    if-nez v12, :cond_b

    .line 1651
    move-object v12, v0

    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iput-object v13, v12, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    .line 1662
    :cond_b
    move-object v12, v1

    if-eqz v12, :cond_c

    move-object v12, v1

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    .line 1663
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    move-object v13, v1

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1664
    move-object v12, v0

    move-object v13, v1

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 1667
    :cond_c
    move-object v12, v0

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/sun/javafx/font/PrismFontFactory;->removeEmbeddedFont(Ljava/lang/String;)V

    .line 1668
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    move-object v13, v8

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1669
    move-object v12, v0

    move-object v13, v8

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 1670
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/javafx/font/PrismFontFile;->isBold()Z

    move-result v14

    move-object v15, v6

    invoke-virtual {v15}, Lcom/sun/javafx/font/PrismFontFile;->isItalic()Z

    move-result v15

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/font/PrismFontFactory;->dotStyleStr(ZZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 1671
    move-object v12, v0

    move-object v13, v7

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 1679
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/font/PrismFontFactory;->compResourceMap:Ljava/util/HashMap;

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 1680
    move-object v12, v6

    move-object v0, v12

    goto/16 :goto_0

    .line 1595
    .end local v6    # "fr":Lcom/sun/javafx/font/PrismFontFile;
    .end local v7    # "family":Ljava/lang/String;
    .end local v8    # "fullname":Ljava/lang/String;
    .end local v9    # "psname":Ljava/lang/String;
    .end local v10    # "registerEmbedded":Z
    :catchall_0
    move-exception v0

    monitor-exit v19

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method private loadEmbeddedFont0(Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/sun/javafx/font/PGFont;
    .locals 18

    .prologue
    .line 1470
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "fontStream":Ljava/io/InputStream;
    move/from16 v3, p3

    .local v3, "size":F
    move/from16 v4, p4

    .local v4, "register":Z
    const/4 v11, 0x0

    move-object v5, v11

    .line 1471
    .local v5, "fr":Lcom/sun/javafx/font/PrismFontFile;
    new-instance v11, Lcom/sun/javafx/font/FontFileWriter;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lcom/sun/javafx/font/FontFileWriter;-><init>()V

    move-object v6, v11

    .line 1475
    .local v6, "fontWriter":Lcom/sun/javafx/font/FontFileWriter;
    move-object v11, v6

    :try_start_0
    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileWriter;->openFile()Ljava/io/File;

    move-result-object v11

    move-object v7, v11

    .line 1476
    .local v7, "tFile":Ljava/io/File;
    const/16 v11, 0x2000

    new-array v11, v11, [B

    move-object v8, v11

    .line 1478
    .local v8, "buf":[B
    :goto_0
    move-object v11, v2

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    move v9, v11

    .line 1479
    .local v9, "bytesRead":I
    move v11, v9

    if-gez v11, :cond_3

    .line 1480
    .line 1484
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileWriter;->closeFile()V

    .line 1486
    move-object v11, v0

    move-object v12, v1

    move-object v13, v7

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    move v14, v4

    const/4 v15, 0x1

    move-object/from16 v16, v6

    .line 1487
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/font/FontFileWriter;->isTracking()Z

    move-result v16

    .line 1486
    invoke-direct/range {v11 .. v16}, Lcom/sun/javafx/font/PrismFontFactory;->loadEmbeddedFont(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v11

    move-object v5, v11

    .line 1489
    move-object v11, v5

    if-eqz v11, :cond_0

    .line 1492
    move-object v11, v5

    invoke-virtual {v11}, Lcom/sun/javafx/font/PrismFontFile;->isDecoded()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1493
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileWriter;->deleteFile()V

    .line 1509
    :cond_0
    move-object v11, v0

    invoke-direct {v11}, Lcom/sun/javafx/font/PrismFontFactory;->addFileCloserHook()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1518
    move-object v11, v5

    if-nez v11, :cond_1

    .line 1519
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileWriter;->deleteFile()V

    .line 1522
    .end local v7    # "tFile":Ljava/io/File;
    .end local v8    # "buf":[B
    .end local v9    # "bytesRead":I
    :cond_1
    :goto_1
    move-object v11, v5

    if-eqz v11, :cond_5

    .line 1523
    move v11, v3

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_2

    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getSystemFontSize()F

    move-result v11

    move v3, v11

    .line 1524
    :cond_2
    new-instance v11, Lcom/sun/javafx/font/PrismFont;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v5

    move-object v14, v5

    invoke-virtual {v14}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v14

    move v15, v3

    invoke-direct {v12, v13, v14, v15}, Lcom/sun/javafx/font/PrismFont;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;F)V

    move-object v0, v11

    .line 1526
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_2
    return-object v0

    .line 1482
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .restart local v7    # "tFile":Ljava/io/File;
    .restart local v8    # "buf":[B
    .restart local v9    # "bytesRead":I
    :cond_3
    move-object v11, v6

    move-object v12, v8

    const/4 v13, 0x0

    move v14, v9

    :try_start_1
    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/javafx/font/FontFileWriter;->writeBytes([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1483
    goto :goto_0

    .line 1510
    .end local v7    # "tFile":Ljava/io/File;
    .end local v8    # "buf":[B
    .end local v9    # "bytesRead":I
    :catch_0
    move-exception v11

    move-object v7, v11

    .line 1511
    .local v7, "e":Ljava/lang/Exception;
    move-object v11, v6

    :try_start_2
    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileWriter;->deleteFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1518
    move-object v11, v5

    if-nez v11, :cond_1

    .line 1519
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileWriter;->deleteFile()V

    goto :goto_1

    .line 1518
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v5

    if-nez v11, :cond_4

    .line 1519
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileWriter;->deleteFile()V

    :cond_4
    move-object v11, v10

    throw v11

    .line 1526
    :cond_5
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_2
.end method

.method private logFontInfo(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1689
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, p3

    .local v3, "fontToFamilyNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v4, p4

    .local v4, "familyToFontListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1690
    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 1691
    .local v6, "keyName":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "font="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " file="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    move-object v10, v6

    .line 1692
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1691
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1693
    goto :goto_0

    .line 1694
    .end local v6    # "keyName":Ljava/lang/String;
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 1695
    .restart local v6    # "keyName":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "font="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " family="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    move-object v10, v6

    .line 1696
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1695
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1697
    goto :goto_1

    .line 1698
    .end local v6    # "keyName":Ljava/lang/String;
    :cond_1
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_2
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 1699
    .restart local v6    # "keyName":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "family="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fonts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    move-object v10, v6

    .line 1700
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1699
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1701
    goto :goto_2

    .line 1702
    .end local v6    # "keyName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private lookupResource(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;
    .locals 5

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "lcName":Ljava/lang/String;
    move v2, p2

    .local v2, "wantComp":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 649
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFactory;->compResourceMap:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/font/FontResource;

    move-object v0, v3

    .line 651
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFactory;->fontResourceMap:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/font/FontResource;

    move-object v0, v3

    goto :goto_0
.end method

.method static native populateFontFileNameMap(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Locale;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation
.end method

.method private static native regReadFontLink(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private removeEmbeddedFont(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1560
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/font/PrismFontFile;

    move-object v2, v6

    .line 1561
    .local v2, "font":Lcom/sun/javafx/font/PrismFontFile;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 1562
    .line 1579
    :goto_0
    return-void

    .line 1564
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1565
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 1566
    .local v3, "lcName":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->fontResourceMap:Ljava/util/HashMap;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1567
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->compResourceMap:Ljava/util/HashMap;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1572
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->compResourceMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .line 1573
    .local v4, "fi":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/font/CompositeFontResource;>;"
    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1574
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/font/CompositeFontResource;

    move-object v5, v6

    .line 1575
    .local v5, "compFont":Lcom/sun/javafx/font/CompositeFontResource;
    move-object v6, v5

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/sun/javafx/font/CompositeFontResource;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v6

    move-object v7, v2

    if-ne v6, v7, :cond_1

    .line 1576
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 1578
    :cond_1
    goto :goto_1

    .line 1579
    .end local v5    # "compFont":Lcom/sun/javafx/font/CompositeFontResource;
    :cond_2
    goto :goto_0
.end method

.method private resolveFontFiles(Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1154
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object/from16 v3, p1

    .local v3, "unmappedFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v4, p2

    .local v4, "unmappedFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v5, p3

    .local v5, "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v6, p4

    .local v6, "fontToFamilyNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v7, p5

    .local v7, "familyToFontListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v8, v19

    :goto_0
    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v9, v19

    .line 1156
    .local v9, "file":Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v10, v19

    .line 1158
    .local v10, "fn":I
    move-object/from16 v19, v9

    :try_start_0
    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/font/PrismFontFactory;->getPathNameWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v12, v19

    .line 1160
    .local v12, "fullPath":Ljava/lang/String;
    :cond_0
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move/from16 v21, v10

    add-int/lit8 v10, v10, 0x1

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;I)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v19

    move-object/from16 v11, v19

    .line 1161
    .local v11, "ttf":Lcom/sun/javafx/font/PrismFontFile;
    move-object/from16 v19, v11

    if-nez v19, :cond_2

    .line 1162
    .line 1214
    .line 1215
    .end local v10    # "fn":I
    .end local v11    # "ttf":Lcom/sun/javafx/font/PrismFontFile;
    .end local v12    # "fullPath":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1164
    .restart local v10    # "fn":I
    .restart local v11    # "ttf":Lcom/sun/javafx/font/PrismFontFile;
    .restart local v12    # "fullPath":Ljava/lang/String;
    :cond_2
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1165
    .local v13, "fontNameLC":Ljava/lang/String;
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/font/PrismFontFile;->getLocaleFullName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    .line 1166
    .local v14, "localeNameLC":Ljava/lang/String;
    move-object/from16 v19, v4

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v19, v4

    move-object/from16 v20, v14

    .line 1167
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1168
    :cond_3
    move-object/from16 v19, v5

    move-object/from16 v20, v13

    move-object/from16 v21, v9

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1169
    move-object/from16 v19, v4

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v19

    .line 1179
    move-object/from16 v19, v4

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1180
    move-object/from16 v19, v4

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v19

    .line 1181
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/font/PrismFontFile;->getFamilyName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 1182
    .local v15, "family":Ljava/lang/String;
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    .line 1183
    .local v16, "familyLC":Ljava/lang/String;
    move-object/from16 v19, v6

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1184
    move-object/from16 v19, v6

    move-object/from16 v20, v13

    move-object/from16 v21, v15

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1185
    move-object/from16 v19, v7

    move-object/from16 v20, v16

    .line 1186
    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v17, v19

    .line 1187
    .local v17, "familylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v19, v17

    if-eqz v19, :cond_5

    .line 1188
    move-object/from16 v19, v17

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/font/PrismFontFile;->getLocaleFullName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v19

    .line 1204
    :goto_2
    move-object/from16 v19, v17

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 1209
    .end local v15    # "family":Ljava/lang/String;
    .end local v16    # "familyLC":Ljava/lang/String;
    .end local v17    # "familylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move/from16 v19, v10

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/font/PrismFontFile;->getFontCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    goto/16 :goto_1

    .line 1194
    .restart local v15    # "family":Ljava/lang/String;
    .restart local v16    # "familyLC":Ljava/lang/String;
    .restart local v17    # "familylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v19, v11

    .line 1195
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/font/PrismFontFile;->getLocaleFamilyName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v19

    .line 1196
    .local v18, "localeFamilyLC":Ljava/lang/String;
    move-object/from16 v19, v7

    move-object/from16 v20, v18

    .line 1197
    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v17, v19

    .line 1198
    move-object/from16 v19, v17

    if-eqz v19, :cond_6

    .line 1199
    move-object/from16 v19, v7

    move-object/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1201
    :cond_6
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v19

    .line 1202
    move-object/from16 v19, v7

    move-object/from16 v20, v16

    move-object/from16 v21, v17

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    goto :goto_2

    .line 1210
    .end local v11    # "ttf":Lcom/sun/javafx/font/PrismFontFile;
    .end local v12    # "fullPath":Ljava/lang/String;
    .end local v13    # "fontNameLC":Ljava/lang/String;
    .end local v14    # "localeNameLC":Ljava/lang/String;
    .end local v15    # "family":Ljava/lang/String;
    .end local v16    # "familyLC":Ljava/lang/String;
    .end local v17    # "familylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "localeFamilyLC":Ljava/lang/String;
    :catch_0
    move-exception v19

    move-object/from16 v10, v19

    .line 1211
    .local v10, "e":Ljava/lang/Exception;
    sget-boolean v19, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v19, :cond_1

    .line 1212
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1216
    .end local v9    # "file":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    return-void
.end method

.method private resolveWindowsFonts(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1073
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object/from16 v1, p1

    .local v1, "fontToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v2, p2

    .local v2, "fontToFamilyNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, "familyToFontListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v12, 0x0

    move-object v4, v12

    .line 1074
    .local v4, "unmappedFontNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v12

    :goto_0
    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v6, v12

    .line 1075
    .local v6, "font":Ljava/lang/String;
    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v7, v12

    .line 1076
    .local v7, "file":Ljava/lang/String;
    move-object v12, v7

    if-nez v12, :cond_0

    .line 1077
    move-object v12, v6

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    move v8, v12

    .line 1078
    .local v8, "dsi":I
    move v12, v8

    if-lez v12, :cond_1

    .line 1079
    move-object v12, v6

    const/4 v13, 0x0

    move v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 1080
    .local v9, "newName":Ljava/lang/String;
    move-object v12, v9

    move-object v13, v6

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 1081
    move-object v12, v1

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v7, v12

    .line 1085
    move-object v12, v7

    if-eqz v12, :cond_0

    move-object v12, v2

    move-object v13, v9

    .line 1086
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1087
    move-object v12, v1

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1088
    move-object v12, v1

    move-object v13, v6

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1090
    .line 1105
    .end local v8    # "dsi":I
    .end local v9    # "newName":Ljava/lang/String;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1090
    .restart local v8    # "dsi":I
    :cond_1
    move-object v12, v6

    const-string v13, "marlett"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1091
    move-object v12, v1

    move-object v13, v6

    const-string v14, "marlett.ttf"

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    .line 1092
    :cond_2
    move-object v12, v6

    const-string v13, "david"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1093
    move-object v12, v1

    const-string v13, "david regular"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v7, v12

    .line 1094
    move-object v12, v7

    if-eqz v12, :cond_0

    .line 1095
    move-object v12, v1

    const-string v13, "david regular"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1096
    move-object v12, v1

    const-string v13, "david"

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    .line 1099
    :cond_3
    move-object v12, v4

    if-nez v12, :cond_4

    .line 1100
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v12

    .line 1102
    :cond_4
    move-object v12, v4

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_1

    .line 1107
    .end local v6    # "font":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "dsi":I
    :cond_5
    move-object v12, v4

    if-eqz v12, :cond_9

    .line 1108
    new-instance v12, Ljava/util/HashSet;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object v5, v12

    .line 1111
    .local v5, "unmappedFontFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object v6, v12

    .line 1112
    .local v6, "ffmapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v12, v6

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1113
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v12

    :goto_2
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v8, v12

    .line 1114
    .local v8, "key":Ljava/lang/String;
    move-object v12, v6

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1115
    goto :goto_2

    .line 1116
    .end local v8    # "key":Ljava/lang/String;
    :cond_6
    move-object v12, v6

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v12

    :goto_3
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v8, v12

    .line 1117
    .restart local v8    # "key":Ljava/lang/String;
    move-object v12, v5

    move-object v13, v6

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 1118
    move-object v12, v1

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1119
    goto :goto_3

    .line 1120
    .end local v8    # "key":Ljava/lang/String;
    :cond_7
    move-object v12, v0

    move-object v13, v5

    move-object v14, v4

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Lcom/sun/javafx/font/PrismFontFactory;->resolveFontFiles(Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1129
    move-object v12, v4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_9

    .line 1130
    move-object v12, v4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v7, v12

    .line 1131
    .local v7, "sz":I
    const/4 v12, 0x0

    move v8, v12

    .local v8, "i":I
    :goto_4
    move v12, v8

    move v13, v7

    if-ge v12, v13, :cond_9

    .line 1132
    move-object v12, v4

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v9, v12

    .line 1133
    .local v9, "name":Ljava/lang/String;
    move-object v12, v2

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v10, v12

    .line 1134
    .local v10, "familyName":Ljava/lang/String;
    move-object v12, v10

    if-eqz v12, :cond_8

    .line 1135
    move-object v12, v3

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move-object v11, v12

    .line 1136
    .local v11, "family":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v12, v11

    if-eqz v12, :cond_8

    .line 1137
    move-object v12, v11

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_8

    .line 1138
    move-object v12, v3

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1142
    .end local v11    # "family":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    move-object v12, v2

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1131
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1146
    .end local v5    # "unmappedFontFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6    # "ffmapCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "sz":I
    .end local v8    # "i":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "familyName":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V
    .locals 7

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "resource":Lcom/sun/javafx/font/FontResource;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    .line 365
    .line 374
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    move-object v3, v2

    instance-of v3, v3, Lcom/sun/javafx/font/PrismCompositeFontResource;

    if-eqz v3, :cond_2

    .line 368
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a composite "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 371
    goto :goto_0

    .line 373
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFactory;->fontResourceMap:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 374
    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addDecodedFont(Lcom/sun/javafx/font/PrismFontFile;)V
    .locals 5

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "fr":Lcom/sun/javafx/font/PrismFontFile;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v1

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->setIsDecoded(Z)V

    .line 379
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/font/PrismFontFactory;->addTmpFont(Lcom/sun/javafx/font/PrismFontFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit v4

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method addToMaps(Lcom/sun/javafx/font/PrismFontFile;)V
    .locals 11

    .prologue
    .line 1834
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "fr":Lcom/sun/javafx/font/PrismFontFile;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 1835
    .line 1856
    :goto_0
    return-void

    .line 1838
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 1839
    .local v2, "fullName":Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/font/PrismFontFile;->getFamilyName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 1841
    .local v3, "familyName":Ljava/lang/String;
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v3

    if-nez v7, :cond_2

    .line 1842
    :cond_1
    goto :goto_0

    .line 1845
    :cond_2
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 1846
    .local v4, "lcFullName":Ljava/lang/String;
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1848
    .local v5, "lcFamilyName":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;

    move-object v8, v4

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/font/PrismFontFile;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1849
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1850
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v6, v7

    .line 1851
    .local v6, "familyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v7, v6

    if-nez v7, :cond_3

    .line 1852
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 1853
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1855
    :cond_3
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1856
    goto :goto_0
.end method

.method public declared-synchronized createFont(Ljava/lang/String;F)Lcom/sun/javafx/font/PGFont;
    .locals 12

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "size":F
    move-object v10, p0

    monitor-enter v10

    const/4 v5, 0x0

    move-object v3, v5

    .line 584
    .local v3, "fr":Lcom/sun/javafx/font/FontResource;
    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 585
    move-object v5, v1

    move v6, v2

    .line 586
    invoke-static {v5, v6}, Lcom/sun/javafx/font/LogicalFont;->getLogicalFont(Ljava/lang/String;F)Lcom/sun/javafx/font/PGFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v4, v5

    .line 587
    .local v4, "logFont":Lcom/sun/javafx/font/PGFont;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 588
    move-object v5, v4

    move-object v0, v5

    .line 596
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .end local v4    # "logFont":Lcom/sun/javafx/font/PGFont;
    :goto_0
    monitor-exit v10

    return-object v0

    .line 591
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .restart local v4    # "logFont":Lcom/sun/javafx/font/PGFont;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v5

    move-object v3, v5

    .line 593
    .end local v4    # "logFont":Lcom/sun/javafx/font/PGFont;
    :cond_1
    move-object v5, v3

    if-nez v5, :cond_2

    .line 594
    const-string v5, "System Regular"

    move v6, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/font/LogicalFont;->getLogicalFont(Ljava/lang/String;F)Lcom/sun/javafx/font/PGFont;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 596
    :cond_2
    new-instance v5, Lcom/sun/javafx/font/PrismFont;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v3

    move-object v8, v3

    invoke-interface {v8}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v8

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/font/PrismFont;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method public declared-synchronized createFont(Ljava/lang/String;ZZF)Lcom/sun/javafx/font/PGFont;
    .locals 14

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "familyName":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "bold":Z
    move/from16 v3, p3

    .local v3, "italic":Z
    move/from16 v4, p4

    .local v4, "size":F
    move-object v12, p0

    monitor-enter v12

    const/4 v7, 0x0

    move-object v5, v7

    .line 565
    .local v5, "fr":Lcom/sun/javafx/font/FontResource;
    move-object v7, v1

    if-eqz v7, :cond_1

    move-object v7, v1

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 566
    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    .line 567
    invoke-static {v7, v8, v9, v10}, Lcom/sun/javafx/font/LogicalFont;->getLogicalFont(Ljava/lang/String;ZZF)Lcom/sun/javafx/font/PGFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v6, v7

    .line 568
    .local v6, "logFont":Lcom/sun/javafx/font/PGFont;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 569
    move-object v7, v6

    move-object v0, v7

    .line 578
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .end local v6    # "logFont":Lcom/sun/javafx/font/PGFont;
    :goto_0
    monitor-exit v12

    return-object v0

    .line 571
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .restart local v6    # "logFont":Lcom/sun/javafx/font/PGFont;
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;ZZZ)Lcom/sun/javafx/font/FontResource;

    move-result-object v7

    move-object v5, v7

    .line 574
    .end local v6    # "logFont":Lcom/sun/javafx/font/PGFont;
    :cond_1
    move-object v7, v5

    if-nez v7, :cond_2

    .line 576
    const-string v7, "System"

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-static {v7, v8, v9, v10}, Lcom/sun/javafx/font/LogicalFont;->getLogicalFont(Ljava/lang/String;ZZF)Lcom/sun/javafx/font/PGFont;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 578
    :cond_2
    new-instance v7, Lcom/sun/javafx/font/PrismFont;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    move-object v10, v5

    invoke-interface {v10}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v10

    move v11, v4

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/font/PrismFont;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v7

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v12

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method protected abstract createFontFile(Ljava/lang/String;Ljava/lang/String;IZZZZ)Lcom/sun/javafx/font/PrismFontFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract createGlyphLayout()Lcom/sun/javafx/text/GlyphLayout;
.end method

.method public declared-synchronized deriveFont(Lcom/sun/javafx/font/PGFont;ZZF)Lcom/sun/javafx/font/PGFont;
    .locals 13

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "font":Lcom/sun/javafx/font/PGFont;
    move v2, p2

    .local v2, "bold":Z
    move/from16 v3, p3

    .local v3, "italic":Z
    move/from16 v4, p4

    .local v4, "size":F
    move-object v11, p0

    monitor-enter v11

    move-object v6, v1

    :try_start_0
    invoke-interface {v6}, Lcom/sun/javafx/font/PGFont;->getFontResource()Lcom/sun/javafx/font/FontResource;

    move-result-object v6

    move-object v5, v6

    .line 644
    .local v5, "fr":Lcom/sun/javafx/font/FontResource;
    new-instance v6, Lcom/sun/javafx/font/PrismFont;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    move-object v9, v5

    invoke-interface {v9}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v9

    move v10, v4

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/font/PrismFont;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    monitor-exit v11

    return-object v0

    .line 642
    .end local v5    # "fr":Lcom/sun/javafx/font/FontResource;
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method getDefaultFontResource(Z)Lcom/sun/javafx/font/FontResource;
    .locals 11

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move v1, p1

    .local v1, "wantComp":Z
    move-object v6, v0

    const-string v7, "lucida sans regular"

    move v8, v1

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->lookupResource(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v6

    move-object v2, v6

    .line 848
    .local v2, "fontResource":Lcom/sun/javafx/font/FontResource;
    move-object v6, v2

    if-nez v6, :cond_4

    .line 849
    move-object v6, v0

    const-string v7, "Lucida Sans Regular"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/sun/javafx/font/PrismFontFactory;->jreFontDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LucidaSansRegular.ttf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v6

    move-object v2, v6

    .line 851
    move-object v6, v2

    if-nez v6, :cond_3

    .line 854
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->fontToFileMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 855
    .local v4, "font":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/sun/javafx/font/PrismFontFactory;->findFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 856
    .local v5, "file":Ljava/lang/String;
    move-object v6, v0

    const-string v7, "lucida sans regular"

    move-object v8, v5

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v6

    move-object v2, v6

    .line 857
    move-object v6, v2

    if-eqz v6, :cond_2

    .line 858
    .line 861
    .end local v4    # "font":Ljava/lang/String;
    .end local v5    # "file":Ljava/lang/String;
    :cond_0
    move-object v6, v2

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/sun/javafx/font/PrismFontFactory;->isLinux:Z

    if-eqz v6, :cond_1

    .line 862
    invoke-static {}, Lcom/sun/javafx/font/FontConfigManager;->getDefaultFontPath()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 863
    .local v3, "path":Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 864
    move-object v6, v0

    const-string v7, "lucida sans regular"

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v6

    move-object v2, v6

    .line 868
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_3

    .line 869
    const/4 v6, 0x0

    move-object v0, v6

    .line 879
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_1
    return-object v0

    .line 860
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .restart local v4    # "font":Ljava/lang/String;
    .restart local v5    # "file":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 872
    .end local v4    # "font":Ljava/lang/String;
    .end local v5    # "file":Ljava/lang/String;
    :cond_3
    move-object v6, v0

    const-string v7, "lucida sans regular"

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 873
    move v6, v1

    if-eqz v6, :cond_4

    .line 874
    new-instance v6, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    const-string v9, "lucida sans regular"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V

    move-object v2, v6

    .line 879
    :cond_4
    move-object v6, v2

    move-object v0, v6

    goto :goto_1
.end method

.method public getFontFamilyNames()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 1260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    sget-object v4, Lcom/sun/javafx/font/PrismFontFactory;->allFamilyNames:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    .line 1266
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 1267
    .local v1, "familyNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/font/LogicalFont;->addFamilies(Ljava/util/ArrayList;)V

    .line 1273
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 1274
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/font/PrismFontFile;

    move-object v3, v4

    .line 1275
    .local v3, "embeddedFont":Lcom/sun/javafx/font/PrismFontFile;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/font/PrismFontFile;->getFamilyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1276
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/font/PrismFontFile;->getFamilyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1277
    :cond_0
    goto :goto_0

    .line 1279
    .end local v3    # "embeddedFont":Lcom/sun/javafx/font/PrismFontFile;
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/font/PrismFontFactory;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object v4

    .line 1280
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFactory;->fontToFamilyNameMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 1281
    .local v3, "f":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1282
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1284
    :cond_2
    goto :goto_1

    .line 1285
    .end local v3    # "f":Ljava/lang/String;
    :cond_3
    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1286
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v4, Lcom/sun/javafx/font/PrismFontFactory;->allFamilyNames:Ljava/util/ArrayList;

    .line 1288
    .end local v1    # "familyNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    sget-object v4, Lcom/sun/javafx/font/PrismFontFactory;->allFamilyNames:Ljava/util/ArrayList;

    sget-object v5, Lcom/sun/javafx/font/PrismFontFactory;->STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    return-object v0
.end method

.method public getFontFullNames()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    sget-object v6, Lcom/sun/javafx/font/PrismFontFactory;->allFontNames:Ljava/util/ArrayList;

    if-nez v6, :cond_4

    .line 1299
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 1300
    .local v1, "fontNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/font/LogicalFont;->addFullNames(Ljava/util/ArrayList;)V

    .line 1301
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    .line 1302
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/font/PrismFontFile;

    move-object v3, v6

    .line 1303
    .local v3, "embeddedFont":Lcom/sun/javafx/font/PrismFontFile;
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1304
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1306
    :cond_0
    goto :goto_0

    .line 1308
    .end local v3    # "embeddedFont":Lcom/sun/javafx/font/PrismFontFile;
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/font/PrismFontFactory;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object v6

    .line 1309
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_1
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move-object v3, v6

    .line 1310
    .local v3, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 1311
    .local v5, "s":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1312
    goto :goto_2

    .line 1313
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1314
    .end local v3    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move-object v6, v1

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1315
    move-object v6, v1

    sput-object v6, Lcom/sun/javafx/font/PrismFontFactory;->allFontNames:Ljava/util/ArrayList;

    .line 1317
    .end local v1    # "fontNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    sget-object v6, Lcom/sun/javafx/font/PrismFontFactory;->allFontNames:Ljava/util/ArrayList;

    sget-object v7, Lcom/sun/javafx/font/PrismFontFactory;->STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    return-object v0
.end method

.method public getFontFullNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1323
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "family":Ljava/lang/String;
    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/font/LogicalFont;->getFontsInFamily(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1324
    .local v2, "logFonts":[Ljava/lang/String;
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 1326
    move-object v6, v2

    move-object v0, v6

    .line 1350
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    return-object v0

    .line 1329
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    if-eqz v6, :cond_4

    .line 1330
    const/4 v6, 0x0

    move-object v3, v6

    .line 1331
    .local v3, "embeddedFamily":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/font/PrismFontFile;

    move-object v5, v6

    .line 1332
    .local v5, "embeddedFont":Lcom/sun/javafx/font/PrismFontFile;
    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/javafx/font/PrismFontFile;->getFamilyName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1333
    move-object v6, v3

    if-nez v6, :cond_1

    .line 1334
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 1336
    :cond_1
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/javafx/font/PrismFontFile;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1338
    :cond_2
    goto :goto_1

    .line 1339
    .end local v5    # "embeddedFont":Lcom/sun/javafx/font/PrismFontFile;
    :cond_3
    move-object v6, v3

    if-eqz v6, :cond_4

    .line 1340
    move-object v6, v3

    sget-object v7, Lcom/sun/javafx/font/PrismFontFactory;->STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    goto :goto_0

    .line 1344
    .end local v3    # "embeddedFamily":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/font/PrismFontFactory;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object v6

    .line 1345
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 1346
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move-object v3, v6

    .line 1347
    .local v3, "familyFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v6, v3

    if-eqz v6, :cond_5

    .line 1348
    move-object v6, v3

    sget-object v7, Lcom/sun/javafx/font/PrismFontFactory;->STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    goto :goto_0

    .line 1350
    :cond_5
    sget-object v6, Lcom/sun/javafx/font/PrismFontFactory;->STR_ARRAY:[Ljava/lang/String;

    move-object v0, v6

    goto :goto_0
.end method

.method public declared-synchronized getFontResource(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;
    .locals 13

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "file":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "wantComp":Z
    move-object v11, p0

    monitor-enter v11

    const/4 v7, 0x0

    move-object v4, v7

    .line 660
    .local v4, "fr":Lcom/sun/javafx/font/FontResource;
    move-object v7, v1

    if-eqz v7, :cond_2

    .line 661
    move-object v7, v1

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 665
    .local v5, "lcName":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v5

    move v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->lookupResource(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v6, v7

    .line 666
    .local v6, "fontResource":Lcom/sun/javafx/font/FontResource;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 667
    move-object v7, v6

    move-object v0, v7

    .line 732
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .end local v5    # "lcName":Ljava/lang/String;
    .end local v6    # "fontResource":Lcom/sun/javafx/font/FontResource;
    :goto_0
    monitor-exit v11

    return-object v0

    .line 674
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .restart local v5    # "lcName":Ljava/lang/String;
    .restart local v6    # "fontResource":Lcom/sun/javafx/font/FontResource;
    :cond_0
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    move v7, v3

    if-eqz v7, :cond_2

    .line 675
    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->lookupResource(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v7

    move-object v4, v7

    .line 676
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 677
    new-instance v7, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V

    move-object v4, v7

    .line 679
    :cond_1
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 680
    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 688
    .end local v5    # "lcName":Ljava/lang/String;
    .end local v6    # "fontResource":Lcom/sun/javafx/font/FontResource;
    :cond_2
    sget-boolean v7, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-eqz v7, :cond_4

    move-object v7, v1

    if-eqz v7, :cond_4

    .line 689
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 690
    .restart local v5    # "lcName":Ljava/lang/String;
    move-object v7, v5

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/sun/javafx/font/WindowsFontMap;->findFontFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 691
    .local v6, "fontFile":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_4

    .line 692
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v7

    move-object v4, v7

    .line 693
    move-object v7, v4

    if-eqz v7, :cond_4

    .line 694
    move v7, v3

    if-eqz v7, :cond_3

    .line 695
    new-instance v7, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V

    move-object v4, v7

    .line 697
    :cond_3
    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 702
    .end local v5    # "lcName":Ljava/lang/String;
    .end local v6    # "fontFile":Ljava/lang/String;
    :cond_4
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/font/PrismFontFactory;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object v7

    .line 704
    move-object v7, v1

    if-eqz v7, :cond_6

    move-object v7, v2

    if-eqz v7, :cond_6

    .line 708
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v7

    move-object v4, v7

    .line 709
    move-object v7, v4

    if-eqz v7, :cond_6

    .line 710
    move v7, v3

    if-eqz v7, :cond_5

    .line 711
    new-instance v7, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V

    move-object v4, v7

    .line 713
    :cond_5
    move-object v7, v4

    move-object v0, v7

    goto/16 :goto_0

    .line 717
    :cond_6
    move-object v7, v1

    if-eqz v7, :cond_7

    .line 718
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResourceByFullName(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v7

    move-object v4, v7

    .line 719
    move-object v7, v4

    if-eqz v7, :cond_7

    .line 720
    move-object v7, v4

    move-object v0, v7

    goto/16 :goto_0

    .line 724
    :cond_7
    move-object v7, v2

    if-eqz v7, :cond_8

    .line 725
    move-object v7, v0

    move-object v8, v2

    move v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResourceByFileName(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 726
    move-object v7, v4

    if-eqz v7, :cond_8

    .line 727
    move-object v7, v4

    move-object v0, v7

    goto/16 :goto_0

    .line 732
    :cond_8
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method public declared-synchronized getFontResource(Ljava/lang/String;ZZZ)Lcom/sun/javafx/font/FontResource;
    .locals 26

    .prologue
    .line 409
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object/from16 v3, p1

    .local v3, "familyName":Ljava/lang/String;
    move/from16 v4, p2

    .local v4, "bold":Z
    move/from16 v5, p3

    .local v5, "italic":Z
    move/from16 v6, p4

    .local v6, "wantComp":Z
    move-object/from16 v24, p0

    monitor-enter v24

    move-object/from16 v19, v3

    if-eqz v19, :cond_0

    move-object/from16 v19, v3

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-eqz v19, :cond_1

    .line 410
    :cond_0
    const/16 v19, 0x0

    move-object/from16 v2, v19

    .line 559
    .end local v2    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    monitor-exit v24

    return-object v2

    .line 413
    .restart local v2    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_1
    move-object/from16 v19, v3

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v7, v19

    .line 414
    .local v7, "lcFamilyName":Ljava/lang/String;
    move-object/from16 v19, v2

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/font/PrismFontFactory;->dotStyleStr(ZZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v8, v19

    .line 417
    .local v8, "styleStr":Ljava/lang/String;
    move-object/from16 v19, v2

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/font/PrismFontFactory;->lookupResource(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v19

    move-object/from16 v9, v19

    .line 418
    .local v9, "fr":Lcom/sun/javafx/font/FontResource;
    move-object/from16 v19, v9

    if-eqz v19, :cond_2

    .line 419
    move-object/from16 v19, v9

    move-object/from16 v2, v19

    goto :goto_0

    .line 432
    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v6

    if-eqz v19, :cond_5

    .line 433
    move-object/from16 v19, v2

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/font/PrismFontFactory;->lookupResource(Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v19

    move-object/from16 v9, v19

    .line 434
    move-object/from16 v19, v9

    if-eqz v19, :cond_3

    .line 435
    new-instance v19, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v9

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 437
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFactory;->embeddedFonts:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v10, v19

    :goto_1
    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sun/javafx/font/PrismFontFile;

    move-object/from16 v11, v19

    .line 438
    .local v11, "embeddedFont":Lcom/sun/javafx/font/PrismFontFile;
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/font/PrismFontFile;->getFamilyName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v12, v19

    .line 439
    .local v12, "lcEmFamily":Ljava/lang/String;
    move-object/from16 v19, v12

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 440
    new-instance v19, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v11

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 443
    :cond_4
    goto :goto_1

    .line 449
    .end local v11    # "embeddedFont":Lcom/sun/javafx/font/PrismFontFile;
    .end local v12    # "lcEmFamily":Ljava/lang/String;
    :cond_5
    sget-boolean v19, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-eqz v19, :cond_a

    .line 450
    move/from16 v19, v4

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    :goto_2
    move/from16 v20, v5

    if-eqz v20, :cond_9

    const/16 v20, 0x2

    :goto_3
    add-int v19, v19, v20

    move/from16 v10, v19

    .line 451
    .local v10, "style":I
    move-object/from16 v19, v7

    move/from16 v20, v10

    invoke-static/range {v19 .. v20}, Lcom/sun/javafx/font/WindowsFontMap;->findFontFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v11, v19

    .line 452
    .local v11, "fontFile":Ljava/lang/String;
    move-object/from16 v19, v11

    if-eqz v19, :cond_a

    .line 453
    move-object/from16 v19, v2

    const/16 v20, 0x0

    move-object/from16 v21, v11

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v19

    move-object/from16 v9, v19

    .line 454
    move-object/from16 v19, v9

    if-eqz v19, :cond_a

    .line 455
    move/from16 v19, v4

    move-object/from16 v20, v9

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/FontResource;->isBold()Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move/from16 v19, v5

    move-object/from16 v20, v9

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/FontResource;->isItalic()Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v19, v8

    .line 456
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_6

    .line 458
    move-object/from16 v19, v2

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v9

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 460
    :cond_6
    move/from16 v19, v6

    if-eqz v19, :cond_7

    .line 461
    new-instance v19, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v9

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V

    move-object/from16 v9, v19

    .line 464
    :cond_7
    move-object/from16 v19, v9

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 450
    .end local v10    # "style":I
    .end local v11    # "fontFile":Ljava/lang/String;
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 469
    :cond_a
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Lcom/sun/javafx/font/PrismFontFactory;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object v19

    .line 470
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFactory;->familyToFontListMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v10, v19

    .line 471
    .local v10, "family":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v19, v10

    if-nez v19, :cond_b

    .line 472
    const/16 v19, 0x0

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 475
    :cond_b
    const/16 v19, 0x0

    move-object/from16 v11, v19

    .local v11, "plainFR":Lcom/sun/javafx/font/FontResource;
    const/16 v19, 0x0

    move-object/from16 v12, v19

    .line 476
    .local v12, "boldFR":Lcom/sun/javafx/font/FontResource;
    const/16 v19, 0x0

    move-object/from16 v13, v19

    .local v13, "italicFR":Lcom/sun/javafx/font/FontResource;
    const/16 v19, 0x0

    move-object/from16 v14, v19

    .line 477
    .local v14, "boldItalicFR":Lcom/sun/javafx/font/FontResource;
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v15, v19

    :goto_4
    move-object/from16 v19, v15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v19, v15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v16, v19

    .line 478
    .local v16, "fontName":Ljava/lang/String;
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v17, v19

    .line 479
    .local v17, "lcFontName":Ljava/lang/String;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFactory;->fontResourceMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sun/javafx/font/FontResource;

    move-object/from16 v9, v19

    .line 480
    move-object/from16 v19, v9

    if-nez v19, :cond_e

    .line 481
    move-object/from16 v19, v2

    move-object/from16 v20, v17

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/font/PrismFontFactory;->findFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v19

    .line 482
    .local v18, "file":Ljava/lang/String;
    move-object/from16 v19, v18

    if-eqz v19, :cond_c

    .line 483
    move-object/from16 v19, v2

    move-object/from16 v20, v16

    move-object/from16 v21, v18

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v19

    move-object/from16 v9, v19

    .line 485
    :cond_c
    move-object/from16 v19, v9

    if-nez v19, :cond_d

    .line 486
    goto :goto_4

    .line 488
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v20, v17

    move-object/from16 v21, v9

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 494
    .end local v18    # "file":Ljava/lang/String;
    :cond_e
    move/from16 v19, v4

    move-object/from16 v20, v9

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/FontResource;->isBold()Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    move/from16 v19, v5

    move-object/from16 v20, v9

    invoke-interface/range {v20 .. v20}, Lcom/sun/javafx/font/FontResource;->isItalic()Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 495
    move-object/from16 v19, v2

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v9

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 496
    move/from16 v19, v6

    if-eqz v19, :cond_f

    .line 497
    new-instance v19, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v9

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V

    move-object/from16 v9, v19

    .line 500
    :cond_f
    move-object/from16 v19, v9

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 502
    :cond_10
    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v19}, Lcom/sun/javafx/font/FontResource;->isBold()Z

    move-result v19

    if-nez v19, :cond_12

    .line 503
    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v19}, Lcom/sun/javafx/font/FontResource;->isItalic()Z

    move-result v19

    if-nez v19, :cond_11

    .line 504
    move-object/from16 v19, v9

    move-object/from16 v11, v19

    .line 515
    :goto_5
    goto/16 :goto_4

    .line 506
    :cond_11
    move-object/from16 v19, v9

    move-object/from16 v13, v19

    goto :goto_5

    .line 509
    :cond_12
    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v19}, Lcom/sun/javafx/font/FontResource;->isItalic()Z

    move-result v19

    if-nez v19, :cond_13

    .line 510
    move-object/from16 v19, v9

    move-object/from16 v12, v19

    goto :goto_5

    .line 512
    :cond_13
    move-object/from16 v19, v9

    move-object/from16 v14, v19

    goto :goto_5

    .line 520
    .end local v16    # "fontName":Ljava/lang/String;
    .end local v17    # "lcFontName":Ljava/lang/String;
    :cond_14
    move/from16 v19, v4

    if-nez v19, :cond_18

    move/from16 v19, v5

    if-nez v19, :cond_18

    .line 521
    move-object/from16 v19, v12

    if-eqz v19, :cond_16

    .line 522
    move-object/from16 v19, v12

    move-object/from16 v9, v19

    .line 553
    :goto_6
    move-object/from16 v19, v9

    if-eqz v19, :cond_15

    .line 554
    move-object/from16 v19, v2

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v9

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/font/PrismFontFactory;->storeInMap(Ljava/lang/String;Lcom/sun/javafx/font/FontResource;)V

    .line 555
    move/from16 v19, v6

    if-eqz v19, :cond_15

    .line 556
    new-instance v19, Lcom/sun/javafx/font/PrismCompositeFontResource;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v9

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/font/PrismCompositeFontResource;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v9, v19

    .line 559
    :cond_15
    move-object/from16 v19, v9

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 523
    :cond_16
    move-object/from16 v19, v13

    if-eqz v19, :cond_17

    .line 524
    move-object/from16 v19, v13

    move-object/from16 v9, v19

    goto :goto_6

    .line 526
    :cond_17
    move-object/from16 v19, v14

    move-object/from16 v9, v19

    goto :goto_6

    .line 528
    :cond_18
    move/from16 v19, v4

    if-eqz v19, :cond_1b

    move/from16 v19, v5

    if-nez v19, :cond_1b

    .line 529
    move-object/from16 v19, v11

    if-eqz v19, :cond_19

    .line 530
    move-object/from16 v19, v11

    move-object/from16 v9, v19

    goto :goto_6

    .line 531
    :cond_19
    move-object/from16 v19, v14

    if-eqz v19, :cond_1a

    .line 532
    move-object/from16 v19, v14

    move-object/from16 v9, v19

    goto/16 :goto_6

    .line 534
    :cond_1a
    move-object/from16 v19, v13

    move-object/from16 v9, v19

    goto/16 :goto_6

    .line 536
    :cond_1b
    move/from16 v19, v4

    if-nez v19, :cond_1e

    move/from16 v19, v5

    if-eqz v19, :cond_1e

    .line 537
    move-object/from16 v19, v14

    if-eqz v19, :cond_1c

    .line 538
    move-object/from16 v19, v14

    move-object/from16 v9, v19

    goto/16 :goto_6

    .line 539
    :cond_1c
    move-object/from16 v19, v11

    if-eqz v19, :cond_1d

    .line 540
    move-object/from16 v19, v11

    move-object/from16 v9, v19

    goto/16 :goto_6

    .line 542
    :cond_1d
    move-object/from16 v19, v12

    move-object/from16 v9, v19

    goto/16 :goto_6

    .line 545
    :cond_1e
    move-object/from16 v19, v13

    if-eqz v19, :cond_1f

    .line 546
    move-object/from16 v19, v13

    move-object/from16 v9, v19

    goto/16 :goto_6

    .line 547
    :cond_1f
    move-object/from16 v19, v12

    if-eqz v19, :cond_20

    .line 548
    move-object/from16 v19, v12

    move-object/from16 v9, v19

    goto/16 :goto_6

    .line 550
    :cond_20
    move-object/from16 v19, v11

    move-object/from16 v9, v19

    goto/16 :goto_6

    .line 409
    .end local v7    # "lcFamilyName":Ljava/lang/String;
    .end local v8    # "styleStr":Ljava/lang/String;
    .end local v9    # "fr":Lcom/sun/javafx/font/FontResource;
    .end local v10    # "family":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "plainFR":Lcom/sun/javafx/font/FontResource;
    .end local v12    # "boldFR":Lcom/sun/javafx/font/FontResource;
    .end local v13    # "italicFR":Lcom/sun/javafx/font/FontResource;
    .end local v14    # "boldItalicFR":Lcom/sun/javafx/font/FontResource;
    :catchall_0
    move-exception v2

    monitor-exit v24

    .end local v2    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v2
.end method

.method public final getSubPixelMode()I
    .locals 2

    .prologue
    .line 1355
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    sget v1, Lcom/sun/javafx/font/PrismFontFactory;->subPixelMode:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    return v0
.end method

.method public final hasPermission()Z
    .locals 6

    .prologue
    .line 1794
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    move-object v1, v2

    .line 1795
    .local v1, "sm":Ljava/lang/SecurityManager;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1796
    move-object v2, v1

    new-instance v3, Ljava/security/AllPermission;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1798
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 1800
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :goto_0
    return v0

    .line 1799
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1800
    .local v1, "ex":Ljava/lang/SecurityException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method isInstalledFont(Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    sget-boolean v4, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-eqz v4, :cond_1

    .line 740
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\windows\\fonts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 741
    const/4 v4, 0x1

    move v0, v4

    .line 757
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    return v0

    .line 743
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 744
    .local v3, "f":Ljava/io/File;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 756
    .local v2, "fileKey":Ljava/lang/String;
    :goto_1
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/font/PrismFontFactory;->getFullNameToFileMap()Ljava/util/HashMap;

    move-result-object v4

    .line 757
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFactory;->fileToFontMap:Ljava/util/HashMap;

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_0

    .line 746
    .end local v2    # "fileKey":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    :cond_1
    sget-boolean v4, Lcom/sun/javafx/font/PrismFontFactory;->isMacOSX:Z

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/library/fonts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 749
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 751
    :cond_2
    new-instance v4, Ljava/io/File;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 753
    .restart local v3    # "f":Ljava/io/File;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .restart local v2    # "fileKey":Ljava/lang/String;
    goto :goto_1

    .line 757
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public isLCDTextSupported()Z
    .locals 2

    .prologue
    .line 1359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->lcdEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    return v0
.end method

.method public isPlatformFont(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 1364
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 1371
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    return v0

    .line 1366
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1367
    .local v2, "lcName":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/font/LogicalFont;->isLogicalFont(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1368
    :cond_1
    move-object v4, v2

    const-string v5, "lucida sans"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1369
    :cond_2
    const-string v4, "System"

    invoke-static {v4}, Lcom/sun/javafx/font/PrismFontFactory;->getSystemFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1370
    .local v3, "systemFamily":Ljava/lang/String;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1371
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public loadEmbeddedFont(Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/sun/javafx/font/PGFont;
    .locals 15

    .prologue
    .line 1439
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "fontStream":Ljava/io/InputStream;
    move/from16 v3, p3

    .local v3, "size":F
    move/from16 v4, p4

    .local v4, "register":Z
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/font/PrismFontFactory;->hasPermission()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1440
    move-object v10, v0

    const-string v11, "System Regular"

    move v12, v3

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/font/PrismFontFactory;->createFont(Ljava/lang/String;F)Lcom/sun/javafx/font/PGFont;

    move-result-object v10

    move-object v0, v10

    .line 1463
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    return-object v0

    .line 1442
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter;->hasTempPermission()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1443
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/font/PrismFontFactory;->loadEmbeddedFont0(Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/sun/javafx/font/PGFont;

    move-result-object v10

    move-object v0, v10

    goto :goto_0

    .line 1449
    :cond_1
    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->getTracker()Lcom/sun/javafx/font/FontFileWriter$FontTracker;

    move-result-object v10

    move-object v5, v10

    .line 1450
    .local v5, "tracker":Lcom/sun/javafx/font/FontFileWriter$FontTracker;
    const/4 v10, 0x0

    move v6, v10

    .line 1452
    .local v6, "acquired":Z
    move-object v10, v5

    :try_start_0
    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->acquirePermit()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    move v6, v10

    .line 1453
    move v10, v6

    if-nez v10, :cond_3

    .line 1455
    const/4 v10, 0x0

    move-object v7, v10

    .line 1462
    move v10, v6

    if-eqz v10, :cond_2

    .line 1463
    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->releasePermit()V

    :cond_2
    move-object v10, v7

    move-object v0, v10

    goto :goto_0

    .line 1457
    :cond_3
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    :try_start_1
    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/font/PrismFontFactory;->loadEmbeddedFont0(Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/sun/javafx/font/PGFont;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    move-object v7, v10

    .line 1462
    move v10, v6

    if-eqz v10, :cond_4

    .line 1463
    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->releasePermit()V

    :cond_4
    move-object v10, v7

    move-object v0, v10

    goto :goto_0

    .line 1458
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 1460
    .local v7, "e":Ljava/lang/InterruptedException;
    const/4 v10, 0x0

    move-object v8, v10

    .line 1462
    move v10, v6

    if-eqz v10, :cond_5

    .line 1463
    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->releasePermit()V

    :cond_5
    move-object v10, v8

    move-object v0, v10

    goto :goto_0

    .line 1462
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move v10, v6

    if-eqz v10, :cond_6

    .line 1463
    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileWriter$FontTracker;->releasePermit()V

    :cond_6
    move-object v10, v9

    throw v10
.end method

.method public loadEmbeddedFont(Ljava/lang/String;Ljava/lang/String;FZ)Lcom/sun/javafx/font/PGFont;
    .locals 13

    .prologue
    .line 1543
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "path":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "size":F
    move/from16 v4, p4

    .local v4, "register":Z
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/font/PrismFontFactory;->hasPermission()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1544
    move-object v6, v0

    const-string v7, "System Regular"

    move v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/font/PrismFontFactory;->createFont(Ljava/lang/String;F)Lcom/sun/javafx/font/PGFont;

    move-result-object v6

    move-object v0, v6

    .line 1552
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :goto_0
    return-object v0

    .line 1546
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/font/PrismFontFactory;->addFileCloserHook()V

    .line 1547
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/font/PrismFontFactory;->loadEmbeddedFont(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v6

    move-object v5, v6

    .line 1548
    .local v5, "fr":Lcom/sun/javafx/font/FontResource;
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 1549
    move v6, v3

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getSystemFontSize()F

    move-result v6

    move v3, v6

    .line 1550
    :cond_1
    new-instance v6, Lcom/sun/javafx/font/PrismFont;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    move-object v9, v5

    invoke-interface {v9}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v9

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/font/PrismFont;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;F)V

    move-object v0, v6

    goto :goto_0

    .line 1552
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method populateFontFileNameMapGeneric(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 1859
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "fontDir":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 1860
    .local v2, "dir":Ljava/io/File;
    const/4 v8, 0x0

    move-object v3, v8

    .line 1862
    .local v3, "files":[Ljava/lang/String;
    move-object v8, v2

    :try_start_0
    invoke-static {v8}, Lcom/sun/javafx/font/PrismFontFactory$$Lambda$3;->lambdaFactory$(Ljava/io/File;)Ljava/security/PrivilegedExceptionAction;

    move-result-object v8

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v8

    .line 1866
    .line 1868
    :goto_0
    move-object v8, v3

    if-nez v8, :cond_0

    .line 1869
    .line 1899
    :goto_1
    return-void

    .line 1865
    :catch_0
    move-exception v8

    move-object v4, v8

    goto :goto_0

    .line 1872
    :cond_0
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_2
    move v8, v4

    move-object v9, v3

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 1874
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    move v10, v4

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 1877
    .local v5, "path":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->registerEmbeddedFont(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1879
    .line 1872
    .end local v5    # "path":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1882
    .restart local v5    # "path":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    move v6, v8

    .line 1883
    .local v6, "index":I
    move-object v8, v0

    move-object v9, v5

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;I)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v8

    move-object v7, v8

    .line 1884
    .local v7, "fr":Lcom/sun/javafx/font/PrismFontFile;
    move-object v8, v7

    if-nez v8, :cond_2

    .line 1885
    goto :goto_3

    .line 1887
    :cond_2
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->addToMaps(Lcom/sun/javafx/font/PrismFontFile;)V

    .line 1888
    :goto_4
    move v8, v6

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/font/PrismFontFile;->getFontCount()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1889
    move-object v8, v0

    move-object v9, v5

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/font/PrismFontFactory;->createFontResource(Ljava/lang/String;I)Lcom/sun/javafx/font/PrismFontFile;

    move-result-object v8

    move-object v7, v8

    .line 1890
    move-object v8, v7

    if-nez v8, :cond_4

    .line 1891
    .line 1897
    :cond_3
    goto :goto_3

    .line 1893
    :cond_4
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->addToMaps(Lcom/sun/javafx/font/PrismFontFile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1895
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v7    # "fr":Lcom/sun/javafx/font/PrismFontFile;
    :catch_1
    move-exception v8

    move-object v5, v8

    goto :goto_3

    .line 1899
    :cond_5
    goto :goto_1
.end method

.method protected registerEmbeddedFont(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1582
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    return v0
.end method

.method declared-synchronized removeTmpFont(Ljava/lang/ref/WeakReference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/PrismFontFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, p1

    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/PrismFontFile;>;"
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/font/PrismFontFactory;->tmpFonts:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 398
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/PrismFontFactory;->tmpFonts:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 400
    :cond_0
    monitor-exit v4

    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    throw v0
.end method

.method public test_getNumEmbeddedFonts()I
    .locals 2

    .prologue
    .line 1588
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFontFactory;->numEmbeddedFonts:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory;
    return v0
.end method
