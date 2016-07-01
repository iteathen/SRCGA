.class Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
.super Ljava/lang/Object;
.source "LinuxFrameBuffer.java"


# instance fields
.field private FBIO_WAITFORVSYNC:I

.field private bitDepth:I

.field private byteDepth:I

.field private fd:J

.field private height:I

.field private offsetX:I

.field private offsetX1:I

.field private offsetX2:I

.field private offsetY:I

.field private offsetY1:I

.field private offsetY2:I

.field private screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

.field private state:I

.field private system:Lcom/sun/glass/ui/monocle/LinuxSystem;

.field private width:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v1, p1

    .local v1, "devNode":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v4, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getLinuxSystem()Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    .line 49
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    const/16 v6, 0x46

    const/16 v7, 0x20

    const/4 v8, 0x4

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->IOW(III)I

    move-result v5

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->FBIO_WAITFORVSYNC:I

    .line 50
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v6, v1

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem;->open(Ljava/lang/String;I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->fd:J

    .line 51
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->fd:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 52
    new-instance v4, Ljava/io/IOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_0
    move-object v4, v0

    new-instance v5, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;-><init>()V

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    .line 55
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->fd:J

    const/16 v7, 0x4600

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v8, v8, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual/range {v4 .. v9}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->fd:J

    invoke-virtual {v4, v5, v6}, Lcom/sun/glass/ui/monocle/LinuxSystem;->close(J)I

    move-result v4

    .line 57
    new-instance v4, Ljava/io/IOException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getBitsPerPixel(J)I

    move-result v5

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->bitDepth:I

    .line 60
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->bitDepth:I

    const/4 v6, 0x3

    ushr-int/lit8 v5, v5, 0x3

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->byteDepth:I

    .line 61
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getXRes(J)I

    move-result v5

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    .line 62
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getYRes(J)I

    move-result v5

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->height:I

    .line 63
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v4, v5, v6}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getXResVirtual(J)I

    move-result v4

    move v2, v4

    .line 64
    .local v2, "virtualWidth":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v5, v5, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v4, v5, v6}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getYResVirtual(J)I

    move-result v4

    move v3, v4

    .line 65
    .local v3, "virtualHeight":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getOffsetX(J)I

    move-result v5

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX:I

    .line 66
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getOffsetY(J)I

    move-result v5

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY:I

    .line 67
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->height:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_5

    .line 68
    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->height:I

    if-lt v4, v5, :cond_3

    .line 69
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY:I

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY1:I

    .line 70
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY2:I

    .line 78
    :goto_0
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX:I

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX2:I

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX1:I

    .line 79
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->state:I

    .line 94
    :cond_2
    :goto_1
    return-void

    .line 71
    :cond_3
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY:I

    sub-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->height:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_4

    .line 72
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY:I

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY1:I

    .line 73
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->height:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY2:I

    goto :goto_0

    .line 75
    :cond_4
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY1:I

    .line 76
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->byteDepth:I

    mul-int/2addr v5, v6

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY2:I

    goto :goto_0

    .line 80
    :cond_5
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_2

    .line 81
    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    if-lt v4, v5, :cond_6

    .line 82
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX:I

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX1:I

    .line 83
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX2:I

    .line 91
    :goto_2
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY:I

    move-object v10, v5

    move v11, v6

    move v5, v11

    move-object v6, v10

    move v7, v11

    iput v7, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY2:I

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY1:I

    .line 92
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->state:I

    goto :goto_1

    .line 84
    :cond_6
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX:I

    sub-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_7

    .line 85
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX:I

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX1:I

    .line 86
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->height:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX2:I

    goto :goto_2

    .line 88
    :cond_7
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX1:I

    .line 89
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->byteDepth:I

    mul-int/2addr v5, v6

    iput v5, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX2:I

    goto :goto_2
.end method


# virtual methods
.method canDoubleBuffer()Z
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->state:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method close()V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->fd:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/monocle/LinuxSystem;->close(J)I

    move-result v1

    .line 168
    return-void
.end method

.method getDepth()I
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->bitDepth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    return v0
.end method

.method getHeight()I
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    return v0
.end method

.method getMappedBuffer()Ljava/nio/ByteBuffer;
    .locals 18

    .prologue
    .line 150
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getXResVirtual(J)I

    move-result v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v7, v7, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    .line 151
    invoke-virtual {v6, v7, v8}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getYResVirtual(J)I

    move-result v6

    mul-int/2addr v5, v6

    move-object v6, v1

    iget v6, v6, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->byteDepth:I

    mul-int/2addr v5, v6

    move v2, v5

    .line 153
    .local v2, "mappedFBSize":I
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    const-wide/16 v6, 0x0

    move v8, v2

    int-to-long v8, v8

    const-wide/16 v10, 0x2

    const-wide/16 v12, 0x1

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->fd:J

    const-wide/16 v16, 0x0

    invoke-virtual/range {v5 .. v17}, Lcom/sun/glass/ui/monocle/LinuxSystem;->mmap(JJJJJJ)J

    move-result-wide v5

    move-wide v3, v5

    .line 156
    .local v3, "addr":J
    move-wide v5, v3

    const-wide v7, 0xffffffffL

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 157
    invoke-static {}, Lcom/sun/glass/ui/monocle/C;->getC()Lcom/sun/glass/ui/monocle/C;

    move-result-object v5

    move-wide v6, v3

    move v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/C;->NewDirectByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v1, v5

    .line 159
    .end local v1    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    :cond_0
    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_0
.end method

.method getNativeOffset()I
    .locals 9

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getOffsetX(J)I

    move-result v3

    move v1, v3

    .line 102
    .local v1, "nativeOffsetX":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getOffsetY(J)I

    move-result v3

    move v2, v3

    .line 103
    .local v2, "nativeOffsetY":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->fd:J

    const/16 v6, 0x4600

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v7, v7, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual/range {v3 .. v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v3

    if-nez v3, :cond_0

    .line 104
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getOffsetX(J)I

    move-result v3

    move v1, v3

    .line 105
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->getOffsetY(J)I

    move-result v3

    move v2, v3

    .line 107
    :cond_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    mul-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->byteDepth:I

    mul-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    return v0
.end method

.method getNextAddress()I
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->state:I

    packed-switch v1, :pswitch_data_0

    .line 117
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->byteDepth:I

    mul-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    :goto_0
    return v0

    .line 113
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    :pswitch_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX2:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY2:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->byteDepth:I

    mul-int/2addr v1, v2

    move v0, v1

    goto :goto_0

    .line 115
    :pswitch_1
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX1:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY1:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->byteDepth:I

    mul-int/2addr v1, v2

    move v0, v1

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getWidth()I
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    return v0
.end method

.method isDoubleBuffer()Z
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->state:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method next()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->state:I

    if-eqz v3, :cond_2

    .line 124
    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 125
    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX2:I

    move v1, v3

    .line 126
    .local v1, "newOffsetX":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY2:I

    move v2, v3

    .line 131
    .local v2, "newOffsetY":I
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    const/16 v6, 0x10

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setActivate(JI)V

    .line 132
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->setOffset(JII)V

    .line 133
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->fd:J

    const/16 v6, 0x4606

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->screenInfo:Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;

    iget-wide v7, v7, Lcom/sun/glass/ui/monocle/LinuxSystem$FbVarScreenInfo;->p:J

    invoke-virtual/range {v3 .. v8}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->state:I

    .line 136
    new-instance v3, Ljava/io/IOException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    .end local v1    # "newOffsetX":I
    .end local v2    # "newOffsetY":I
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX1:I

    move v1, v3

    .line 129
    .restart local v1    # "newOffsetX":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY1:I

    move v2, v3

    .restart local v2    # "newOffsetY":I
    goto :goto_0

    .line 138
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetX:I

    .line 139
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->offsetY:I

    .line 140
    move-object v3, v0

    const/4 v4, 0x3

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->state:I

    rsub-int/lit8 v4, v5, 0x3

    iput v4, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->state:I

    .line 143
    .end local v1    # "newOffsetX":I
    .end local v2    # "newOffsetY":I
    :cond_2
    return-void
.end method

.method releaseMappedBuffer(Ljava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    .line 163
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v2, p1

    .local v2, "b":Ljava/nio/ByteBuffer;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    invoke-static {}, Lcom/sun/glass/ui/monocle/C;->getC()Lcom/sun/glass/ui/monocle/C;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/C;->GetDirectBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/monocle/LinuxSystem;->munmap(JJ)I

    move-result v3

    .line 164
    return-void
.end method

.method vSync()V
    .locals 7

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->system:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->fd:J

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/LinuxFrameBuffer;->FBIO_WAITFORVSYNC:I

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/glass/ui/monocle/LinuxSystem;->ioctl(JIJ)I

    move-result v1

    .line 147
    return-void
.end method
