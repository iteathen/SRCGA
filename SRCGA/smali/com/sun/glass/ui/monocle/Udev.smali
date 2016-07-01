.class Lcom/sun/glass/ui/monocle/Udev;
.super Ljava/lang/Object;
.source "Udev.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static instance:Lcom/sun/glass/ui/monocle/Udev;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private fd:J

.field private listeners:[Lcom/sun/glass/ui/monocle/UdevListener;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Udev;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 65
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/Udev;->_open()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/glass/ui/monocle/Udev;->fd:J

    .line 66
    move-object v1, v0

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    .line 67
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    move-object v1, v0

    new-instance v2, Ljava/lang/Thread;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "udev monitor"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/Udev;->thread:Ljava/lang/Thread;

    .line 69
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/Udev;->thread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 70
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/Udev;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 71
    return-void
.end method

.method private native _close(J)V
.end method

.method private native _getPropertiesLength(Ljava/nio/ByteBuffer;)I
.end method

.method private native _getPropertiesOffset(Ljava/nio/ByteBuffer;)I
.end method

.method private native _open()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native _readEvent(JLjava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static synthetic access$000(Lcom/sun/glass/ui/monocle/Udev;)[Lcom/sun/glass/ui/monocle/UdevListener;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/Udev;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/Udev;->listeners:[Lcom/sun/glass/ui/monocle/UdevListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/Udev;
    return-object v0
.end method

.method static declared-synchronized getInstance()Lcom/sun/glass/ui/monocle/Udev;
    .locals 5

    .prologue
    .line 49
    const-class v3, Lcom/sun/glass/ui/monocle/Udev;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/sun/glass/ui/monocle/Udev;->instance:Lcom/sun/glass/ui/monocle/Udev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 51
    :try_start_1
    new-instance v1, Lcom/sun/glass/ui/monocle/Udev;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/Udev;-><init>()V

    sput-object v1, Lcom/sun/glass/ui/monocle/Udev;->instance:Lcom/sun/glass/ui/monocle/Udev;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 57
    .local v0, "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/sun/glass/ui/monocle/Udev;->instance:Lcom/sun/glass/ui/monocle/Udev;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .end local v0    # "e":Ljava/io/IOException;
    monitor-exit v3

    return-object v0

    .line 52
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 53
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Udev: failed to open connection"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "e":Ljava/io/IOException;
    throw v0
.end method

.method private readEvent()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Udev;
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object v1, v13

    .line 139
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v13, v0

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v3, v14

    monitor-enter v13

    .line 140
    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    move-object v2, v13

    .line 141
    .local v2, "b":Ljava/nio/ByteBuffer;
    move-object v13, v2

    if-nez v13, :cond_0

    .line 142
    move-object v13, v1

    move-object v14, v3

    monitor-exit v14

    move-object v0, v13

    .line 193
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/Udev;
    :goto_0
    return-object v0

    .line 144
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/Udev;
    :cond_0
    move-object v13, v3

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    move-object v13, v0

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/glass/ui/monocle/Udev;->fd:J

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v16}, Lcom/sun/glass/ui/monocle/Udev;->_readEvent(JLjava/nio/ByteBuffer;)I

    move-result v13

    move v3, v13

    .line 146
    .local v3, "length":I
    move-object v13, v0

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v4, v14

    monitor-enter v13

    .line 147
    move-object v13, v0

    :try_start_1
    iget-object v13, v13, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    if-nez v13, :cond_1

    .line 148
    move-object v13, v1

    move-object v14, v4

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v13

    goto :goto_0

    .line 144
    .end local v2    # "b":Ljava/nio/ByteBuffer;
    .end local v3    # "length":I
    :catchall_0
    move-exception v13

    move-object v4, v13

    move-object v13, v3

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v4

    throw v13

    .line 150
    .restart local v2    # "b":Ljava/nio/ByteBuffer;
    .restart local v3    # "length":I
    :cond_1
    move-object v13, v0

    move-object v14, v0

    :try_start_3
    iget-object v14, v14, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {v13, v14}, Lcom/sun/glass/ui/monocle/Udev;->_getPropertiesOffset(Ljava/nio/ByteBuffer;)I

    move-result v13

    move v5, v13

    .line 151
    .local v5, "propertiesOffset":I
    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {v13, v14}, Lcom/sun/glass/ui/monocle/Udev;->_getPropertiesLength(Ljava/nio/ByteBuffer;)I

    move-result v13

    move v6, v13

    .line 152
    .local v6, "propertiesLength":I
    move v13, v5

    move v14, v6

    add-int/2addr v13, v14

    move v7, v13

    .line 153
    .local v7, "propertiesEnd":I
    move v13, v3

    move v14, v7

    if-ge v13, v14, :cond_2

    .line 154
    new-instance v13, Ljava/io/IOException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const-string v15, "Mismatched property segment length"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 192
    .end local v5    # "propertiesOffset":I
    .end local v6    # "propertiesLength":I
    .end local v7    # "propertiesEnd":I
    :catchall_1
    move-exception v13

    move-object v12, v13

    move-object v13, v4

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v12

    throw v13

    .line 156
    .restart local v5    # "propertiesOffset":I
    .restart local v6    # "propertiesLength":I
    .restart local v7    # "propertiesEnd":I
    :cond_2
    move-object v13, v0

    :try_start_4
    iget-object v13, v13, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    move v14, v5

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    .line 161
    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v13

    .line 162
    .local v8, "key":Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v13

    .line 163
    .local v9, "value":Ljava/lang/StringBuffer;
    :goto_1
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    move v14, v7

    if-ge v13, v14, :cond_5

    .line 164
    move-object v13, v8

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 165
    move-object v13, v9

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 166
    const/4 v13, 0x0

    move v10, v13

    .line 167
    .local v10, "readKey":Z
    :goto_2
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    move v14, v3

    if-ge v13, v14, :cond_3

    move v13, v10

    if-nez v13, :cond_3

    .line 168
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    int-to-char v13, v13

    move v11, v13

    .line 169
    .local v11, "ch":C
    move v13, v11

    sparse-switch v13, :sswitch_data_0

    .line 177
    move-object v13, v8

    move v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 179
    :goto_3
    goto :goto_2

    .line 171
    :sswitch_0
    move-object v13, v1

    move-object v14, v8

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 172
    goto :goto_1

    .line 174
    :sswitch_1
    const/4 v13, 0x1

    move v10, v13

    .line 175
    goto :goto_3

    .line 180
    .end local v11    # "ch":C
    :cond_3
    :goto_4
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    move v14, v7

    if-ge v13, v14, :cond_4

    .line 181
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    int-to-char v13, v13

    move v11, v13

    .line 182
    .restart local v11    # "ch":C
    move v13, v11

    packed-switch v13, :pswitch_data_0

    .line 187
    move-object v13, v9

    move v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 189
    goto :goto_4

    .line 184
    :pswitch_0
    move-object v13, v1

    move-object v14, v8

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 185
    goto :goto_1

    .line 190
    .end local v11    # "ch":C
    :cond_4
    goto :goto_1

    .line 191
    .end local v10    # "readKey":Z
    :cond_5
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v13

    .line 192
    move-object v13, v4

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    move-object v13, v1

    move-object v0, v13

    goto/16 :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized addListener(Lcom/sun/glass/ui/monocle/UdevListener;)V
    .locals 9

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Udev;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/glass/ui/monocle/UdevListener;
    move-object v7, p0

    monitor-enter v7

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/glass/ui/monocle/Udev;->listeners:[Lcom/sun/glass/ui/monocle/UdevListener;

    if-nez v2, :cond_0

    .line 75
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sun/glass/ui/monocle/UdevListener;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/Udev;->listeners:[Lcom/sun/glass/ui/monocle/UdevListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit v7

    return-void

    .line 77
    :cond_0
    move-object v2, v0

    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/sun/glass/ui/monocle/Udev;->listeners:[Lcom/sun/glass/ui/monocle/UdevListener;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/Udev;->listeners:[Lcom/sun/glass/ui/monocle/UdevListener;

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sun/glass/ui/monocle/UdevListener;

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/Udev;->listeners:[Lcom/sun/glass/ui/monocle/UdevListener;

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/Udev;->listeners:[Lcom/sun/glass/ui/monocle/UdevListener;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/Udev;->listeners:[Lcom/sun/glass/ui/monocle/UdevListener;

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v1

    aput-object v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/Udev;
    throw v0
.end method

.method declared-synchronized close()V
    .locals 5

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Udev;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/glass/ui/monocle/Udev;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 199
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/monocle/Udev;->fd:J

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/monocle/Udev;->_close(J)V

    .line 200
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/glass/ui/monocle/Udev;->fd:J

    .line 201
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/Udev;->buffer:Ljava/nio/ByteBuffer;

    .line 202
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/Udev;->thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit v4

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/Udev;
    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Udev;
    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/NativePlatform;->getRunnableProcessor()Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-result-object v3

    move-object v1, v3

    .line 95
    .local v1, "runnableProcessor":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    :goto_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/Udev;->readEvent()Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 96
    .local v2, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, v1

    new-instance v4, Lcom/sun/glass/ui/monocle/Udev$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/glass/ui/monocle/Udev$1;-><init>(Lcom/sun/glass/ui/monocle/Udev;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeLater(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 126
    .end local v1    # "runnableProcessor":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    .end local v2    # "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 127
    .local v1, "e":Ljava/io/IOException;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/Udev;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Exception in udev thread:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/Udev;->close()V

    .line 133
    :cond_0
    return-void
.end method
