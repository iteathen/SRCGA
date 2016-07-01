.class Lcom/sun/glass/ui/monocle/FBDevScreen;
.super Ljava/lang/Object;
.source "FBDevScreen.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/NativeScreen;


# instance fields
.field private consoleCursorBlink:I

.field private fb:Lcom/sun/glass/ui/monocle/Framebuffer;

.field private final fbDevPath:Ljava/lang/String;

.field private fbdev:Ljava/nio/channels/FileChannel;

.field private isShutdown:Z

.field private linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

.field private mappedFB:Ljava/nio/ByteBuffer;

.field private nativeFormat:I

.field private nativeHandle:J


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    .line 57
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v3, v1

    invoke-static {}, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v4

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->fbDevPath:Ljava/lang/String;

    .line 62
    move-object v3, v1

    :try_start_0
    new-instance v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/FBDevScreen;->fbDevPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    .line 63
    move-object v3, v1

    const-wide/16 v4, 0x1

    iput-wide v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->nativeHandle:J

    .line 64
    move-object v3, v1

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->nativeFormat:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    move-object v3, v1

    :try_start_1
    const-string v4, "/sys/devices/virtual/graphics/fbcon/cursor_blink"

    invoke-static {v4}, Lcom/sun/glass/ui/monocle/SysFS;->readInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->consoleCursorBlink:I

    .line 67
    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->consoleCursorBlink:I

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "/sys/devices/virtual/graphics/fbcon/cursor_blink"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 79
    .line 80
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 73
    .local v2, "e":Ljava/io/IOException;
    move-object v3, v1

    const/4 v4, 0x0

    :try_start_2
    iput v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->consoleCursorBlink:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 75
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 76
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    move-object v4, v2

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/IllegalStateException;

    throw v3
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/FBDevScreen;->lambda$new$90()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/glass/ui/monocle/FBDevScreen;->lambda$getScreenCapture$91(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;I)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljava/nio/ShortBuffer;Ljava/nio/IntBuffer;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/glass/ui/monocle/FBDevScreen;->lambda$getScreenCapture$92(Ljava/nio/ShortBuffer;Ljava/nio/IntBuffer;I)V

    return-void
.end method

.method private closeFBDev()V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->mappedFB:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->mappedFB:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->releaseMappedBuffer(Ljava/nio/ByteBuffer;)V

    .line 131
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->mappedFB:Ljava/nio/ByteBuffer;

    .line 138
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->close()V

    .line 139
    return-void

    .line 132
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->fbdev:Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_0

    .line 134
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->fbdev:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    :goto_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->fbdev:Ljava/nio/channels/FileChannel;

    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_1
.end method

.method private forEachPixelOffset(Ljava/util/function/IntConsumer;)V
    .locals 9

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v1, p1

    .local v1, "c":Ljava/util/function/IntConsumer;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getHeight()I

    move-result v6

    move v2, v6

    .line 165
    .local v2, "h":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getWidth()I

    move-result v6

    move v3, v6

    .line 166
    .local v3, "w":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 167
    const/4 v6, 0x0

    move v5, v6

    .local v5, "j":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 168
    move-object v6, v1

    move v7, v4

    move v8, v3

    mul-int/2addr v7, v8

    move v8, v5

    add-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 167
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 166
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    .end local v5    # "j":I
    :cond_1
    return-void
.end method

.method private getFramebuffer()Lcom/sun/glass/ui/monocle/Framebuffer;
    .locals 11

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    if-nez v2, :cond_1

    .line 146
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->getDepth()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->canDoubleBuffer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->getMappedBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->mappedFB:Ljava/nio/ByteBuffer;

    .line 151
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->mappedFB:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->mappedFB:Ljava/nio/ByteBuffer;

    move-object v1, v2

    .line 156
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :goto_0
    move-object v2, v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 157
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/monocle/Framebuffer;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getWidth()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getHeight()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getDepth()I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/sun/glass/ui/monocle/Framebuffer;-><init>(Ljava/nio/ByteBuffer;IIIZ)V

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    .line 158
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->getNextAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/Framebuffer;->setStartAddress(I)V

    .line 160
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    return-object v0

    .line 154
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method

.method private isFBDevOpen()Z
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->mappedFB:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->fbdev:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$getScreenCapture$91(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;I)V
    .locals 6

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "dst":Ljava/nio/IntBuffer;
    move-object v1, p1

    .local v1, "src":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v3

    return-void
.end method

.method private static synthetic lambda$getScreenCapture$92(Ljava/nio/ShortBuffer;Ljava/nio/IntBuffer;I)V
    .locals 8

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "src":Ljava/nio/ShortBuffer;
    move-object v1, p1

    .local v1, "dst":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v5

    move v3, v5

    .line 258
    .local v3, "p":S
    const/high16 v5, -0x1000000

    move v6, v3

    const v7, 0xf800

    and-int/2addr v6, v7

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move v6, v3

    const/16 v7, 0x7e0

    and-int/lit16 v6, v6, 0x7e0

    const/4 v7, 0x5

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    move v6, v3

    const/16 v7, 0x1f

    and-int/lit8 v6, v6, 0x1f

    const/4 v7, 0x3

    shl-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    move v4, v5

    .line 262
    .local v4, "pi":I
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v5

    .line 263
    return-void
.end method

.method private static synthetic lambda$new$90()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    const-string v0, "monocle.screen.fb"

    const-string v1, "/dev/fb0"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openFBDev()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->mappedFB:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 123
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->fbDevPath:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    move-object v1, v2

    .line 124
    .local v1, "fbdevPath":Ljava/nio/file/Path;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    sget-object v7, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->fbdev:Ljava/nio/channels/FileChannel;

    .line 126
    .end local v1    # "fbdevPath":Ljava/nio/file/Path;
    :cond_0
    return-void
.end method

.method private declared-synchronized writeBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->isDoubleBuffer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->vSync()V

    .line 228
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->mappedFB:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    .line 229
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/FBDevScreen;->isFBDevOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/FBDevScreen;->openFBDev()V

    .line 232
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->fbdev:Ljava/nio/channels/FileChannel;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->getNextAddress()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 233
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getFramebuffer()Lcom/sun/glass/ui/monocle/Framebuffer;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->fbdev:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/Framebuffer;->write(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_2
    :goto_0
    monitor-exit v4

    return-void

    .line 234
    :cond_3
    move-object v1, v0

    :try_start_1
    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->isDoubleBuffer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->next()V

    .line 236
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->vSync()V

    .line 237
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getFramebuffer()Lcom/sun/glass/ui/monocle/Framebuffer;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->getNextAddress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/Framebuffer;->setStartAddress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    throw v0
.end method


# virtual methods
.method public getDPI()I
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    const/16 v1, 0x60

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    return v0
.end method

.method public getDepth()I
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->getDepth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    return v0
.end method

.method public getNativeFormat()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->nativeFormat:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    return v0
.end method

.method public getNativeHandle()J
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->nativeHandle:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    return-wide v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    return v0
.end method

.method public declared-synchronized getScreenCapture()Ljava/nio/ByteBuffer;
    .locals 9

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v8, p0

    monitor-enter v8

    const/4 v5, 0x0

    move-object v1, v5

    .line 245
    .local v1, "ret":Ljava/nio/ByteBuffer;
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->getMappedBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v2, v5

    .line 246
    .local v2, "bb":Ljava/nio/ByteBuffer;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 247
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->getNativeOffset()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    .line 248
    move-object v5, v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 249
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getHeight()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v1, v5

    .line 250
    move-object v5, v1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    move-object v3, v5

    .line 251
    .local v3, "dst":Ljava/nio/IntBuffer;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getDepth()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    .line 252
    move-object v5, v2

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    move-object v4, v5

    .line 253
    .local v4, "src":Ljava/nio/IntBuffer;
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$2;->lambdaFactory$(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/util/function/IntConsumer;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->forEachPixelOffset(Ljava/util/function/IntConsumer;)V

    .line 254
    .line 266
    .end local v4    # "src":Ljava/nio/IntBuffer;
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->releaseMappedBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v3    # "dst":Ljava/nio/IntBuffer;
    :cond_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    monitor-exit v8

    return-object v0

    .line 255
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    .restart local v3    # "dst":Ljava/nio/IntBuffer;
    :cond_1
    move-object v5, v2

    :try_start_1
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    move-object v4, v5

    .line 256
    .local v4, "src":Ljava/nio/ShortBuffer;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/FBDevScreen$$Lambda$3;->lambdaFactory$(Ljava/nio/ShortBuffer;Ljava/nio/IntBuffer;)Ljava/util/function/IntConsumer;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->forEachPixelOffset(Ljava/util/function/IntConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "dst":Ljava/nio/IntBuffer;
    .end local v4    # "src":Ljava/nio/ShortBuffer;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    throw v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/FBDevScreen;->linuxFB:Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->getWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    return v0
.end method

.method public declared-synchronized shutdown()V
    .locals 6

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getFramebuffer()Lcom/sun/glass/ui/monocle/Framebuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/Framebuffer;->clearBufferContents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    move-object v3, v0

    :try_start_1
    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/FBDevScreen;->isFBDevOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/FBDevScreen;->writeBuffer()V

    .line 179
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/FBDevScreen;->closeFBDev()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->isShutdown:Z

    .line 185
    .line 186
    :goto_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->consoleCursorBlink:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    .line 188
    :try_start_3
    const-string v3, "/sys/devices/virtual/graphics/fbcon/cursor_blink"

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/FBDevScreen;->consoleCursorBlink:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    .line 193
    :cond_1
    :goto_1
    monitor-exit v5

    return-void

    .line 181
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 182
    .local v1, "e":Ljava/io/IOException;
    move-object v3, v1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_5
    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->isShutdown:Z

    .line 185
    goto :goto_0

    .line 184
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/FBDevScreen;->isShutdown:Z

    move-object v3, v2

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 175
    :catchall_1
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    throw v0

    .line 189
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 190
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method public declared-synchronized swapBuffers()V
    .locals 14

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object v13, p0

    monitor-enter v13

    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lcom/sun/glass/ui/monocle/FBDevScreen;->isShutdown:Z

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/FBDevScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getFramebuffer()Lcom/sun/glass/ui/monocle/Framebuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/Framebuffer;->hasReceivedData()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 220
    :cond_0
    move-object v6, v0

    :try_start_1
    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getFramebuffer()Lcom/sun/glass/ui/monocle/Framebuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/Framebuffer;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    .line 222
    :goto_0
    monitor-exit v13

    return-void

    .line 208
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/NativePlatform;->getCursor()Lcom/sun/glass/ui/monocle/NativeCursor;

    move-result-object v6

    move-object v1, v6

    .line 209
    .local v1, "cursor":Lcom/sun/glass/ui/monocle/NativeCursor;
    move-object v6, v1

    instance-of v6, v6, Lcom/sun/glass/ui/monocle/SoftwareCursor;

    if-eqz v6, :cond_2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/NativeCursor;->getVisiblity()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 210
    move-object v6, v1

    check-cast v6, Lcom/sun/glass/ui/monocle/SoftwareCursor;

    move-object v2, v6

    .line 211
    .local v2, "swCursor":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/SoftwareCursor;->getCursorBuffer()Ljava/nio/Buffer;

    move-result-object v6

    move-object v3, v6

    .line 212
    .local v3, "b":Ljava/nio/Buffer;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/SoftwareCursor;->getBestSize()Lcom/sun/glass/ui/Size;

    move-result-object v6

    move-object v4, v6

    .line 213
    .local v4, "size":Lcom/sun/glass/ui/Size;
    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/SoftwareCursor;->getRenderX()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/glass/ui/monocle/SoftwareCursor;->getRenderY()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Lcom/sun/glass/ui/Size;->width:I

    move-object v11, v4

    iget v11, v11, Lcom/sun/glass/ui/Size;->height:I

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v6 .. v12}, Lcom/sun/glass/ui/monocle/FBDevScreen;->uploadPixels(Ljava/nio/Buffer;IIIIF)V

    .line 216
    .end local v2    # "swCursor":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    .end local v3    # "b":Ljava/nio/Buffer;
    .end local v4    # "size":Lcom/sun/glass/ui/Size;
    :cond_2
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->writeBuffer()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    move-object v6, v0

    :try_start_3
    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getFramebuffer()Lcom/sun/glass/ui/monocle/Framebuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/Framebuffer;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    .line 222
    .end local v1    # "cursor":Lcom/sun/glass/ui/monocle/NativeCursor;
    :goto_1
    goto :goto_0

    .line 217
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 218
    .local v1, "e":Ljava/io/IOException;
    move-object v6, v1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    move-object v6, v0

    :try_start_5
    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getFramebuffer()Lcom/sun/glass/ui/monocle/Framebuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/Framebuffer;->reset()V

    .line 221
    goto :goto_1

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getFramebuffer()Lcom/sun/glass/ui/monocle/Framebuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/Framebuffer;->reset()V

    move-object v6, v5

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 205
    :catchall_1
    move-exception v0

    monitor-exit v13

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    throw v0
.end method

.method public declared-synchronized uploadPixels(Ljava/nio/Buffer;IIIIF)V
    .locals 15

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    move-object/from16 v1, p1

    .local v1, "b":Ljava/nio/Buffer;
    move/from16 v2, p2

    .local v2, "pX":I
    move/from16 v3, p3

    .local v3, "pY":I
    move/from16 v4, p4

    .local v4, "pWidth":I
    move/from16 v5, p5

    .local v5, "pHeight":I
    move/from16 v6, p6

    .local v6, "alpha":F
    move-object v14, p0

    monitor-enter v14

    move-object v7, v0

    :try_start_0
    invoke-direct {v7}, Lcom/sun/glass/ui/monocle/FBDevScreen;->getFramebuffer()Lcom/sun/glass/ui/monocle/Framebuffer;

    move-result-object v7

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/glass/ui/monocle/Framebuffer;->composePixels(Ljava/nio/Buffer;IIIIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit v14

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v14

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/FBDevScreen;
    throw v0
.end method
