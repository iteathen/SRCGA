.class final Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
.super Lsun/util/logging/PlatformLogger$LoggerProxy;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultLoggerProxy"
.end annotation


# static fields
.field private static final formatString:Ljava/lang/String;


# instance fields
.field private date:Ljava/util/Date;

.field volatile effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

.field volatile level:Lsun/util/logging/PlatformLogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 554
    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getSimpleFormat(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatString:Ljava/lang/String;

    .line 553
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lsun/util/logging/PlatformLogger$LoggerProxy;-><init>(Ljava/lang/String;)V

    .line 557
    move-object v2, v0

    new-instance v3, Ljava/util/Date;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v3, v2, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    .line 480
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v3

    iput-object v3, v2, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    .line 481
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    .line 482
    return-void
.end method

.method private deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;
    .locals 3

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, v1

    if-nez v2, :cond_0

    invoke-static {}, Lsun/util/logging/PlatformLogger;->access$000()Lsun/util/logging/PlatformLogger$Level;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    return-object v0

    .restart local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private declared-synchronized format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object/from16 v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "thrown":Ljava/lang/Throwable;
    move-object v12, p0

    monitor-enter v12

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 560
    const-string v7, ""

    move-object v4, v7

    .line 561
    .local v4, "throwable":Ljava/lang/String;
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 562
    new-instance v7, Ljava/io/StringWriter;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    move-object v5, v7

    .line 563
    .local v5, "sw":Ljava/io/StringWriter;
    new-instance v7, Ljava/io/PrintWriter;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    invoke-direct {v8, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v6, v7

    .line 564
    .local v6, "pw":Ljava/io/PrintWriter;
    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 565
    move-object v7, v3

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 566
    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 567
    move-object v7, v5

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 570
    .end local v5    # "sw":Ljava/io/StringWriter;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :cond_0
    sget-object v7, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatString:Ljava/lang/String;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->date:Ljava/util/Date;

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v0

    .line 572
    invoke-direct {v11}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->getCallerInfo()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move-object v11, v0

    iget-object v11, v11, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x3

    move-object v11, v1

    .line 574
    invoke-virtual {v11}, Lsun/util/logging/PlatformLogger$Level;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x4

    move-object v11, v2

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x5

    move-object v11, v4

    aput-object v11, v9, v10

    .line 570
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    monitor-exit v12

    return-object v0

    .line 559
    .end local v4    # "throwable":Ljava/lang/String;
    .restart local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    :catchall_0
    move-exception v0

    monitor-exit v12

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    throw v0
.end method

.method private varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    :try_start_0
    array-length v4, v4

    if-nez v4, :cond_1

    .line 535
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .line 549
    .end local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    :goto_0
    return-object v0

    .line 542
    .restart local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    :cond_1
    move-object v4, v1

    const-string v5, "{0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    move-object v4, v1

    const-string v5, "{1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    move-object v4, v1

    const-string v5, "{2"

    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    move-object v4, v1

    const-string v5, "{3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 544
    :cond_2
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 546
    :cond_3
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 547
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 549
    .local v3, "ex":Ljava/lang/Exception;
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method private getCallerInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    const/4 v3, 0x0

    move-object v1, v3

    .line 583
    .local v1, "sourceClassName":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v2, v3

    .line 612
    .local v2, "sourceMethodName":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 615
    .end local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->name:Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method private static outputStream()Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 472
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0
.end method


# virtual methods
.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "thrown":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method varargs doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v3, p3

    .local v3, "params":[Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 514
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 515
    .local v4, "newMsg":Ljava/lang/String;
    invoke-static {}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->outputStream()Ljava/io/PrintStream;

    move-result-object v5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->format(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 517
    .end local v4    # "newMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method getLevel()Lsun/util/logging/PlatformLogger$Level;
    .locals 2

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, v0

    iget-object v1, v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    move-object v0, v1

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    return-object v0
.end method

.method isEnabled()Z
    .locals 3

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, v0

    iget-object v1, v1, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    return v0

    .restart local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .locals 5

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    move-object v2, v3

    .line 521
    .local v2, "effectiveLevel":Lsun/util/logging/PlatformLogger$Level;
    move-object v3, v1

    invoke-virtual {v3}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_0

    move-object v3, v2

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    return v0

    .restart local v0    # "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .locals 6

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    move-object v1, p1

    .local v1, "newLevel":Lsun/util/logging/PlatformLogger$Level;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    move-object v2, v3

    .line 494
    .local v2, "oldLevel":Lsun/util/logging/PlatformLogger$Level;
    move-object v3, v2

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 495
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    .line 496
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->deriveEffectiveLevel(Lsun/util/logging/PlatformLogger$Level;)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v4

    iput-object v4, v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->effectiveLevel:Lsun/util/logging/PlatformLogger$Level;

    .line 498
    :cond_0
    return-void
.end method
