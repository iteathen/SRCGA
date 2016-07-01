.class public Lcom/sun/javafx/application/LauncherImpl;
.super Ljava/lang/Object;
.source "LauncherImpl.java"


# static fields
.field public static final LAUNCH_MODE_CLASS:Ljava/lang/String; = "LM_CLASS"

.field public static final LAUNCH_MODE_JAR:Ljava/lang/String; = "LM_JAR"

.field private static final MF_JAVAFX_ARGUMENT_PREFIX:Ljava/lang/String; = "JavaFX-Argument-"

.field private static final MF_JAVAFX_CLASS_PATH:Ljava/lang/String; = "JavaFX-Class-Path"

.field private static final MF_JAVAFX_FEATURE_PROXY:Ljava/lang/String; = "JavaFX-Feature-Proxy"

.field private static final MF_JAVAFX_MAIN:Ljava/lang/String; = "JavaFX-Application-Class"

.field private static final MF_JAVAFX_PARAMETER_NAME_PREFIX:Ljava/lang/String; = "JavaFX-Parameter-Name-"

.field private static final MF_JAVAFX_PARAMETER_VALUE_PREFIX:Ljava/lang/String; = "JavaFX-Parameter-Value-"

.field private static final MF_JAVAFX_PRELOADER:Ljava/lang/String; = "JavaFX-Preloader-Class"

.field private static final MF_MAIN_CLASS:Ljava/lang/String; = "Main-Class"

.field private static volatile constructorError:Ljava/lang/Throwable;

.field private static currentPreloader:Ljavafx/application/Preloader;

.field private static volatile error:Z

.field private static volatile initError:Ljava/lang/Throwable;

.field private static launchCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile launchException:Ljava/lang/RuntimeException;

.field private static notifyMethod:Ljava/lang/reflect/Method;

.field private static volatile pConstructorError:Ljava/lang/Throwable;

.field private static volatile pInitError:Ljava/lang/Throwable;

.field private static volatile pStartError:Ljava/lang/Throwable;

.field private static volatile pStopError:Ljava/lang/Throwable;

.field private static savedMainCcl:Ljava/lang/ClassLoader;

.field private static savedPreloaderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Preloader;",
            ">;"
        }
    .end annotation
.end field

.field private static final simulateSlowProgress:Z

.field private static volatile startError:Ljava/lang/Throwable;

.field private static volatile stopError:Ljava/lang/Throwable;

.field private static final toolkitStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final trace:Z

.field private static verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->launchCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->toolkitStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->savedPreloaderClass:Ljava/lang/Class;

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->savedMainCcl:Ljava/lang/ClassLoader;

    .line 681
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    .line 682
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->pConstructorError:Ljava/lang/Throwable;

    .line 683
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->pInitError:Ljava/lang/Throwable;

    .line 684
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->pStartError:Ljava/lang/Throwable;

    .line 685
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->pStopError:Ljava/lang/Throwable;

    .line 686
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->constructorError:Ljava/lang/Throwable;

    .line 687
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->initError:Ljava/lang/Throwable;

    .line 688
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->startError:Ljava/lang/Throwable;

    .line 689
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->stopError:Ljava/lang/Throwable;

    .line 978
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/LauncherImpl;->notifyMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 1011
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/LauncherImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1013
    new-instance v1, Ljava/lang/InternalError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method private static varargs abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "cause":Ljava/lang/Throwable;
    move-object v1, p1

    .local v1, "fmt":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 630
    .local v3, "msg":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 631
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 641
    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 642
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication$136()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication$137(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$lambda$10(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl;->lambda$notifyStateChange$146(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V

    return-void
.end method

.method static synthetic access$lambda$11(Ljavafx/application/Preloader;D)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl;->lambda$notifyProgress$147(Ljavafx/application/Preloader;D)V

    return-void
.end method

.method static synthetic access$lambda$12(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl;->lambda$notifyError$148(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method static synthetic access$lambda$13(Ljavafx/application/Preloader$PreloaderNotification;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/LauncherImpl;->lambda$notifyCurrentPreloader$149(Ljavafx/application/Preloader$PreloaderNotification;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplicationWithArgs$138(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/LauncherImpl;->lambda$startToolkit$139(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljava/lang/ClassLoader;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$140(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$141(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$6(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$142(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method static synthetic access$lambda$7(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$143(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$8(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$144(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)V

    return-void
.end method

.method static synthetic access$lambda$9(Ljavafx/application/Application;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/LauncherImpl;->lambda$launchApplication1$145(Ljavafx/application/Application;)V

    return-void
.end method

.method private static decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "inp":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .end local v0    # "inp":Ljava/lang/String;
    return-object v0
.end method

.method private static fileToURL(Ljava/io/File;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "file":Ljava/io/File;
    return-object v0
.end method

.method private static getAppArguments(Ljava/util/jar/Attributes;)[Ljava/lang/String;
    .locals 13

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "attrs":Ljava/util/jar/Attributes;
    new-instance v8, Ljava/util/LinkedList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v8

    .line 598
    .local v1, "args":Ljava/util/List;
    const/4 v8, 0x1

    move v2, v8

    .line 599
    .local v2, "idx":I
    :try_start_0
    const-string v8, "JavaFX-Argument-"

    move-object v3, v8

    .line 600
    .local v3, "argNamePrefix":Ljava/lang/String;
    :goto_0
    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 601
    move-object v8, v1

    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/javafx/application/LauncherImpl;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    :cond_0
    const-string v8, "JavaFX-Parameter-Name-"

    move-object v4, v8

    .line 606
    .local v4, "paramNamePrefix":Ljava/lang/String;
    const-string v8, "JavaFX-Parameter-Value-"

    move-object v5, v8

    .line 607
    .local v5, "paramValuePrefix":Ljava/lang/String;
    const/4 v8, 0x1

    move v2, v8

    .line 608
    :goto_1
    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 609
    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/javafx/application/LauncherImpl;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 610
    .local v6, "k":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v7, v8

    .line 611
    .local v7, "v":Ljava/lang/String;
    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 612
    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/javafx/application/LauncherImpl;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 614
    :cond_1
    move-object v8, v1

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    if-eqz v10, :cond_2

    move-object v10, v7

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 615
    add-int/lit8 v2, v2, 0x1

    .line 616
    goto/16 :goto_1

    .line 614
    :cond_2
    const-string v10, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 622
    .line 624
    .end local v2    # "idx":I
    .end local v3    # "argNamePrefix":Ljava/lang/String;
    .end local v4    # "paramNamePrefix":Ljava/lang/String;
    .end local v5    # "paramValuePrefix":Ljava/lang/String;
    .end local v6    # "k":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    :cond_3
    :goto_3
    move-object v8, v1

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    .end local v0    # "attrs":Ljava/util/jar/Attributes;
    return-object v0

    .line 617
    .restart local v0    # "attrs":Ljava/util/jar/Attributes;
    .restart local v2    # "idx":I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 618
    .local v2, "ioe":Ljava/io/IOException;
    sget-boolean v8, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v8, :cond_4

    .line 619
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Failed to extract application parameters"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    :cond_4
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private static getJarAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .locals 14

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "jarPath":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v1, v7

    .line 647
    .local v1, "jarFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v7, Ljava/util/jar/JarFile;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    .line 648
    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v7

    move-object v2, v7

    .line 649
    .local v2, "manifest":Ljava/util/jar/Manifest;
    move-object v7, v2

    if-nez v7, :cond_0

    .line 650
    const/4 v7, 0x0

    const-string v8, "No manifest in jar file %1$s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v3, v7

    .line 657
    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 658
    :goto_0
    move-object v7, v3

    move-object v0, v7

    .line 660
    .end local v0    # "jarPath":Ljava/lang/String;
    .end local v2    # "manifest":Ljava/util/jar/Manifest;
    :goto_1
    return-object v0

    .line 658
    .restart local v0    # "jarPath":Ljava/lang/String;
    .restart local v2    # "manifest":Ljava/util/jar/Manifest;
    :catch_0
    move-exception v7

    move-object v4, v7

    goto :goto_0

    .line 653
    .end local v2    # "manifest":Ljava/util/jar/Manifest;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 654
    .local v2, "ioe":Ljava/io/IOException;
    move-object v7, v2

    :try_start_2
    const-string v8, "Error launching jar file %1%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    move-object v7, v1

    :try_start_3
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 658
    .line 660
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_2
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1

    .line 658
    .restart local v2    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 659
    goto :goto_2

    .line 656
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    move-object v5, v7

    .line 657
    move-object v7, v1

    :try_start_4
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 658
    :goto_3
    move-object v7, v5

    throw v7

    :catch_3
    move-exception v7

    move-object v6, v7

    goto :goto_3
.end method

.method private static synthetic lambda$launchApplication$136()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "javafx.preloader"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$launchApplication$137(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 11

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "appClass":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "preloaderClass":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/String;
    move-object v3, p3

    .local v3, "launchLatch":Ljava/util/concurrent/CountDownLatch;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    :try_start_0
    invoke-static {v6, v7, v8}, Lcom/sun/javafx/application/LauncherImpl;->launchApplication1(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 193
    .line 194
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 184
    .local v4, "rte":Ljava/lang/RuntimeException;
    move-object v6, v4

    :try_start_1
    sput-object v6, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 193
    goto :goto_0

    .line 185
    .end local v4    # "rte":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 186
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Application launch exception"

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v6, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 193
    goto :goto_0

    .line 188
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v4, v6

    .line 189
    .local v4, "err":Ljava/lang/Error;
    :try_start_3
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Application launch error"

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v6, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 193
    goto :goto_0

    .line 192
    .end local v4    # "err":Ljava/lang/Error;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object v6, v5

    throw v6
.end method

.method private static synthetic lambda$launchApplication1$140(Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "ccl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 709
    return-void
.end method

.method private static synthetic lambda$launchApplication1$141(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "preloaderClass":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "pldr":Ljava/util/concurrent/atomic/AtomicReference;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/String;
    move-object v4, v0

    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v3, v4

    .line 751
    .local v3, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljavafx/application/Preloader;>;"
    move-object v4, v1

    move-object v5, v3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 753
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/application/Application;

    new-instance v5, Lcom/sun/javafx/application/ParametersImpl;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/application/ParametersImpl;-><init>([Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/sun/javafx/application/ParametersImpl;->registerParameters(Ljavafx/application/Application;Ljavafx/application/Application$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .line 759
    .end local v3    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljavafx/application/Preloader;>;"
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 755
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Exception in Preloader constructor"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 756
    move-object v4, v3

    sput-object v4, Lcom/sun/javafx/application/LauncherImpl;->pConstructorError:Ljava/lang/Throwable;

    .line 757
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_0
.end method

.method private static synthetic lambda$launchApplication1$142(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 5

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "pStartCalled":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object v2, v0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 783
    new-instance v2, Ljavafx/stage/Stage;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/stage/Stage;-><init>()V

    move-object v1, v2

    .line 784
    .local v1, "primaryStage":Ljavafx/stage/Stage;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/stage/Stage;->impl_setPrimary(Z)V

    .line 785
    sget-object v2, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/application/Preloader;->start(Ljavafx/stage/Stage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    .line 791
    .end local v1    # "primaryStage":Ljavafx/stage/Stage;
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 787
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Exception in Preloader start method"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 788
    move-object v2, v1

    sput-object v2, Lcom/sun/javafx/application/LauncherImpl;->pStartError:Ljava/lang/Throwable;

    .line 789
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_0
.end method

.method private static synthetic lambda$launchApplication1$143(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 818
    move-object v0, p0

    .local v0, "appClass":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "app":Ljava/util/concurrent/atomic/AtomicReference;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/String;
    move-object v4, v0

    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v3, v4

    .line 819
    .local v3, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljavafx/application/Application;>;"
    move-object v4, v1

    move-object v5, v3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 821
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/application/Application;

    new-instance v5, Lcom/sun/javafx/application/ParametersImpl;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/application/ParametersImpl;-><init>([Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/sun/javafx/application/ParametersImpl;->registerParameters(Ljavafx/application/Application;Ljavafx/application/Application$Parameters;)V

    .line 822
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/application/PlatformImpl;->setApplicationName(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .line 828
    .end local v3    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljavafx/application/Application;>;"
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 824
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Exception in Application constructor"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 825
    move-object v4, v3

    sput-object v4, Lcom/sun/javafx/application/LauncherImpl;->constructorError:Ljava/lang/Throwable;

    .line 826
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_0
.end method

.method private static synthetic lambda$launchApplication1$144(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)V
    .locals 6

    .prologue
    .line 858
    move-object v0, p0

    .local v0, "startCalled":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object v1, p1

    .local v1, "theApp":Ljavafx/application/Application;
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 861
    new-instance v3, Ljavafx/stage/Stage;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/stage/Stage;-><init>()V

    move-object v2, v3

    .line 862
    .local v2, "primaryStage":Ljavafx/stage/Stage;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->impl_setPrimary(Z)V

    .line 863
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/application/Application;->start(Ljavafx/stage/Stage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    .line 869
    .end local v2    # "primaryStage":Ljavafx/stage/Stage;
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 865
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Exception in Application start method"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 866
    move-object v3, v2

    sput-object v3, Lcom/sun/javafx/application/LauncherImpl;->startError:Ljava/lang/Throwable;

    .line 867
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_0
.end method

.method private static synthetic lambda$launchApplication1$145(Ljavafx/application/Application;)V
    .locals 4

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "theApp":Ljavafx/application/Application;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljavafx/application/Application;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .line 888
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 884
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Exception in Application stop method"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 885
    move-object v2, v1

    sput-object v2, Lcom/sun/javafx/application/LauncherImpl;->stopError:Ljava/lang/Throwable;

    .line 886
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto :goto_0
.end method

.method private static synthetic lambda$launchApplicationWithArgs$138(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 14

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "mainClassName":Ljava/lang/String;
    move-object v1, p1

    .local v1, "loader":Ljava/lang/ClassLoader;
    move-object/from16 v2, p2

    .local v2, "tmpClassRef":Ljava/util/concurrent/atomic/AtomicReference;
    move-object/from16 v3, p3

    .local v3, "preloaderClassName":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "preClassRef":Ljava/util/concurrent/atomic/AtomicReference;
    const/4 v7, 0x0

    move-object v5, v7

    .line 352
    .local v5, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v0

    const/4 v8, 0x1

    move-object v9, v1

    :try_start_0
    invoke-static {v7, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v5, v7

    .line 355
    .line 356
    :goto_0
    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 358
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 360
    move-object v7, v3

    const/4 v8, 0x1

    move-object v9, v1

    :try_start_1
    invoke-static {v7, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    move-object v5, v7

    .line 363
    .line 365
    :goto_1
    const-class v7, Ljavafx/application/Preloader;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 366
    const/4 v7, 0x0

    const-string v8, "JavaFX preloader class %1$s does not extend javafx.application.Preloader"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :cond_0
    move-object v7, v4

    move-object v8, v5

    const-class v9, Ljavafx/application/Preloader;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 370
    :cond_1
    return-void

    .line 353
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 354
    .local v6, "cnfe":Ljava/lang/ClassNotFoundException;
    move-object v7, v6

    const-string v8, "Missing JavaFX application class %1$s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    .end local v6    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 362
    .restart local v6    # "cnfe":Ljava/lang/ClassNotFoundException;
    move-object v7, v6

    const-string v8, "Missing JavaFX preloader class %1$s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v3

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static synthetic lambda$notifyCurrentPreloader$149(Ljavafx/application/Preloader$PreloaderNotification;)V
    .locals 3

    .prologue
    .line 972
    move-object v0, p0

    .local v0, "pe":Ljavafx/application/Preloader$PreloaderNotification;
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v1, :cond_0

    .line 973
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljavafx/application/Preloader;->handleApplicationNotification(Ljavafx/application/Preloader$PreloaderNotification;)V

    .line 975
    :cond_0
    return-void
.end method

.method private static synthetic lambda$notifyError$148(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 11

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "msg":Ljava/lang/String;
    move-object v1, p1

    .local v1, "constructorError":Ljava/lang/Throwable;
    move-object v2, p2

    .local v2, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    sget-object v5, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v5, :cond_0

    .line 958
    :try_start_0
    new-instance v5, Ljavafx/application/Preloader$ErrorNotification;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljavafx/application/Preloader$ErrorNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v5

    .line 959
    .local v3, "evt":Ljavafx/application/Preloader$ErrorNotification;
    sget-object v5, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/application/Preloader;->handleErrorNotification(Ljavafx/application/Preloader$ErrorNotification;)Z

    move-result v5

    move v4, v5

    .line 960
    .local v4, "rval":Z
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    .line 965
    .end local v3    # "evt":Ljavafx/application/Preloader$ErrorNotification;
    .end local v4    # "rval":Z
    :cond_0
    :goto_0
    return-void

    .line 961
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 962
    .local v3, "t":Ljava/lang/Throwable;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static synthetic lambda$notifyProgress$147(Ljavafx/application/Preloader;D)V
    .locals 9

    .prologue
    .line 949
    move-object v0, p0

    .local v0, "preloader":Ljavafx/application/Preloader;
    move-wide v1, p1

    .local v1, "d":D
    move-object v3, v0

    new-instance v4, Ljavafx/application/Preloader$ProgressNotification;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljavafx/application/Preloader$ProgressNotification;-><init>(D)V

    invoke-virtual {v3, v4}, Ljavafx/application/Preloader;->handleProgressNotification(Ljavafx/application/Preloader$ProgressNotification;)V

    return-void
.end method

.method private static synthetic lambda$notifyStateChange$146(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V
    .locals 9

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "preloader":Ljavafx/application/Preloader;
    move-object v1, p1

    .local v1, "type":Ljavafx/application/Preloader$StateChangeNotification$Type;
    move-object v2, p2

    .local v2, "app":Ljavafx/application/Application;
    move-object v3, v0

    new-instance v4, Ljavafx/application/Preloader$StateChangeNotification;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljavafx/application/Preloader$StateChangeNotification;-><init>(Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V

    invoke-virtual {v3, v4}, Ljavafx/application/Preloader;->handleStateChangeNotification(Ljavafx/application/Preloader$StateChangeNotification;)V

    return-void
.end method

.method private static synthetic lambda$startToolkit$139(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    .line 675
    move-object v0, p0

    .local v0, "startupLatch":Ljava/util/concurrent/CountDownLatch;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static launchApplication(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Application;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Preloader;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Application;>;"
    move-object v1, p1

    .local v1, "preloaderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Preloader;>;"
    move-object v2, p2

    .local v2, "args":[Ljava/lang/String;
    sget-object v6, Lcom/sun/javafx/application/LauncherImpl;->launchCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Application launch must not be called more than once"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 165
    :cond_0
    const-class v6, Ljavafx/application/Application;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 166
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a subclass of javafx.application.Application"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 170
    :cond_1
    move-object v6, v1

    if-eqz v6, :cond_2

    const-class v6, Ljavafx/application/Preloader;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 171
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a subclass of javafx.application.Preloader"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 179
    :cond_2
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v3, v6

    .line 180
    .local v3, "launchLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v6, Ljava/lang/Thread;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-static {v8, v9, v10, v11}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;->lambdaFactory$(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v4, v6

    .line 195
    .local v4, "launcherThread":Ljava/lang/Thread;
    move-object v6, v4

    const-string v7, "JavaFX-Launcher"

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 196
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 200
    move-object v6, v3

    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 205
    sget-object v6, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;

    if-eqz v6, :cond_3

    .line 206
    sget-object v6, Lcom/sun/javafx/application/LauncherImpl;->launchException:Ljava/lang/RuntimeException;

    throw v6

    .line 201
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 202
    .local v5, "ex":Ljava/lang/InterruptedException;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Unexpected exception: "

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 208
    .end local v5    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    return-void
.end method

.method public static launchApplication(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Application;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Application;>;"
    move-object v1, p1

    .local v1, "args":[Ljava/lang/String;
    sget-object v5, Lcom/sun/javafx/application/LauncherImpl;->savedPreloaderClass:Ljava/lang/Class;

    move-object v2, v5

    .line 128
    .local v2, "preloaderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Preloader;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    .line 129
    invoke-static {}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v5

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 131
    .local v3, "preloaderByProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 133
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v0

    .line 134
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 133
    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v2, v5

    .line 139
    .line 143
    .end local v3    # "preloaderByProperty":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/application/LauncherImpl;->launchApplication(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 144
    return-void

    .line 135
    .restart local v3    # "preloaderByProperty":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 136
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load preloader class \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', continuing without preloader."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v5

    .line 138
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static launchApplication(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 226
    move-object/from16 v0, p0

    .local v0, "launchName":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "launchMode":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "args":[Ljava/lang/String;
    sget-boolean v10, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v10, :cond_0

    .line 227
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Java 8 launchApplication method: launchMode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    :cond_0
    const/4 v10, 0x0

    move-object v3, v10

    .line 237
    .local v3, "mainClassName":Ljava/lang/String;
    const/4 v10, 0x0

    move-object v4, v10

    .line 238
    .local v4, "preloaderClassName":Ljava/lang/String;
    move-object v10, v2

    move-object v5, v10

    .line 239
    .local v5, "appArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    move-object v6, v10

    .line 241
    .local v6, "appLoader":Ljava/lang/ClassLoader;
    const-string v10, "javafx.verbose"

    invoke-static {v10}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    .line 243
    move-object v10, v1

    const-string v11, "LM_JAR"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 244
    move-object v10, v0

    invoke-static {v10}, Lcom/sun/javafx/application/LauncherImpl;->getJarAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v10

    move-object v7, v10

    .line 245
    .local v7, "jarAttrs":Ljava/util/jar/Attributes;
    move-object v10, v7

    if-nez v10, :cond_1

    .line 246
    const/4 v10, 0x0

    const-string v11, "Can\'t get manifest attributes from jar"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_1
    move-object v10, v7

    const-string v11, "JavaFX-Class-Path"

    invoke-virtual {v10, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 253
    .local v8, "fxClassPath":Ljava/lang/String;
    move-object v10, v8

    if-eqz v10, :cond_2

    .line 254
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_8

    .line 255
    const/4 v10, 0x0

    move-object v8, v10

    .line 272
    :cond_2
    :goto_0
    move-object v10, v7

    const-string v11, "JavaFX-Feature-Proxy"

    invoke-virtual {v10, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 273
    .local v9, "proxySetting":Ljava/lang/String;
    move-object v10, v9

    if-eqz v10, :cond_3

    const-string v10, "auto"

    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 274
    invoke-static {}, Lcom/sun/javafx/application/LauncherImpl;->trySetAutoProxy()V

    .line 278
    :cond_3
    move-object v10, v2

    array-length v10, v10

    if-nez v10, :cond_4

    .line 279
    move-object v10, v7

    invoke-static {v10}, Lcom/sun/javafx/application/LauncherImpl;->getAppArguments(Ljava/util/jar/Attributes;)[Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 283
    :cond_4
    move-object v10, v7

    const-string v11, "JavaFX-Application-Class"

    invoke-virtual {v10, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 284
    move-object v10, v3

    if-nez v10, :cond_5

    .line 286
    move-object v10, v7

    const-string v11, "Main-Class"

    invoke-virtual {v10, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 287
    move-object v10, v3

    if-nez v10, :cond_5

    .line 289
    const/4 v10, 0x0

    const-string v11, "JavaFX jar manifest requires a valid JavaFX-Appliation-Class or Main-Class entry"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_5
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 295
    move-object v10, v7

    const-string v11, "JavaFX-Preloader-Class"

    invoke-virtual {v10, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 296
    move-object v10, v4

    if-eqz v10, :cond_6

    .line 297
    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 299
    .line 307
    .end local v7    # "jarAttrs":Ljava/util/jar/Attributes;
    .end local v8    # "fxClassPath":Ljava/lang/String;
    .end local v9    # "proxySetting":Ljava/lang/String;
    :cond_6
    :goto_1
    move-object v10, v3

    if-nez v10, :cond_7

    .line 308
    const/4 v10, 0x0

    const-string v11, "No main JavaFX class to launch"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :cond_7
    move-object v10, v6

    if-eqz v10, :cond_c

    .line 315
    move-object v10, v6

    :try_start_0
    const-class v11, Lcom/sun/javafx/application/LauncherImpl;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    move-object v7, v10

    .line 318
    .local v7, "launcherClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v10, v7

    const-string v11, "launchApplicationWithArgs"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x2

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    .line 319
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v14

    .line 318
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v8, v10

    .line 322
    .local v8, "lawa":Ljava/lang/reflect/Method;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 323
    move-object v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v3

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    move-object v15, v4

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x2

    move-object v15, v5

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 326
    .line 330
    .end local v7    # "launcherClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "lawa":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 257
    .local v7, "jarAttrs":Ljava/util/jar/Attributes;
    .local v8, "fxClassPath":Ljava/lang/String;
    :cond_8
    sget-boolean v10, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v10, :cond_9

    .line 258
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "WARNING: Application jar uses deprecated JavaFX-Class-Path attribute. Please use Class-Path instead."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    :cond_9
    new-instance v10, Ljava/io/File;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/application/LauncherImpl;->setupJavaFXClassLoader(Ljava/io/File;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v10

    move-object v6, v10

    goto/16 :goto_0

    .line 299
    .end local v7    # "jarAttrs":Ljava/util/jar/Attributes;
    .end local v8    # "fxClassPath":Ljava/lang/String;
    :cond_a
    move-object v10, v1

    const-string v11, "LM_CLASS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 300
    move-object v10, v0

    move-object v3, v10

    .line 301
    const-string v10, "javafx.preloader"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    goto/16 :goto_1

    .line 303
    :cond_b
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "The launchMode argument must be one of LM_CLASS or LM_JAR"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v11, "Invalid launch mode: %1$s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v1

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 324
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 325
    .local v7, "e":Ljava/lang/Exception;
    move-object v10, v7

    const-string v11, "Exception while launching application"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    goto :goto_2

    .line 328
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_c
    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/application/LauncherImpl;->launchApplicationWithArgs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static launchApplication1(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Application;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljavafx/application/Preloader;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 695
    move-object/from16 v3, p0

    .local v3, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Application;>;"
    move-object/from16 v4, p1

    .local v4, "preloaderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Preloader;>;"
    move-object/from16 v5, p2

    .local v5, "args":[Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/application/LauncherImpl;->startToolkit()V

    .line 697
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->savedMainCcl:Ljava/lang/ClassLoader;

    if-eqz v19, :cond_0

    .line 705
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    move-object/from16 v6, v19

    .line 706
    .local v6, "ccl":Ljava/lang/ClassLoader;
    move-object/from16 v19, v6

    if-eqz v19, :cond_0

    move-object/from16 v19, v6

    sget-object v20, Lcom/sun/javafx/application/LauncherImpl;->savedMainCcl:Ljava/lang/ClassLoader;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 707
    move-object/from16 v19, v6

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$5;->lambdaFactory$(Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 713
    .end local v6    # "ccl":Ljava/lang/ClassLoader;
    :cond_0
    new-instance v19, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v6, v19

    .line 714
    .local v6, "pStartCalled":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v19, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v7, v19

    .line 715
    .local v7, "startCalled":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v19, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v8, v19

    .line 716
    .local v8, "exitCalled":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v19, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v9, v19

    .line 717
    .local v9, "pExitCalled":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v19, Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v10, v19

    .line 718
    .local v10, "shutdownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v19, Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v11, v19

    .line 720
    .local v11, "pShutdownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v19, Lcom/sun/javafx/application/LauncherImpl$1;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v6

    move-object/from16 v24, v11

    move-object/from16 v25, v8

    invoke-direct/range {v20 .. v25}, Lcom/sun/javafx/application/LauncherImpl$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    move-object/from16 v12, v19

    .line 740
    .local v12, "listener":Lcom/sun/javafx/application/PlatformImpl$FinishListener;
    move-object/from16 v19, v12

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/PlatformImpl;->addListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V

    .line 743
    :try_start_0
    new-instance v19, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object/from16 v13, v19

    .line 744
    .local v13, "pldr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljavafx/application/Preloader;>;"
    move-object/from16 v19, v4

    if-eqz v19, :cond_1

    .line 748
    move-object/from16 v19, v4

    move-object/from16 v20, v13

    move-object/from16 v21, v5

    invoke-static/range {v19 .. v21}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;->lambdaFactory$(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 761
    :cond_1
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/application/Preloader;

    sput-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    .line 764
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v19, :cond_2

    sget-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v19, :cond_2

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-nez v19, :cond_2

    .line 767
    :try_start_1
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    invoke-virtual/range {v19 .. v19}, Ljavafx/application/Preloader;->init()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    .line 776
    :cond_2
    :goto_0
    :try_start_2
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v19, :cond_3

    sget-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v19, :cond_3

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    if-nez v19, :cond_3

    .line 778
    move-object/from16 v19, v6

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$7;->lambdaFactory$(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 794
    sget-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v19, :cond_3

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    if-nez v19, :cond_3

    .line 795
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    const-wide/16 v20, 0x0

    invoke-static/range {v19 .. v21}, Lcom/sun/javafx/application/LauncherImpl;->notifyProgress(Ljavafx/application/Preloader;D)V

    .line 802
    :cond_3
    new-instance v19, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object/from16 v14, v19

    .line 803
    .local v14, "app":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljavafx/application/Application;>;"
    sget-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v19, :cond_5

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    if-nez v19, :cond_5

    .line 804
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v19, :cond_4

    .line 811
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v19 .. v21}, Lcom/sun/javafx/application/LauncherImpl;->notifyProgress(Ljavafx/application/Preloader;D)V

    .line 812
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    sget-object v20, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_LOAD:Ljavafx/application/Preloader$StateChangeNotification$Type;

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/sun/javafx/application/LauncherImpl;->notifyStateChange(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V

    .line 816
    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v20, v14

    move-object/from16 v21, v5

    invoke-static/range {v19 .. v21}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$8;->lambdaFactory$(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 830
    :cond_5
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/application/Application;

    move-object/from16 v15, v19

    .line 833
    .local v15, "theApp":Ljavafx/application/Application;
    sget-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v19, :cond_7

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    if-nez v19, :cond_7

    .line 834
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v19, :cond_6

    .line 835
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    sget-object v20, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_INIT:Ljavafx/application/Preloader$StateChangeNotification$Type;

    move-object/from16 v21, v15

    invoke-static/range {v19 .. v21}, Lcom/sun/javafx/application/LauncherImpl;->notifyStateChange(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 841
    :cond_6
    move-object/from16 v19, v15

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljavafx/application/Application;->init()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 846
    .line 850
    :cond_7
    :goto_1
    :try_start_4
    sget-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v19, :cond_9

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    if-nez v19, :cond_9

    .line 851
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    if-eqz v19, :cond_8

    .line 852
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->currentPreloader:Ljavafx/application/Preloader;

    sget-object v20, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_START:Ljavafx/application/Preloader$StateChangeNotification$Type;

    move-object/from16 v21, v15

    invoke-static/range {v19 .. v21}, Lcom/sun/javafx/application/LauncherImpl;->notifyStateChange(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V

    .line 856
    :cond_8
    move-object/from16 v19, v7

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v20}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$9;->lambdaFactory$(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 872
    :cond_9
    sget-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-nez v19, :cond_a

    .line 873
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 878
    :cond_a
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 880
    move-object/from16 v19, v15

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$10;->lambdaFactory$(Ljavafx/application/Application;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 891
    :cond_b
    sget-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-eqz v19, :cond_10

    .line 892
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->pConstructorError:Ljava/lang/Throwable;

    if-eqz v19, :cond_c

    .line 893
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to construct Preloader instance: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/sun/javafx/application/LauncherImpl;->pConstructorError:Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 927
    .end local v13    # "pldr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljavafx/application/Preloader;>;"
    .end local v14    # "app":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljavafx/application/Application;>;"
    .end local v15    # "theApp":Ljavafx/application/Application;
    :catchall_0
    move-exception v19

    move-object/from16 v17, v19

    move-object/from16 v19, v12

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/PlatformImpl;->removeListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V

    .line 931
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v19

    if-eqz v19, :cond_18

    const/16 v19, 0x1

    :goto_2
    move/from16 v18, v19

    .line 932
    .local v18, "isJavaws":Z
    sget-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-eqz v19, :cond_19

    move/from16 v19, v18

    if-eqz v19, :cond_19

    .line 933
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v20, "Workaround until RT-13281 is implemented: keep toolkit alive"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 937
    :goto_3
    move-object/from16 v19, v17

    throw v19

    .line 768
    .end local v18    # "isJavaws":Z
    .restart local v13    # "pldr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljavafx/application/Preloader;>;"
    :catch_0
    move-exception v19

    move-object/from16 v14, v19

    .line 769
    .local v14, "t":Ljava/lang/Throwable;
    :try_start_5
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v20, "Exception in Preloader init method"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 770
    move-object/from16 v19, v14

    sput-object v19, Lcom/sun/javafx/application/LauncherImpl;->pInitError:Ljava/lang/Throwable;

    .line 771
    const/16 v19, 0x1

    sput-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto/16 :goto_0

    .line 842
    .local v14, "app":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljavafx/application/Application;>;"
    .restart local v15    # "theApp":Ljavafx/application/Application;
    :catch_1
    move-exception v19

    move-object/from16 v16, v19

    .line 843
    .local v16, "t":Ljava/lang/Throwable;
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v20, "Exception in Application init method"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 844
    move-object/from16 v19, v16

    sput-object v19, Lcom/sun/javafx/application/LauncherImpl;->initError:Ljava/lang/Throwable;

    .line 845
    const/16 v19, 0x1

    sput-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    goto/16 :goto_1

    .line 895
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_c
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->pInitError:Ljava/lang/Throwable;

    if-eqz v19, :cond_d

    .line 896
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string v21, "Exception in Preloader init method"

    sget-object v22, Lcom/sun/javafx/application/LauncherImpl;->pInitError:Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 898
    :cond_d
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->pStartError:Ljava/lang/Throwable;

    if-eqz v19, :cond_e

    .line 899
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string v21, "Exception in Preloader start method"

    sget-object v22, Lcom/sun/javafx/application/LauncherImpl;->pStartError:Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 901
    :cond_e
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->pStopError:Ljava/lang/Throwable;

    if-eqz v19, :cond_f

    .line 902
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string v21, "Exception in Preloader stop method"

    sget-object v22, Lcom/sun/javafx/application/LauncherImpl;->pStopError:Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 904
    :cond_f
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->constructorError:Ljava/lang/Throwable;

    if-eqz v19, :cond_11

    .line 905
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to construct Application instance: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    .line 906
    .local v16, "msg":Ljava/lang/String;
    move-object/from16 v19, v16

    sget-object v20, Lcom/sun/javafx/application/LauncherImpl;->constructorError:Ljava/lang/Throwable;

    invoke-static/range {v19 .. v20}, Lcom/sun/javafx/application/LauncherImpl;->notifyError(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 907
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v16

    sget-object v22, Lcom/sun/javafx/application/LauncherImpl;->constructorError:Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 909
    .line 927
    .end local v16    # "msg":Ljava/lang/String;
    :cond_10
    :goto_4
    move-object/from16 v19, v12

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/application/PlatformImpl;->removeListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V

    .line 931
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v19

    if-eqz v19, :cond_16

    const/16 v19, 0x1

    :goto_5
    move/from16 v13, v19

    .line 932
    .local v13, "isJavaws":Z
    sget-boolean v19, Lcom/sun/javafx/application/LauncherImpl;->error:Z

    if-eqz v19, :cond_17

    move/from16 v19, v13

    if-eqz v19, :cond_17

    .line 933
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v20, "Workaround until RT-13281 is implemented: keep toolkit alive"

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 937
    .line 938
    :goto_6
    return-void

    .line 909
    .local v13, "pldr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljavafx/application/Preloader;>;"
    :cond_11
    :try_start_6
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->initError:Ljava/lang/Throwable;

    if-eqz v19, :cond_13

    .line 910
    const-string v19, "Exception in Application init method"

    move-object/from16 v16, v19

    .line 911
    .restart local v16    # "msg":Ljava/lang/String;
    move-object/from16 v19, v16

    sget-object v20, Lcom/sun/javafx/application/LauncherImpl;->initError:Ljava/lang/Throwable;

    invoke-static/range {v19 .. v20}, Lcom/sun/javafx/application/LauncherImpl;->notifyError(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 912
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v16

    sget-object v22, Lcom/sun/javafx/application/LauncherImpl;->initError:Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 914
    :cond_12
    goto :goto_4

    .end local v16    # "msg":Ljava/lang/String;
    :cond_13
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->startError:Ljava/lang/Throwable;

    if-eqz v19, :cond_15

    .line 915
    const-string v19, "Exception in Application start method"

    move-object/from16 v16, v19

    .line 916
    .restart local v16    # "msg":Ljava/lang/String;
    move-object/from16 v19, v16

    sget-object v20, Lcom/sun/javafx/application/LauncherImpl;->startError:Ljava/lang/Throwable;

    invoke-static/range {v19 .. v20}, Lcom/sun/javafx/application/LauncherImpl;->notifyError(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 917
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v16

    sget-object v22, Lcom/sun/javafx/application/LauncherImpl;->startError:Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 919
    :cond_14
    goto :goto_4

    .end local v16    # "msg":Ljava/lang/String;
    :cond_15
    sget-object v19, Lcom/sun/javafx/application/LauncherImpl;->stopError:Ljava/lang/Throwable;

    if-eqz v19, :cond_10

    .line 920
    const-string v19, "Exception in Application stop method"

    move-object/from16 v16, v19

    .line 921
    .restart local v16    # "msg":Ljava/lang/String;
    move-object/from16 v19, v16

    sget-object v20, Lcom/sun/javafx/application/LauncherImpl;->stopError:Ljava/lang/Throwable;

    invoke-static/range {v19 .. v20}, Lcom/sun/javafx/application/LauncherImpl;->notifyError(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 922
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v16

    sget-object v22, Lcom/sun/javafx/application/LauncherImpl;->stopError:Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 931
    .end local v16    # "msg":Ljava/lang/String;
    :cond_16
    const/16 v19, 0x0

    goto :goto_5

    .line 935
    .local v13, "isJavaws":Z
    :cond_17
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->tkExit()V

    goto :goto_6

    .line 931
    .end local v13    # "isJavaws":Z
    .end local v14    # "app":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljavafx/application/Application;>;"
    .end local v15    # "theApp":Ljavafx/application/Application;
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 935
    .restart local v18    # "isJavaws":Z
    :cond_19
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->tkExit()V

    goto/16 :goto_3
.end method

.method public static launchApplicationWithArgs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 337
    move-object/from16 v1, p0

    .local v1, "mainClassName":Ljava/lang/String;
    move-object/from16 v2, p1

    .local v2, "preloaderClassName":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "args":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sun/javafx/application/LauncherImpl;->startToolkit()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .line 343
    :goto_0
    const/4 v12, 0x0

    move-object v5, v12

    .line 344
    .local v5, "preClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Preloader;>;"
    const/4 v12, 0x0

    move-object v6, v12

    .line 346
    .local v6, "tempAppClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object v7, v12

    .line 347
    .local v7, "loader":Ljava/lang/ClassLoader;
    new-instance v12, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v8, v12

    .line 348
    .local v8, "tmpClassRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Class<*>;>;"
    new-instance v12, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v9, v12

    .line 349
    .local v9, "preClassRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Class<+Ljavafx/application/Preloader;>;>;"
    move-object v12, v1

    move-object v13, v7

    move-object v14, v8

    move-object v15, v2

    move-object/from16 v16, v9

    invoke-static/range {v12 .. v16}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->lambdaFactory$(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Runnable;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 371
    move-object v12, v9

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    move-object v5, v12

    .line 372
    move-object v12, v8

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    move-object v6, v12

    .line 376
    move-object v12, v5

    sput-object v12, Lcom/sun/javafx/application/LauncherImpl;->savedPreloaderClass:Ljava/lang/Class;

    .line 381
    const/4 v12, 0x0

    move-object v10, v12

    .line 383
    .local v10, "theEx":Ljava/lang/Exception;
    move-object v12, v6

    :try_start_1
    const-string v13, "main"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 384
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    aput-object v17, v15, v16

    .line 383
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object v11, v12

    .line 385
    .local v11, "mainMethod":Ljava/lang/reflect/Method;
    sget-boolean v12, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v12, :cond_0

    .line 386
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Calling main(String[]) method"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    sput-object v12, Lcom/sun/javafx/application/LauncherImpl;->savedMainCcl:Ljava/lang/ClassLoader;

    .line 389
    move-object v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v3

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    .line 390
    .line 410
    .end local v11    # "mainMethod":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 338
    .end local v5    # "preClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Preloader;>;"
    .end local v6    # "tempAppClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "loader":Ljava/lang/ClassLoader;
    .end local v8    # "tmpClassRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Class<*>;>;"
    .end local v9    # "preClassRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Class<+Ljavafx/application/Preloader;>;>;"
    .end local v10    # "theEx":Ljava/lang/Exception;
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 339
    .local v4, "ex":Ljava/lang/InterruptedException;
    move-object v12, v4

    const-string v13, "Toolkit initialization error"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 391
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    .restart local v5    # "preClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Preloader;>;"
    .restart local v6    # "tempAppClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "loader":Ljava/lang/ClassLoader;
    .restart local v8    # "tmpClassRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Class<*>;>;"
    .restart local v9    # "preClassRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Class<+Ljavafx/application/Preloader;>;>;"
    .restart local v10    # "theEx":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    :goto_2
    move-object v11, v12

    .line 392
    .local v11, "ex":Ljava/lang/ReflectiveOperationException;
    move-object v12, v11

    move-object v10, v12

    .line 393
    const/4 v12, 0x0

    sput-object v12, Lcom/sun/javafx/application/LauncherImpl;->savedPreloaderClass:Ljava/lang/Class;

    .line 398
    .line 401
    const-class v12, Ljavafx/application/Application;

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 402
    move-object v12, v10

    const-string v13, "JavaFX application class %1$s does not extend javafx.application.Application"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :cond_1
    move-object v12, v6

    const-class v13, Ljavafx/application/Application;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v12

    move-object v4, v12

    .line 406
    .local v4, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Application;>;"
    sget-boolean v12, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v12, :cond_2

    .line 407
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Launching application directly"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    :cond_2
    move-object v12, v4

    move-object v13, v5

    move-object v14, v3

    invoke-static {v12, v13, v14}, Lcom/sun/javafx/application/LauncherImpl;->launchApplication(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 410
    goto :goto_1

    .line 394
    .end local v4    # "appClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Application;>;"
    .end local v11    # "ex":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v12

    move-object v11, v12

    .line 395
    .local v11, "ex":Ljava/lang/reflect/InvocationTargetException;
    move-object v12, v11

    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 396
    const/4 v12, 0x0

    const-string v13, "Exception running application %1$s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lcom/sun/javafx/application/LauncherImpl;->abort(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    goto :goto_1

    .line 391
    .end local v11    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v12

    goto :goto_2
.end method

.method private static notifyCurrentPreloader(Ljavafx/application/Preloader$PreloaderNotification;)V
    .locals 2

    .prologue
    .line 971
    move-object v0, p0

    .local v0, "pe":Ljavafx/application/Preloader$PreloaderNotification;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$14;->lambdaFactory$(Ljavafx/application/Preloader$PreloaderNotification;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 976
    return-void
.end method

.method private static notifyError(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 7

    .prologue
    .line 954
    move-object v0, p0

    .local v0, "msg":Ljava/lang/String;
    move-object v1, p1

    .local v1, "constructorError":Ljava/lang/Throwable;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v2, v3

    .line 955
    .local v2, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;->lambdaFactory$(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 967
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    move v0, v3

    .end local v0    # "msg":Ljava/lang/String;
    return v0
.end method

.method public static notifyPreloader(Ljavafx/application/Application;Ljavafx/application/Preloader$PreloaderNotification;)V
    .locals 13

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "app":Ljavafx/application/Application;
    move-object v1, p1

    .local v1, "info":Ljavafx/application/Preloader$PreloaderNotification;
    sget-object v6, Lcom/sun/javafx/application/LauncherImpl;->launchCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 983
    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/application/LauncherImpl;->notifyCurrentPreloader(Ljavafx/application/Preloader$PreloaderNotification;)V

    .line 984
    .line 1008
    :goto_0
    return-void

    .line 987
    :cond_0
    const-class v6, Lcom/sun/javafx/application/LauncherImpl;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 988
    :try_start_0
    sget-object v6, Lcom/sun/javafx/application/LauncherImpl;->notifyMethod:Ljava/lang/reflect/Method;

    if-nez v6, :cond_1

    .line 989
    const-string v6, "com.sun.deploy.uitoolkit.impl.fx.FXPreloader"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v6

    .line 992
    .local v3, "fxPreloaderClassName":Ljava/lang/String;
    :try_start_1
    const-string v6, "com.sun.deploy.uitoolkit.impl.fx.FXPreloader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v4, v6

    .line 993
    .local v4, "fxPreloaderClass":Ljava/lang/Class;
    move-object v6, v4

    const-string v7, "notifyCurrentPreloader"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-class v11, Ljavafx/application/Preloader$PreloaderNotification;

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/sun/javafx/application/LauncherImpl;->notifyMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    .line 1000
    .end local v3    # "fxPreloaderClassName":Ljava/lang/String;
    .end local v4    # "fxPreloaderClass":Ljava/lang/Class;
    :cond_1
    move-object v6, v2

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1004
    :try_start_3
    sget-object v6, Lcom/sun/javafx/application/LauncherImpl;->notifyMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .line 1007
    .line 1008
    :goto_1
    goto :goto_0

    .line 995
    .restart local v3    # "fxPreloaderClassName":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 996
    .local v4, "ex":Ljava/lang/Exception;
    move-object v6, v4

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 997
    move-object v6, v2

    monitor-exit v6

    goto :goto_0

    .line 1000
    .end local v3    # "fxPreloaderClassName":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v5

    throw v6

    .line 1005
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 1006
    .local v2, "ex":Ljava/lang/Exception;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static notifyProgress(Ljavafx/application/Preloader;D)V
    .locals 7

    .prologue
    .line 949
    move-object v0, p0

    .local v0, "preloader":Ljavafx/application/Preloader;
    move-wide v1, p1

    .local v1, "d":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$12;->lambdaFactory$(Ljavafx/application/Preloader;D)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 951
    return-void
.end method

.method private static notifyStateChange(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)V
    .locals 6

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "preloader":Ljavafx/application/Preloader;
    move-object v1, p1

    .local v1, "type":Ljavafx/application/Preloader$StateChangeNotification$Type;
    move-object v2, p2

    .local v2, "app":Ljavafx/application/Application;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$11;->lambdaFactory$(Ljavafx/application/Preloader;Ljavafx/application/Preloader$StateChangeNotification$Type;Ljavafx/application/Application;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;)V

    .line 946
    return-void
.end method

.method private static setupJavaFXClassLoader(Ljava/io/File;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 14

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "appJar":Ljava/io/File;
    move-object v1, p1

    .local v1, "fxClassPath":Ljava/lang/String;
    move-object v9, v0

    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    move-object v2, v9

    .line 419
    .local v2, "baseDir":Ljava/io/File;
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v9

    .line 423
    .local v3, "jcpList":Ljava/util/ArrayList;
    move-object v9, v1

    move-object v4, v9

    .line 424
    .local v4, "cp":Ljava/lang/String;
    move-object v9, v4

    if-eqz v9, :cond_0

    .line 427
    :goto_0
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 428
    move-object v9, v4

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    move v5, v9

    .line 429
    .local v5, "pathSepIdx":I
    move v9, v5

    if-gez v9, :cond_4

    .line 430
    move-object v9, v4

    move-object v6, v9

    .line 431
    .local v6, "pathElem":Ljava/lang/String;
    move-object v9, v2

    if-nez v9, :cond_2

    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v7, v9

    .line 433
    .local v7, "f":Ljava/io/File;
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 434
    move-object v9, v3

    move-object v10, v7

    invoke-static {v10}, Lcom/sun/javafx/application/LauncherImpl;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 456
    .end local v5    # "pathSepIdx":I
    .end local v6    # "pathElem":Ljava/lang/String;
    .end local v7    # "f":Ljava/io/File;
    :cond_0
    :goto_2
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 457
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v9

    .line 461
    .local v5, "urlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    const-string v9, "java.class.path"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 462
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 463
    :goto_3
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 464
    move-object v9, v4

    sget-char v10, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    move v6, v9

    .line 465
    .local v6, "pathSepIdx":I
    move v9, v6

    if-gez v9, :cond_8

    .line 466
    move-object v9, v4

    move-object v7, v9

    .line 467
    .local v7, "pathElem":Ljava/lang/String;
    move-object v9, v5

    new-instance v10, Ljava/io/File;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v7

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/sun/javafx/application/LauncherImpl;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 468
    .line 478
    .end local v6    # "pathSepIdx":I
    .end local v7    # "pathElem":Ljava/lang/String;
    :cond_1
    const-class v9, Lcom/sun/javafx/application/LauncherImpl;

    invoke-virtual {v9}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v9

    move-object v6, v9

    .line 479
    .local v6, "jfxRtURL":Ljava/net/URL;
    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 482
    move-object v9, v5

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v9

    .line 484
    move-object v9, v5

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/net/URL;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/net/URL;

    check-cast v9, [Ljava/net/URL;

    move-object v7, v9

    .line 485
    .local v7, "urls":[Ljava/net/URL;
    sget-boolean v9, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v9, :cond_b

    .line 486
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "===== URL list"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_4
    move v9, v8

    move-object v10, v7

    array-length v10, v10

    if-ge v9, v10, :cond_a

    .line 488
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    move v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 431
    .end local v7    # "urls":[Ljava/net/URL;
    .end local v8    # "i":I
    .local v5, "pathSepIdx":I
    .local v6, "pathElem":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 494
    .end local v2    # "baseDir":Ljava/io/File;
    .end local v3    # "jcpList":Ljava/util/ArrayList;
    .end local v4    # "cp":Ljava/lang/String;
    .end local v5    # "pathSepIdx":I
    .end local v6    # "pathElem":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 500
    :goto_5
    const/4 v9, 0x0

    move-object v0, v9

    .end local v0    # "appJar":Ljava/io/File;
    :goto_6
    return-object v0

    .line 435
    .restart local v0    # "appJar":Ljava/io/File;
    .restart local v2    # "baseDir":Ljava/io/File;
    .restart local v3    # "jcpList":Ljava/util/ArrayList;
    .restart local v4    # "cp":Ljava/lang/String;
    .restart local v5    # "pathSepIdx":I
    .restart local v6    # "pathElem":Ljava/lang/String;
    .local v7, "f":Ljava/io/File;
    :cond_3
    sget-boolean v9, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v9, :cond_0

    .line 436
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Class Path entry \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" does not exist, ignoring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 440
    .end local v6    # "pathElem":Ljava/lang/String;
    .end local v7    # "f":Ljava/io/File;
    :cond_4
    move v9, v5

    if-lez v9, :cond_5

    .line 441
    move-object v9, v4

    const/4 v10, 0x0

    move v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 442
    .restart local v6    # "pathElem":Ljava/lang/String;
    move-object v9, v2

    if-nez v9, :cond_6

    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_7
    move-object v7, v9

    .line 444
    .restart local v7    # "f":Ljava/io/File;
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 445
    move-object v9, v3

    move-object v10, v7

    invoke-static {v10}, Lcom/sun/javafx/application/LauncherImpl;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 451
    .end local v6    # "pathElem":Ljava/lang/String;
    .end local v7    # "f":Ljava/io/File;
    :cond_5
    :goto_8
    move-object v9, v4

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 452
    goto/16 :goto_0

    .line 442
    .restart local v6    # "pathElem":Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7

    .line 446
    .restart local v7    # "f":Ljava/io/File;
    :cond_7
    sget-boolean v9, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v9, :cond_5

    .line 447
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Class Path entry \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" does not exist, ignoring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 469
    .end local v7    # "f":Ljava/io/File;
    .local v5, "urlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    .local v6, "pathSepIdx":I
    :cond_8
    move v9, v6

    if-lez v9, :cond_9

    .line 470
    move-object v9, v4

    const/4 v10, 0x0

    move v11, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 471
    .local v7, "pathElem":Ljava/lang/String;
    move-object v9, v5

    new-instance v10, Ljava/io/File;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v7

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/sun/javafx/application/LauncherImpl;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 473
    .end local v7    # "pathElem":Ljava/lang/String;
    :cond_9
    move-object v9, v4

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 474
    goto/16 :goto_3

    .line 490
    .local v6, "jfxRtURL":Ljava/net/URL;
    .local v7, "urls":[Ljava/net/URL;
    .restart local v8    # "i":I
    :cond_a
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "====="

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    .end local v8    # "i":I
    :cond_b
    new-instance v9, Ljava/net/URLClassLoader;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    goto/16 :goto_6

    .line 499
    .end local v5    # "urlList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URL;>;"
    .end local v6    # "jfxRtURL":Ljava/net/URL;
    .end local v7    # "urls":[Ljava/net/URL;
    :cond_c
    goto/16 :goto_5
.end method

.method private static startToolkit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 664
    sget-object v1, Lcom/sun/javafx/application/LauncherImpl;->toolkitStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    .line 679
    .local v0, "startupLatch":Ljava/util/concurrent/CountDownLatch;
    :goto_0
    return-void

    .line 668
    .end local v0    # "startupLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    invoke-static {}, Lcom/sun/javafx/runtime/SystemProperties;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    invoke-static {}, Lcom/sun/javafx/jmx/MXExtension;->initializeIfAvailable()V

    .line 672
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v1

    .line 675
    .restart local v0    # "startupLatch":Ljava/util/concurrent/CountDownLatch;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$4;->lambdaFactory$(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->startup(Ljava/lang/Runnable;)V

    .line 678
    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 679
    goto :goto_0
.end method

.method private static trySetAutoProxy()V
    .locals 20

    .prologue
    .line 506
    const-string v15, "http.proxyHost"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_0

    const-string v15, "https.proxyHost"

    .line 507
    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_0

    const-string v15, "ftp.proxyHost"

    .line 508
    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_0

    const-string v15, "socksProxyHost"

    .line 509
    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 510
    :cond_0
    sget-boolean v15, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v15, :cond_1

    .line 511
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Explicit proxy settings detected. Skip autoconfig."

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 512
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  http.proxyHost="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "http.proxyHost"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 513
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  https.proxyHost="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "https.proxyHost"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 514
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  ftp.proxyHost="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ftp.proxyHost"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  socksProxyHost="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "socksProxyHost"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 517
    .line 588
    .local v1, "javaHome":Ljava/lang/String;
    .local v2, "jreLibDir":Ljava/io/File;
    .local v3, "deployJar":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 519
    .end local v1    # "javaHome":Ljava/lang/String;
    .end local v2    # "jreLibDir":Ljava/io/File;
    .end local v3    # "deployJar":Ljava/io/File;
    :cond_2
    const-string v15, "javafx.autoproxy.disable"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 520
    sget-boolean v15, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v15, :cond_3

    .line 521
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Disable autoproxy on request."

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 523
    :cond_3
    goto :goto_0

    .line 529
    :cond_4
    const-string v15, "java.home"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v1, v15

    .line 530
    .restart local v1    # "javaHome":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    const-string v18, "lib"

    invoke-direct/range {v16 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v15

    .line 531
    .restart local v2    # "jreLibDir":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v2

    const-string v18, "deploy.jar"

    invoke-direct/range {v16 .. v18}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v15

    .line 535
    .restart local v3    # "deployJar":Ljava/io/File;
    const/4 v15, 0x1

    :try_start_0
    new-array v15, v15, [Ljava/net/URL;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move-object/from16 v18, v3

    .line 536
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v18

    aput-object v18, v16, v17
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v15

    .line 544
    .line 547
    .local v4, "deployURLs":[Ljava/net/URL;
    :try_start_1
    new-instance v15, Ljava/net/URLClassLoader;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v4

    invoke-direct/range {v16 .. v17}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V

    move-object v5, v15

    .line 548
    .local v5, "dcl":Ljava/net/URLClassLoader;
    const-string v15, "com.sun.deploy.services.ServiceManager"

    const/16 v16, 0x1

    move-object/from16 v17, v5

    invoke-static/range {v15 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v15

    move-object v6, v15

    .line 551
    .local v6, "sm":Ljava/lang/Class;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    move-object v7, v15

    .line 552
    .local v7, "params":[Ljava/lang/Class;
    move-object v15, v6

    const-string v16, "setService"

    move-object/from16 v17, v7

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object v8, v15

    .line 553
    .local v8, "setservice":Ljava/lang/reflect/Method;
    const-string v15, "os.name"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 556
    .local v9, "osname":Ljava/lang/String;
    move-object v15, v9

    const-string v16, "Win"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 557
    const-string v15, "STANDALONE_TIGER_WIN32"

    move-object v10, v15

    .line 563
    .local v10, "servicename":Ljava/lang/String;
    :goto_1
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object v11, v15

    .line 564
    .local v11, "values":[Ljava/lang/Object;
    const-string v15, "com.sun.deploy.services.PlatformType"

    const/16 v16, 0x1

    move-object/from16 v17, v5

    invoke-static/range {v15 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v15

    move-object v12, v15

    .line 567
    .local v12, "pt":Ljava/lang/Class;
    move-object v15, v11

    const/16 v16, 0x0

    move-object/from16 v17, v12

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    .line 568
    move-object v15, v8

    const/16 v16, 0x0

    move-object/from16 v17, v11

    invoke-virtual/range {v15 .. v17}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 570
    const-string v15, "com.sun.deploy.net.proxy.DeployProxySelector"

    const/16 v16, 0x1

    move-object/from16 v17, v5

    invoke-static/range {v15 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v15

    move-object v13, v15

    .line 574
    .local v13, "dps":Ljava/lang/Class;
    move-object v15, v13

    const-string v16, "reset"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object v14, v15

    .line 575
    .local v14, "m":Ljava/lang/reflect/Method;
    move-object v15, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 577
    sget-boolean v15, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v15, :cond_5

    .line 578
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Autoconfig of proxy is completed."

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 587
    .line 588
    .end local v5    # "dcl":Ljava/net/URLClassLoader;
    .end local v6    # "sm":Ljava/lang/Class;
    .end local v7    # "params":[Ljava/lang/Class;
    .end local v8    # "setservice":Ljava/lang/reflect/Method;
    .end local v9    # "osname":Ljava/lang/String;
    .end local v10    # "servicename":Ljava/lang/String;
    .end local v11    # "values":[Ljava/lang/Object;
    .end local v12    # "pt":Ljava/lang/Class;
    .end local v13    # "dps":Ljava/lang/Class;
    .end local v14    # "m":Ljava/lang/reflect/Method;
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 538
    .end local v4    # "deployURLs":[Ljava/net/URL;
    :catch_0
    move-exception v15

    move-object v5, v15

    .line 543
    .local v5, "ex":Ljava/net/MalformedURLException;
    goto/16 :goto_0

    .line 558
    .restart local v4    # "deployURLs":[Ljava/net/URL;
    .local v5, "dcl":Ljava/net/URLClassLoader;
    .restart local v6    # "sm":Ljava/lang/Class;
    .restart local v7    # "params":[Ljava/lang/Class;
    .restart local v8    # "setservice":Ljava/lang/reflect/Method;
    .restart local v9    # "osname":Ljava/lang/String;
    :cond_6
    move-object v15, v9

    const-string v16, "Mac"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 559
    const-string v15, "STANDALONE_TIGER_MACOSX"

    move-object v10, v15

    .restart local v10    # "servicename":Ljava/lang/String;
    goto :goto_1

    .line 561
    .end local v10    # "servicename":Ljava/lang/String;
    :cond_7
    const-string v15, "STANDALONE_TIGER_UNIX"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v15

    .restart local v10    # "servicename":Ljava/lang/String;
    goto :goto_1

    .line 580
    .end local v5    # "dcl":Ljava/net/URLClassLoader;
    .end local v6    # "sm":Ljava/lang/Class;
    .end local v7    # "params":[Ljava/lang/Class;
    .end local v8    # "setservice":Ljava/lang/reflect/Method;
    .end local v9    # "osname":Ljava/lang/String;
    .end local v10    # "servicename":Ljava/lang/String;
    :catch_1
    move-exception v15

    move-object v5, v15

    .line 581
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v15, Lcom/sun/javafx/application/LauncherImpl;->verbose:Z

    if-eqz v15, :cond_5

    .line 582
    sget-object v15, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to autoconfig proxy due to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method
