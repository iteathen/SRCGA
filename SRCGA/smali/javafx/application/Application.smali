.class public abstract Ljavafx/application/Application;
.super Ljava/lang/Object;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/application/Application$Parameters;
    }
.end annotation


# static fields
.field public static final STYLESHEET_CASPIAN:Ljava/lang/String; = "CASPIAN"

.field public static final STYLESHEET_MODENA:Ljava/lang/String; = "MODENA"

.field private static userAgentStylesheet:Ljava/lang/String;


# instance fields
.field private hostServices:Ljavafx/application/HostServices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    sput-object v0, Ljavafx/application/Application;->userAgentStylesheet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Application;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 322
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/application/Application;->hostServices:Ljavafx/application/HostServices;

    .line 268
    return-void
.end method

.method public static getUserAgentStylesheet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Ljavafx/application/Application;->userAgentStylesheet:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs launch(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 4
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
    .line 191
    move-object v0, p0

    .local v0, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Application;>;"
    move-object v1, p1

    .local v1, "args":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/application/LauncherImpl;->launchApplication(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public static varargs launch([Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    move-object v1, v10

    .line 227
    .local v1, "cause":[Ljava/lang/StackTraceElement;
    const/4 v10, 0x0

    move v2, v10

    .line 228
    .local v2, "foundThisMethod":Z
    const/4 v10, 0x0

    move-object v3, v10

    .line 229
    .local v3, "callingClassName":Ljava/lang/String;
    move-object v10, v1

    move-object v4, v10

    move-object v10, v4

    array-length v10, v10

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_0

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 231
    .local v7, "se":Ljava/lang/StackTraceElement;
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 232
    .local v8, "className":Ljava/lang/String;
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 233
    .local v9, "methodName":Ljava/lang/String;
    move v10, v2

    if-eqz v10, :cond_1

    .line 234
    move-object v10, v8

    move-object v3, v10

    .line 243
    .end local v7    # "se":Ljava/lang/StackTraceElement;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "methodName":Ljava/lang/String;
    :cond_0
    move-object v10, v3

    if-nez v10, :cond_3

    .line 244
    new-instance v10, Ljava/lang/RuntimeException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Error: unable to determine Application class"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 236
    .restart local v7    # "se":Ljava/lang/StackTraceElement;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "methodName":Ljava/lang/String;
    :cond_1
    const-class v10, Ljavafx/application/Application;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "launch"

    move-object v11, v9

    .line 237
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 239
    const/4 v10, 0x1

    move v2, v10

    .line 229
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 248
    .end local v7    # "se":Ljava/lang/StackTraceElement;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "methodName":Ljava/lang/String;
    :cond_3
    move-object v10, v3

    const/4 v11, 0x1

    .line 249
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 248
    invoke-static {v10, v11, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    move-object v4, v10

    .line 250
    .local v4, "theClass":Ljava/lang/Class;
    const-class v10, Ljavafx/application/Application;

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 251
    move-object v10, v4

    move-object v5, v10

    .line 252
    .local v5, "appClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Application;>;"
    move-object v10, v5

    move-object v11, v0

    invoke-static {v10, v11}, Lcom/sun/javafx/application/LauncherImpl;->launchApplication(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 253
    .line 261
    .line 262
    return-void

    .line 254
    .end local v5    # "appClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavafx/application/Application;>;"
    :cond_4
    new-instance v10, Ljava/lang/RuntimeException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not a subclass of javafx.application.Application"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    .end local v4    # "theClass":Ljava/lang/Class;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 258
    .local v4, "ex":Ljava/lang/RuntimeException;
    move-object v10, v4

    throw v10

    .line 259
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v10

    move-object v4, v10

    .line 260
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/RuntimeException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method public static setUserAgentStylesheet(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "url":Ljava/lang/String;
    move-object v1, v0

    sput-object v1, Ljavafx/application/Application;->userAgentStylesheet:Ljava/lang/String;

    .line 475
    move-object v1, v0

    if-nez v1, :cond_0

    .line 476
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->setDefaultPlatformUserAgentStylesheet()V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->setPlatformUserAgentStylesheet(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final getHostServices()Ljavafx/application/HostServices;
    .locals 8

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Application;
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 333
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/application/Application;->hostServices:Ljavafx/application/HostServices;

    if-nez v3, :cond_0

    .line 334
    move-object v3, v0

    new-instance v4, Ljavafx/application/HostServices;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/application/HostServices;-><init>(Ljavafx/application/Application;)V

    iput-object v4, v3, Ljavafx/application/Application;->hostServices:Ljavafx/application/HostServices;

    .line 336
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/application/Application;->hostServices:Ljavafx/application/HostServices;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Ljavafx/application/Application;
    return-object v0

    .line 337
    .restart local v0    # "this":Ljavafx/application/Application;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public final getParameters()Ljavafx/application/Application$Parameters;
    .locals 2

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Application;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/ParametersImpl;->getParameters(Ljavafx/application/Application;)Ljavafx/application/Application$Parameters;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/application/Application;
    return-object v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    return-void
.end method

.method public final notifyPreloader(Ljavafx/application/Preloader$PreloaderNotification;)V
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/application/Application;
    move-object v1, p1

    .local v1, "info":Ljavafx/application/Preloader$PreloaderNotification;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/application/LauncherImpl;->notifyPreloader(Ljavafx/application/Application;Ljavafx/application/Preloader$PreloaderNotification;)V

    .line 381
    return-void
.end method

.method public abstract start(Ljavafx/stage/Stage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 320
    return-void
.end method
