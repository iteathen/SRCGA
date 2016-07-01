.class final Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;
.super Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
.source "PerformanceTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PerformanceTrackerDefaultImpl"
.end annotation


# instance fields
.field private firstTime:J

.field private final getStartTimeMethod:Ljava/lang/reflect/Method;

.field private lastTime:J

.field private final logEventMethod:Ljava/lang/reflect/Method;

.field private final outputLogMethod:Ljava/lang/reflect/Method;

.field private final setStartTimeMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;-><init>(Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;)V

    .line 110
    const-string v2, "sun.misc.PerformanceLogger"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 113
    .local v1, "perfLoggerClass":Ljava/lang/Class;
    move-object v2, v0

    move-object v3, v1

    const-string v4, "setTime"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 114
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->logEventMethod:Ljava/lang/reflect/Method;

    .line 115
    move-object v2, v0

    move-object v3, v1

    const-string v4, "outputLog"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 116
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->outputLogMethod:Ljava/lang/reflect/Method;

    .line 117
    move-object v2, v0

    move-object v3, v1

    const-string v4, "getStartTime"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 118
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->getStartTimeMethod:Ljava/lang/reflect/Method;

    .line 119
    move-object v2, v0

    move-object v3, v1

    const-string v4, "setStartTime"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 120
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->setStartTimeMethod:Ljava/lang/reflect/Method;

    .line 122
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->lambda$logLaunchTime$411()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$logLaunchTime$411()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "launchTime"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logLaunchTime()V
    .locals 12

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->getStartTimeMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 167
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v4

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    .line 170
    .local v1, "launchTimeString":Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    const-string v5, ""

    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 172
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v2, v4

    .line 173
    .local v2, "launchTime":J
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->setStartTimeMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    const-string v9, "LaunchTime"

    aput-object v9, v7, v8

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    move-wide v9, v2

    .line 174
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 173
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 179
    .line 180
    .end local v1    # "launchTimeString":Ljava/lang/String;
    .end local v2    # "launchTime":J
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 178
    .local v1, "t":Ljava/lang/Throwable;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isPerfLoggingEnabled()Z
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;
    return v0
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 126
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;
    move-object/from16 v2, p1

    .local v2, "s":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v3, v6

    .line 127
    .local v3, "time":J
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->firstTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 128
    move-object v6, v1

    move-wide v7, v3

    iput-wide v7, v6, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->firstTime:J

    .line 132
    :cond_0
    move-object v6, v1

    :try_start_0
    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->logEventMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JavaFX> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v3

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->firstTime:J

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms total, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide v12, v3

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->lastTime:J

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 140
    .line 142
    :goto_0
    move-object v6, v1

    move-wide v7, v3

    iput-wide v7, v6, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->lastTime:J

    .line 143
    return-void

    .line 137
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 140
    goto :goto_0

    .line 138
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 140
    goto :goto_0

    .line 139
    :catch_2
    move-exception v6

    move-object v5, v6

    goto :goto_0
.end method

.method public outputLog()V
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->logLaunchTime()V

    .line 152
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;->outputLogMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 154
    .line 155
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
