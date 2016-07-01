.class public Lcom/sun/media/jfxmedia/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final INFO:I = 0x2

.field public static final OFF:I = 0x7fffffff

.field public static final WARNING:I = 0x3

.field private static currentLevel:I

.field private static final lock:Ljava/lang/Object;

.field private static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const v0, 0x7fffffff

    sput v0, Lcom/sun/media/jfxmedia/logging/Logger;->currentLevel:I

    .line 94
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sun/media/jfxmedia/logging/Logger;->startTime:J

    .line 95
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/media/jfxmedia/logging/Logger;->lock:Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/sun/media/jfxmedia/logging/Logger;->startLogger()V

    .line 99
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/logging/Logger;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method public static canLog(I)Z
    .locals 3

    .prologue
    .line 174
    move v0, p0

    .local v0, "level":I
    move v1, v0

    sget v2, Lcom/sun/media/jfxmedia/logging/Logger;->currentLevel:I

    if-ge v1, v2, :cond_0

    .line 175
    const/4 v1, 0x0

    move v0, v1

    .line 177
    .end local v0    # "level":I
    :goto_0
    return v0

    .restart local v0    # "level":I
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method private static getTimestamp()Ljava/lang/String;
    .locals 17

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lcom/sun/media/jfxmedia/logging/Logger;->startTime:J

    sub-long/2addr v10, v12

    move-wide v0, v10

    .line 230
    .local v0, "elapsed":J
    move-wide v10, v0

    const-wide/32 v12, 0x36ee80

    div-long/2addr v10, v12

    move-wide v2, v10

    .line 231
    .local v2, "elapsedHours":J
    move-wide v10, v0

    move-wide v12, v2

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    move-wide v4, v10

    .line 232
    .local v4, "elapsedMinutes":J
    move-wide v10, v0

    move-wide v12, v2

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    move-wide v12, v4

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    move-wide v6, v10

    .line 233
    .local v6, "elapsedSeconds":J
    move-wide v10, v0

    move-wide v12, v2

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    move-wide v12, v4

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    move-wide v12, v6

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    move-wide v8, v10

    .line 235
    .local v8, "elapsedMillis":J
    const-string v10, "%d:%02d:%02d:%03d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-wide v14, v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move-wide v14, v4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x2

    move-wide v14, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x3

    move-wide v14, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "elapsed":J
    return-object v0
.end method

.method public static initNative()Z
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/sun/media/jfxmedia/logging/Logger;->nativeInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget v0, Lcom/sun/media/jfxmedia/logging/Logger;->currentLevel:I

    invoke-static {v0}, Lcom/sun/media/jfxmedia/logging/Logger;->nativeSetNativeLevel(I)V

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logMsg(ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 188
    move v0, p0

    .local v0, "level":I
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    sget-object v4, Lcom/sun/media/jfxmedia/logging/Logger;->lock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 189
    move v4, v0

    :try_start_0
    sget v5, Lcom/sun/media/jfxmedia/logging/Logger;->currentLevel:I

    if-ge v4, v5, :cond_0

    .line 190
    move-object v4, v2

    monitor-exit v4

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 194
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sun/media/jfxmedia/logging/Logger;->getTimestamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    :cond_1
    :goto_1
    move-object v4, v2

    monitor-exit v4

    .line 203
    goto :goto_0

    .line 195
    :cond_2
    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 196
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sun/media/jfxmedia/logging/Logger;->getTimestamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_3
    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 198
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Info ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sun/media/jfxmedia/logging/Logger;->getTimestamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_4
    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 200
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Debug ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sun/media/jfxmedia/logging/Logger;->getTimestamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public static logMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 214
    move v0, p0

    .local v0, "level":I
    move-object v1, p1

    .local v1, "sourceClass":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sourceMethod":Ljava/lang/String;
    move-object v3, p3

    .local v3, "msg":Ljava/lang/String;
    sget-object v6, Lcom/sun/media/jfxmedia/logging/Logger;->lock:Ljava/lang/Object;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v4, v7

    monitor-enter v6

    .line 215
    move v6, v0

    :try_start_0
    sget v7, Lcom/sun/media/jfxmedia/logging/Logger;->currentLevel:I

    if-ge v6, v7, :cond_0

    .line 216
    move-object v6, v4

    monitor-exit v6

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    move v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 220
    move-object v6, v4

    monitor-exit v6

    .line 221
    goto :goto_0

    .line 220
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method private static native nativeInit()Z
.end method

.method private static native nativeSetNativeLevel(I)V
.end method

.method public static setLevel(I)V
    .locals 3

    .prologue
    .line 158
    move v0, p0

    .local v0, "level":I
    move v2, v0

    sput v2, Lcom/sun/media/jfxmedia/logging/Logger;->currentLevel:I

    .line 161
    move v2, v0

    :try_start_0
    invoke-static {v2}, Lcom/sun/media/jfxmedia/logging/Logger;->nativeSetNativeLevel(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method private static startLogger()V
    .locals 4

    .prologue
    .line 108
    :try_start_0
    const-string v2, "jfxmedia.loglevel"

    const-string v3, "off"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 110
    .local v1, "level":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "debug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .line 122
    .local v0, "logLevel":Ljava/lang/Integer;
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sun/media/jfxmedia/logging/Logger;->setLevel(I)V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/sun/media/jfxmedia/logging/Logger;->startTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 127
    .end local v0    # "logLevel":Ljava/lang/Integer;
    :goto_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x1

    const-string v3, "Logger initialized"

    invoke-static {v2, v3}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 129
    :cond_0
    return-void

    .line 112
    :cond_1
    move-object v2, v1

    :try_start_1
    const-string v3, "warning"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .restart local v0    # "logLevel":Ljava/lang/Integer;
    goto :goto_0

    .line 114
    .end local v0    # "logLevel":Ljava/lang/Integer;
    :cond_2
    move-object v2, v1

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .restart local v0    # "logLevel":Ljava/lang/Integer;
    goto :goto_0

    .line 116
    .end local v0    # "logLevel":Ljava/lang/Integer;
    :cond_3
    move-object v2, v1

    const-string v3, "info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .restart local v0    # "logLevel":Ljava/lang/Integer;
    goto :goto_0

    .line 119
    .end local v0    # "logLevel":Ljava/lang/Integer;
    :cond_4
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    move-object v0, v2

    .restart local v0    # "logLevel":Ljava/lang/Integer;
    goto :goto_0

    .line 125
    .end local v0    # "logLevel":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    move-object v0, v2

    goto :goto_1
.end method
