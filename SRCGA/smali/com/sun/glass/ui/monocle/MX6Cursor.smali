.class Lcom/sun/glass/ui/monocle/MX6Cursor;
.super Lcom/sun/glass/ui/monocle/NativeCursor;
.source "MX6Cursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;,
        Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;,
        Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;
    }
.end annotation


# static fields
.field private static final CURSOR_HEIGHT:I = 0x10

.field private static final CURSOR_WIDTH:I = 0x10

.field private static final SHORT_KEY:I = 0xabab


# instance fields
.field private alpha:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;

.field private cursorBuffer:Ljava/nio/Buffer;

.field private cursorX:I

.field private cursorY:I

.field private fd:J

.field private hotspotX:I

.field private hotspotY:I

.field private offsetCursorBuffer:Ljava/nio/Buffer;

.field private offsetCursorByteBuffer:Ljava/nio/ByteBuffer;

.field private offsetX:I

.field private offsetY:I

.field private pos:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;

.field private screenHeight:I

.field private screenWidth:I

.field private system:Lcom/sun/glass/ui/monocle/LinuxSystem;


# direct methods
.method constructor <init>()V
    .locals 12

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MX6Cursor;
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/glass/ui/monocle/NativeCursor;-><init>()V

    .line 55
    move-object v5, v1

    new-instance v6, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;-><init>()V

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->pos:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;

    .line 56
    move-object v5, v1

    new-instance v6, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;-><init>()V

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->alpha:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;

    .line 57
    move-object v5, v1

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    .line 113
    :try_start_0
    const-string v5, "/sys/class/graphics/fb1/blank"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/sun/glass/ui/monocle/SysFS;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    move-object v5, v1

    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getLinuxSystem()Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    .line 115
    new-instance v5, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;-><init>()V

    move-object v2, v5

    .line 116
    .local v2, "screen":Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    const-string v7, "/dev/fb1"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->open(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    .line 117
    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 118
    new-instance v5, Ljava/io/IOException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v2    # "screen":Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 147
    .local v2, "e":Ljava/io/IOException;
    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 148
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getLinuxSystem()Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem;->close(J)I

    move-result v5

    .line 149
    move-object v5, v1

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    .line 151
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 152
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Failed to initialize i.MX6 cursor"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v5

    move-object v2, v5

    .line 155
    .local v2, "screen":Lcom/sun/glass/ui/monocle/NativeScreen;
    move-object v5, v1

    move-object v6, v2

    invoke-interface {v6}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v6

    iput v6, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->screenWidth:I

    .line 156
    move-object v5, v1

    move-object v6, v2

    invoke-interface {v6}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v6

    iput v6, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->screenHeight:I

    .line 157
    return-void

    .line 120
    .local v2, "screen":Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;
    :cond_1
    move-object v5, v1

    :try_start_1
    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    const/16 v8, 0x4600

    move-object v9, v2

    iget-wide v9, v9, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v5

    .line 121
    move-object v5, v2

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setRes(JII)V

    .line 122
    move-object v5, v2

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setVirtualRes(JII)V

    .line 123
    move-object v5, v2

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setOffset(JII)V

    .line 124
    move-object v5, v2

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setActivate(JI)V

    .line 126
    move-object v5, v2

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    const/16 v8, 0x10

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setBitsPerPixel(JI)V

    .line 127
    move-object v5, v2

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    const/4 v8, 0x5

    const/16 v9, 0xb

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setRed(JII)V

    .line 128
    move-object v5, v2

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    const/4 v8, 0x6

    const/4 v9, 0x5

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setGreen(JII)V

    .line 129
    move-object v5, v2

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setBlue(JII)V

    .line 130
    move-object v5, v2

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setTransp(JII)V

    .line 131
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    const/16 v8, 0x4601

    move-object v9, v2

    iget-wide v9, v9, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v5

    .line 132
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    const/16 v8, 0x4611

    const-wide/16 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v5

    .line 134
    new-instance v5, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;-><init>()V

    move-object v3, v5

    .line 135
    .local v3, "key":Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;->setEnable(I)V

    .line 136
    move-object v5, v3

    const v6, 0xad755a

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;->setColorKey(I)V

    .line 142
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    const/16 v6, 0x46

    const/16 v7, 0x22

    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;->sizeof()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->IOW(III)I

    move-result v5

    move v4, v5

    .line 143
    .local v4, "MXCFB_SET_CLR_KEY":I
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    move v8, v4

    move-object v9, v3

    iget-wide v9, v9, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;->p:J

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v5

    if-gez v5, :cond_2

    .line 144
    new-instance v5, Ljava/io/IOException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->errno()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->strerror(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :cond_2
    goto/16 :goto_0
.end method

.method private updateImage(Z)V
    .locals 14

    .prologue
    .line 175
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MX6Cursor;
    move v2, p1

    .local v2, "always":Z
    move-object v5, v1

    iget-boolean v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->isVisible:Z

    if-eqz v5, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->cursorBuffer:Ljava/nio/Buffer;

    if-eqz v5, :cond_1

    .line 177
    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v7, v1

    iget v7, v7, Lcom/sun/glass/ui/monocle/MX6Cursor;->cursorX:I

    add-int/2addr v6, v7

    move-object v7, v1

    iget v7, v7, Lcom/sun/glass/ui/monocle/MX6Cursor;->screenWidth:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v5

    .line 178
    .local v3, "newOffsetX":I
    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v7, v1

    iget v7, v7, Lcom/sun/glass/ui/monocle/MX6Cursor;->cursorY:I

    add-int/2addr v6, v7

    move-object v7, v1

    iget v7, v7, Lcom/sun/glass/ui/monocle/MX6Cursor;->screenHeight:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v5

    .line 179
    .local v4, "newOffsetY":I
    move v5, v3

    move-object v6, v1

    iget v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetX:I

    if-ne v5, v6, :cond_0

    move v5, v4

    move-object v6, v1

    iget v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetY:I

    if-ne v5, v6, :cond_0

    move v5, v2

    if-eqz v5, :cond_1

    .line 180
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->cursorBuffer:Ljava/nio/Buffer;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetCursorBuffer:Ljava/nio/Buffer;

    move v7, v3

    move v8, v4

    const/16 v9, 0x10

    const/16 v10, 0x10

    const/16 v11, 0x10

    const v12, 0xabab

    invoke-static/range {v5 .. v12}, Lcom/sun/glass/ui/monocle/NativeCursors;->offsetCursor(Ljava/nio/Buffer;Ljava/nio/Buffer;IIIIII)V

    .line 184
    move-object v5, v1

    move v6, v3

    iput v6, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetX:I

    .line 185
    move-object v5, v1

    move v6, v4

    iput v6, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetY:I

    .line 186
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/monocle/LinuxSystem;->lseek(JJI)J

    move-result-wide v5

    .line 187
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetCursorByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetCursorByteBuffer:Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    .line 187
    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/monocle/LinuxSystem;->write(JLjava/nio/ByteBuffer;II)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 189
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write to i.MX6 cursor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    .line 190
    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    .end local v3    # "newOffsetX":I
    .end local v4    # "newOffsetY":I
    :cond_1
    return-void
.end method


# virtual methods
.method getBestSize()Lcom/sun/glass/ui/Size;
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor;
    new-instance v1, Lcom/sun/glass/ui/Size;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/Size;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MX6Cursor;
    return-object v0
.end method

.method setHotSpot(II)V
    .locals 5

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor;
    move v1, p1

    .local v1, "hotspotX":I
    move v2, p2

    .local v2, "hotspotY":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->hotspotX:I

    .line 222
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->hotspotY:I

    .line 223
    return-void
.end method

.method setImage([B)V
    .locals 7

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor;
    move-object v1, p1

    .local v1, "cursorImage":[B
    move-object v3, v1

    array-length v3, v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 200
    .local v2, "bb":Ljava/nio/ByteBuffer;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->cursorBuffer:Ljava/nio/Buffer;

    .line 201
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MX6Cursor;->cursorBuffer:Ljava/nio/Buffer;

    const/16 v5, 0x10

    const v6, 0xabab

    invoke-static {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/NativeCursors;->colorKeyCursor([BLjava/nio/Buffer;II)V

    .line 203
    move-object v3, v0

    move-object v4, v1

    array-length v4, v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetCursorByteBuffer:Ljava/nio/ByteBuffer;

    .line 204
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetCursorByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 205
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetCursorByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->offsetCursorBuffer:Ljava/nio/Buffer;

    .line 206
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/MX6Cursor;->updateImage(Z)V

    .line 207
    return-void
.end method

.method setLocation(II)V
    .locals 10

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/glass/ui/monocle/MX6Cursor;->cursorX:I

    .line 212
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/glass/ui/monocle/MX6Cursor;->cursorY:I

    .line 213
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/MX6Cursor;->updateImage(Z)V

    .line 214
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MX6Cursor;->pos:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;->set(II)V

    .line 215
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    const/16 v5, 0x46

    const/16 v6, 0x24

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/MX6Cursor;->pos:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;

    invoke-virtual {v7}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;->sizeof()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem;->IOWR(III)I

    move-result v4

    move v3, v4

    .line 216
    .local v3, "MXCFB_SET_OVERLAY_POS":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/MX6Cursor;->pos:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;->p:J

    invoke-virtual/range {v4 .. v9}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v4

    .line 217
    return-void
.end method

.method setVisibility(Z)V
    .locals 9

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor;
    move v1, p1

    .local v1, "visibility":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->alpha:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;->setEnable(I)V

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->alpha:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;

    move v4, v1

    if-eqz v4, :cond_0

    const/16 v4, 0xff

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;->setAlpha(I)V

    .line 168
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    const/16 v4, 0x46

    const/16 v5, 0x21

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/MX6Cursor;->alpha:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;->sizeof()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/LinuxSystem;->IOW(III)I

    move-result v3

    move v2, v3

    .line 169
    .local v2, "MXCFB_SET_GBL_ALPHA":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/MX6Cursor;->fd:J

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/MX6Cursor;->alpha:Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;

    iget-wide v7, v7, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBGblAlpha;->p:J

    invoke-virtual/range {v3 .. v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v3

    .line 170
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/sun/glass/ui/monocle/MX6Cursor;->isVisible:Z

    .line 171
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/MX6Cursor;->updateImage(Z)V

    .line 172
    return-void

    .line 167
    .end local v2    # "MXCFB_SET_GBL_ALPHA":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method shutdown()V
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MX6Cursor;->setVisibility(Z)V

    .line 228
    return-void
.end method
