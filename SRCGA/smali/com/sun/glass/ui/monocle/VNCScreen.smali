.class Lcom/sun/glass/ui/monocle/VNCScreen;
.super Lcom/sun/glass/ui/monocle/HeadlessScreen;
.source "VNCScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;,
        Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;
    }
.end annotation


# instance fields
.field private clients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private server:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method constructor <init>()V
    .locals 10

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v3, v0

    const/16 v4, 0x400

    const/16 v5, 0x258

    const/16 v6, 0x20

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/HeadlessScreen;-><init>(III)V

    .line 51
    move-object v3, v0

    new-instance v4, Ljava/util/HashSet;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/VNCScreen;->clients:Ljava/util/Set;

    .line 56
    move-object v3, v0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/VNCScreen;->server:Ljava/nio/channels/ServerSocketChannel;

    .line 57
    invoke-static {}, Lcom/sun/glass/ui/monocle/VNCScreen$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 60
    .local v1, "vncPort":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/VNCScreen;->server:Ljava/nio/channels/ServerSocketChannel;

    new-instance v4, Ljava/net/InetSocketAddress;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    invoke-direct {v5, v6}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/nio/channels/ServerSocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v3

    .line 61
    new-instance v3, Ljava/lang/Thread;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;-><init>(Lcom/sun/glass/ui/monocle/VNCScreen;Lcom/sun/glass/ui/monocle/VNCScreen$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v2, v3

    .line 62
    .local v2, "t":Ljava/lang/Thread;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 63
    move-object v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VNC Server on port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 64
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .end local v1    # "vncPort":I
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 66
    .local v1, "e":Ljava/io/IOException;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/sun/glass/ui/monocle/VNCScreen;)Ljava/nio/channels/ServerSocketChannel;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/VNCScreen;->server:Ljava/nio/channels/ServerSocketChannel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/VNCScreen;
    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/glass/ui/monocle/VNCScreen;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/VNCScreen;->clients:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/VNCScreen;
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/glass/ui/monocle/VNCScreen;Ljava/nio/channels/WritableByteChannel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v1, p1

    .local v1, "x1":Ljava/nio/channels/WritableByteChannel;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/VNCScreen;->sendBuffer(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sun/glass/ui/monocle/VNCScreen;Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;Ljava/io/IOException;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v2, p2

    .local v2, "x2":Ljava/io/IOException;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/VNCScreen;->removeClient(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/VNCScreen;->lambda$new$115()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$115()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 59
    const-string v0, "vnc.port"

    const/16 v1, 0x170d

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private removeClient(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;Ljava/io/IOException;)V
    .locals 12

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v1, p1

    .local v1, "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v2, p2

    .local v2, "e":Ljava/io/IOException;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/VNCScreen;->clients:Ljava/util/Set;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v3, v6

    monitor-enter v5

    .line 98
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/glass/ui/monocle/VNCScreen;->clients:Ljava/util/Set;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Disconnecting %s: %s\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    .line 100
    invoke-static {v10}, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->access$200(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 99
    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v5

    .line 101
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/VNCScreen;->clients:Ljava/util/Set;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 103
    :cond_0
    move-object v5, v3

    monitor-exit v5

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method private sendBuffer(Ljava/nio/channels/WritableByteChannel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v1, p1

    .local v1, "out":Ljava/nio/channels/WritableByteChannel;
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 108
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    move-object v3, v2

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 109
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 110
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 111
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 112
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 113
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 114
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/VNCScreen;->width:I

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 115
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/VNCScreen;->height:I

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 116
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 117
    move-object v3, v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    .line 118
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 119
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/VNCScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/Framebuffer;->write(Ljava/nio/channels/WritableByteChannel;)V

    .line 120
    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v4, v0

    invoke-super {v4}, Lcom/sun/glass/ui/monocle/HeadlessScreen;->shutdown()V

    .line 73
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/VNCScreen;->clients:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;

    move-object v2, v4

    .line 75
    .local v2, "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v4, v2

    :try_start_0
    invoke-static {v4}, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->access$100(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;)Ljava/nio/channels/SocketChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    :goto_1
    goto :goto_0

    .line 76
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_1

    .line 78
    .end local v2    # "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    :cond_0
    return-void
.end method

.method public swapBuffers()V
    .locals 10

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/VNCScreen;->clients:Ljava/util/Set;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    move-object v2, v8

    monitor-enter v7

    .line 84
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/glass/ui/monocle/VNCScreen;->clients:Ljava/util/Set;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen;->clients:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;

    move-object v1, v7

    .line 85
    .local v1, "ccs":[Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v7, v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    move-object v7, v1

    move-object v2, v7

    move-object v7, v2

    array-length v7, v7

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_0

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 88
    .local v5, "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v7, v0

    move-object v8, v5

    :try_start_1
    invoke-static {v8}, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->access$100(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;)Ljava/nio/channels/SocketChannel;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/monocle/VNCScreen;->sendBuffer(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 86
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "ccs":[Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    .end local v5    # "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    :catchall_0
    move-exception v7

    move-object v3, v7

    move-object v7, v2

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v3

    throw v7

    .line 89
    .restart local v1    # "ccs":[Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    .restart local v5    # "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 90
    .local v6, "e":Ljava/io/IOException;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/VNCScreen;->clients:Ljava/util/Set;

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    .line 93
    .end local v5    # "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    move-object v7, v0

    invoke-super {v7}, Lcom/sun/glass/ui/monocle/HeadlessScreen;->swapBuffers()V

    .line 94
    return-void
.end method
