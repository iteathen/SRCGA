.class Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;
.super Ljava/lang/Object;
.source "VNCScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/VNCScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionAccepter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/monocle/VNCScreen;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/monocle/VNCScreen;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/glass/ui/monocle/VNCScreen;Lcom/sun/glass/ui/monocle/VNCScreen$1;)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/glass/ui/monocle/VNCScreen$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;-><init>(Lcom/sun/glass/ui/monocle/VNCScreen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 125
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;
    const/16 v8, 0x40

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v1, v8

    .line 126
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v8, v1

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 129
    :goto_0
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    invoke-static {v8}, Lcom/sun/glass/ui/monocle/VNCScreen;->access$300(Lcom/sun/glass/ui/monocle/VNCScreen;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v8

    move-object v2, v8

    .line 130
    .local v2, "client":Ljava/nio/channels/SocketChannel;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Connection received from %s\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v2

    .line 131
    invoke-virtual {v13}, Ljava/nio/channels/SocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v13

    aput-object v13, v11, v12

    .line 130
    invoke-virtual {v8, v9, v10}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v8

    .line 133
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 134
    move-object v8, v1

    const-string v9, "RFB 003.003\n"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 135
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v8

    .line 136
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 138
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 139
    move-object v8, v1

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 140
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 141
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v8

    .line 142
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Client supports %s\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    const-string v13, "UTF-8"

    .line 143
    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    move-object v14, v1

    .line 144
    invoke-virtual {v13, v14}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 142
    invoke-virtual {v8, v9, v10}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v8

    .line 145
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 146
    move-object v8, v1

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 147
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v8

    .line 148
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 149
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 150
    move-object v8, v1

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 151
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 152
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Client share request: %d\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v1

    const/4 v14, 0x0

    .line 153
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    .line 152
    invoke-virtual {v8, v9, v10}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v8

    .line 154
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 155
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    iget v9, v9, Lcom/sun/glass/ui/monocle/VNCScreen;->width:I

    int-to-short v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 156
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    iget v9, v9, Lcom/sun/glass/ui/monocle/VNCScreen;->height:I

    int-to-short v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 157
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    iget v9, v9, Lcom/sun/glass/ui/monocle/VNCScreen;->depth:I

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 158
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    iget v9, v9, Lcom/sun/glass/ui/monocle/VNCScreen;->depth:I

    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 159
    move-object v8, v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    :goto_1
    int-to-byte v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 160
    move-object v8, v1

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 161
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    iget v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen;->depth:I

    const/16 v9, 0x20

    if-ne v8, v9, :cond_1

    .line 162
    move-object v8, v1

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 163
    move-object v8, v1

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 164
    move-object v8, v1

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 165
    move-object v8, v1

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 166
    move-object v8, v1

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 167
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 176
    :goto_2
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 177
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 178
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JavaFX on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Ljava/nio/channels/SocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 180
    .local v3, "name":Ljava/lang/String;
    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 181
    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 182
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v8

    .line 183
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 184
    new-instance v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;-><init>(Lcom/sun/glass/ui/monocle/VNCScreen;Lcom/sun/glass/ui/monocle/VNCScreen$1;)V

    move-object v4, v8

    .line 185
    .local v4, "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v8, v4

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->access$102(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SocketChannel;

    move-result-object v8

    .line 186
    new-instance v8, Ljava/lang/Thread;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v4

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v5, v8

    .line 187
    .local v5, "t":Ljava/lang/Thread;
    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 188
    move-object v8, v5

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VNC client connection from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    .line 189
    invoke-virtual {v10}, Ljava/nio/channels/SocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 190
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 191
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    invoke-static {v8}, Lcom/sun/glass/ui/monocle/VNCScreen;->access$500(Lcom/sun/glass/ui/monocle/VNCScreen;)Ljava/util/Set;

    move-result-object v8

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v6, v9

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    invoke-static {v8}, Lcom/sun/glass/ui/monocle/VNCScreen;->access$500(Lcom/sun/glass/ui/monocle/VNCScreen;)Ljava/util/Set;

    move-result-object v8

    move-object v9, v4

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 193
    move-object v8, v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    move-object v8, v0

    :try_start_2
    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ConnectionAccepter;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/sun/glass/ui/monocle/VNCScreen;->access$600(Lcom/sun/glass/ui/monocle/VNCScreen;Ljava/nio/channels/WritableByteChannel;)V

    .line 197
    goto/16 :goto_0

    .line 159
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    .end local v5    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 169
    :cond_1
    move-object v8, v1

    const/16 v9, 0x1f

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 170
    move-object v8, v1

    const/16 v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 171
    move-object v8, v1

    const/16 v9, 0x1f

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 172
    move-object v8, v1

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 173
    move-object v8, v1

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 174
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    goto/16 :goto_2

    .line 193
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    .restart local v5    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v7

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 195
    .end local v2    # "client":Ljava/nio/channels/SocketChannel;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "cc":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    .end local v5    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 196
    .local v2, "e":Ljava/io/IOException;
    move-object v8, v2

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 197
    goto/16 :goto_0
.end method
