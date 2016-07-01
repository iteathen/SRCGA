.class Lcom/sun/glass/ui/monocle/OMAPCursor;
.super Lcom/sun/glass/ui/monocle/NativeCursor;
.source "OMAPCursor.java"


# static fields
.field private static final CURSOR_HEIGHT:I = 0x10

.field private static final CURSOR_WIDTH:I = 0x10

.field private static final INT_KEY:I = 0x12121212

.field private static final SHORT_KEY:I = 0xabab


# instance fields
.field private cursorBuffer:Ljava/nio/Buffer;

.field private cursorDepth:I

.field private cursorX:I

.field private cursorY:I

.field private hotspotX:I

.field private hotspotY:I

.field private offsetCursor:[B

.field private offsetCursorBuffer:Ljava/nio/Buffer;

.field private offsetX:I

.field private offsetY:I

.field private screenHeight:I

.field private screenWidth:I

.field private transparentPixel:I


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    .line 57
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/OMAPCursor;
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/NativeCursor;-><init>()V

    .line 59
    :try_start_0
    const-string v3, "/sys/class/graphics/fb1/virtual_size"

    const-string v4, "16,16"

    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "/sys/devices/platform/omapdss/overlay1/output_size"

    const-string v4, "16,16"

    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "/sys/devices/platform/omapdss/manager0/trans_key_enabled"

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "/sys/devices/platform/omapdss/manager0/trans_key_type"

    const-string v4, "video-source"

    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    move-object v3, v1

    const-string v4, "/sys/class/graphics/fb1/bits_per_pixel"

    invoke-static {v4}, Lcom/sun/glass/ui/monocle/SysFS;->readInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorDepth:I

    .line 66
    move-object v3, v1

    iget v3, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorDepth:I

    sparse-switch v3, :sswitch_data_0

    .line 74
    new-instance v3, Ljava/io/IOException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot use an OMAP cursor with a bit depth of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    iget v6, v6, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorDepth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 81
    .local v2, "e":Ljava/io/IOException;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Failed to initialize OMAP cursor"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v3

    move-object v2, v3

    .line 85
    .local v2, "screen":Lcom/sun/glass/ui/monocle/NativeScreen;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->screenWidth:I

    .line 86
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->screenHeight:I

    .line 87
    return-void

    .line 68
    .end local v2    # "screen":Lcom/sun/glass/ui/monocle/NativeScreen;
    :sswitch_0
    move-object v3, v1

    const v4, 0xabab

    :try_start_1
    iput v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->transparentPixel:I

    .line 69
    .line 78
    :goto_1
    const-string v3, "/sys/devices/platform/omapdss/manager0/trans_key_value"

    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/monocle/OMAPCursor;->transparentPixel:I

    int-to-long v4, v4

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    goto :goto_0

    .line 71
    :sswitch_1
    move-object v3, v1

    const v4, 0x12121212

    iput v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->transparentPixel:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    goto :goto_1

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateImage(Z)V
    .locals 13

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPCursor;
    move v1, p1

    .local v1, "always":Z
    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorX:I

    add-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/OMAPCursor;->screenWidth:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v5

    .line 109
    .local v2, "newOffsetX":I
    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorY:I

    add-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/OMAPCursor;->screenHeight:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v5

    .line 110
    .local v3, "newOffsetY":I
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetX:I

    if-ne v5, v6, :cond_0

    move v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetY:I

    if-ne v5, v6, :cond_0

    move v5, v1

    if-eqz v5, :cond_1

    .line 111
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorBuffer:Ljava/nio/Buffer;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetCursorBuffer:Ljava/nio/Buffer;

    move v7, v2

    move v8, v3

    const/16 v9, 0x10

    const/16 v10, 0x10

    move-object v11, v0

    iget v11, v11, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorDepth:I

    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/OMAPCursor;->transparentPixel:I

    invoke-static/range {v5 .. v12}, Lcom/sun/glass/ui/monocle/NativeCursors;->offsetCursor(Ljava/nio/Buffer;Ljava/nio/Buffer;IIIIII)V

    .line 115
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetX:I

    .line 116
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetY:I

    .line 118
    :try_start_0
    const-string v5, "/dev/fb1"

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetCursor:[B

    invoke-static {v5, v6}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 123
    :cond_1
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 120
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Failed to write OMAP cursor image"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getBestSize()Lcom/sun/glass/ui/Size;
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPCursor;
    new-instance v1, Lcom/sun/glass/ui/Size;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/Size;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/OMAPCursor;
    return-object v0
.end method

.method setHotSpot(II)V
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPCursor;
    move v1, p1

    .local v1, "hotspotX":I
    move v2, p2

    .local v2, "hotspotY":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->hotspotX:I

    .line 156
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->hotspotY:I

    .line 157
    return-void
.end method

.method setImage([B)V
    .locals 7

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPCursor;
    move-object v1, p1

    .local v1, "cursorImage":[B
    move-object v3, v1

    array-length v3, v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 129
    .local v2, "bb":Ljava/nio/ByteBuffer;
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorDepth:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    :goto_0
    iput-object v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorBuffer:Ljava/nio/Buffer;

    .line 130
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorBuffer:Ljava/nio/Buffer;

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorDepth:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/OMAPCursor;->transparentPixel:I

    invoke-static {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/NativeCursors;->colorKeyCursor([BLjava/nio/Buffer;II)V

    .line 133
    move-object v3, v0

    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetCursor:[B

    .line 134
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetCursor:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 135
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorDepth:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    :goto_1
    iput-object v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetCursorBuffer:Ljava/nio/Buffer;

    .line 136
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/OMAPCursor;->updateImage(Z)V

    .line 137
    return-void

    .line 129
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    goto :goto_0

    .line 135
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    goto :goto_1
.end method

.method setLocation(II)V
    .locals 9

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPCursor;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorX:I

    .line 142
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorY:I

    .line 143
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/OMAPCursor;->updateImage(Z)V

    .line 145
    :try_start_0
    const-string v4, "/sys/devices/platform/omapdss/overlay1/position"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorX:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/OMAPCursor;->hotspotX:I

    sub-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetX:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/OMAPCursor;->cursorY:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/OMAPCursor;->hotspotY:I

    sub-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/OMAPCursor;->offsetY:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 149
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Failed to set OMAP cursor position"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setVisibility(Z)V
    .locals 10

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPCursor;
    move v1, p1

    .local v1, "visibility":Z
    :try_start_0
    const-string v3, "/sys/devices/platform/omapdss/overlay1/enabled"

    move v4, v1

    if-eqz v4, :cond_0

    const-string v4, "1"

    :goto_0
    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    :goto_1
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/OMAPCursor;->isVisible:Z

    .line 104
    return-void

    .line 97
    :cond_0
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 100
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Failed to %s OMAP cursor\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    if-eqz v8, :cond_1

    const-string v8, "enable"

    :goto_2
    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v8, "disable"

    goto :goto_2
.end method

.method shutdown()V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPCursor;
    :try_start_0
    const-string v2, "/sys/devices/platform/omapdss/overlay1/enabled"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 164
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to shut down OMAP cursor"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
