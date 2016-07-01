.class Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
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
    name = "ClientConnection"
.end annotation


# instance fields
.field private descriptor:Ljava/lang/String;

.field private socket:Ljava/nio/channels/SocketChannel;

.field final synthetic this$0:Lcom/sun/glass/ui/monocle/VNCScreen;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/monocle/VNCScreen;)V
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/glass/ui/monocle/VNCScreen;Lcom/sun/glass/ui/monocle/VNCScreen$1;)V
    .locals 5

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/glass/ui/monocle/VNCScreen;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/glass/ui/monocle/VNCScreen$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;-><init>(Lcom/sun/glass/ui/monocle/VNCScreen;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;)Ljava/nio/channels/SocketChannel;
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    return-object v0
.end method

.method static synthetic access$102(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SocketChannel;
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v1, p1

    .local v1, "x1":Ljava/nio/channels/SocketChannel;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->descriptor:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->lambda$run$116()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/glass/ui/monocle/MouseState;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->lambda$run$117(Lcom/sun/glass/ui/monocle/MouseState;)V

    return-void
.end method

.method private synthetic lambda$run$116()V
    .locals 5

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/VNCScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/Framebuffer;->hasReceivedData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    .line 259
    :goto_0
    return-void

    .line 254
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    invoke-static {v2, v3}, Lcom/sun/glass/ui/monocle/VNCScreen;->access$600(Lcom/sun/glass/ui/monocle/VNCScreen;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 257
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/glass/ui/monocle/VNCScreen;->access$700(Lcom/sun/glass/ui/monocle/VNCScreen;Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private static synthetic lambda$run$117(Lcom/sun/glass/ui/monocle/MouseState;)V
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "state":Lcom/sun/glass/ui/monocle/MouseState;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 207
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;
    const/16 v8, 0x20

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v1, v8

    .line 208
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v8, v1

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 210
    move-object v8, v0

    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v9}, Ljava/nio/channels/SocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->descriptor:Ljava/lang/String;

    .line 212
    :goto_0
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 213
    move-object v8, v1

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 214
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 215
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 302
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Unknown message %d from client %s\n"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v1

    const/4 v14, 0x0

    .line 304
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/SocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v13

    aput-object v13, v11, v12

    .line 302
    invoke-virtual {v8, v9, v10}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v8

    goto :goto_0

    .line 218
    :pswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 219
    move-object v8, v1

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 220
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 221
    goto :goto_0

    .line 223
    :pswitch_1
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 224
    move-object v8, v1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 225
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 227
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    move v2, v8

    .line 228
    .local v2, "colorMapEntryCount":I
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_1
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_0

    .line 229
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 230
    move-object v8, v1

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 231
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 233
    :cond_0
    goto/16 :goto_0

    .line 236
    .end local v2    # "colorMapEntryCount":I
    .end local v3    # "i":I
    :pswitch_2
    move-object v8, v1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    move v3, v8

    .line 237
    .local v3, "encodingCount":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_2
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 238
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 239
    move-object v8, v1

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 240
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 243
    .end local v3    # "encodingCount":I
    .end local v4    # "i":I
    :cond_1
    :pswitch_3
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 244
    move-object v8, v1

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 245
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 246
    move-object v8, v0

    invoke-static {v8}, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection$$Lambda$1;->lambdaFactory$(Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-static {v8}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 260
    goto/16 :goto_0

    .line 262
    :pswitch_4
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 263
    move-object v8, v1

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 264
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 265
    goto/16 :goto_0

    .line 267
    :pswitch_5
    move-object v8, v1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    move v4, v8

    .line 268
    .local v4, "x":I
    move-object v8, v1

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 269
    move-object v8, v1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 270
    move-object v8, v1

    invoke-static {v8}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v8

    move-object v5, v8

    .line 271
    .local v5, "buttons":Ljava/util/BitSet;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 272
    move-object v8, v1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 273
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 274
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    move v6, v8

    .line 275
    .local v6, "y":I
    new-instance v8, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    move-object v7, v8

    .line 276
    .local v7, "state":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v8, v7

    move v9, v4

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/MouseState;->setX(I)V

    .line 277
    move-object v8, v7

    move v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/MouseState;->setY(I)V

    .line 278
    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 279
    move-object v8, v7

    const/16 v9, 0xd4

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/MouseState;->pressButton(I)V

    .line 281
    :cond_2
    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 282
    move-object v8, v7

    const/16 v9, 0xd6

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/MouseState;->pressButton(I)V

    .line 284
    :cond_3
    move-object v8, v5

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 285
    move-object v8, v7

    const/16 v9, 0xd5

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/MouseState;->pressButton(I)V

    .line 287
    :cond_4
    move-object v8, v7

    invoke-static {v8}, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection$$Lambda$2;->lambdaFactory$(Lcom/sun/glass/ui/monocle/MouseState;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-static {v8}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 288
    goto/16 :goto_0

    .line 291
    .end local v4    # "x":I
    .end local v5    # "buttons":Ljava/util/BitSet;
    .end local v6    # "y":I
    .end local v7    # "state":Lcom/sun/glass/ui/monocle/MouseState;
    :pswitch_6
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 292
    move-object v8, v1

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 293
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 294
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    move v4, v8

    .line 295
    .local v4, "textLength":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_3
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_5

    .line 296
    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v8

    .line 297
    move-object v8, v1

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v8

    .line 298
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->socket:Ljava/nio/channels/SocketChannel;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 295
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 300
    :cond_5
    goto/16 :goto_0

    .line 307
    .end local v4    # "textLength":I
    .end local v5    # "i":I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 308
    .local v2, "e":Ljava/io/IOException;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;->this$0:Lcom/sun/glass/ui/monocle/VNCScreen;

    move-object v9, v0

    move-object v10, v2

    invoke-static {v8, v9, v10}, Lcom/sun/glass/ui/monocle/VNCScreen;->access$700(Lcom/sun/glass/ui/monocle/VNCScreen;Lcom/sun/glass/ui/monocle/VNCScreen$ClientConnection;Ljava/io/IOException;)V

    .line 310
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
