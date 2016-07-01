.class final Lcom/sun/glass/ui/lens/LensCursor;
.super Lcom/sun/glass/ui/Cursor;
.source "LensCursor.java"


# instance fields
.field private ptr:J


# direct methods
.method protected constructor <init>(I)V
    .locals 6

    .prologue
    .line 43
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensCursor;
    move v2, p1

    .local v2, "type":I
    move-object v3, v1

    move v4, v2

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/Cursor;-><init>(I)V

    .line 40
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/glass/ui/lens/LensCursor;->ptr:J

    .line 45
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 46
    move-object v3, v1

    move-object v4, v1

    move v5, v2

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/lens/LensCursor;->_createNativeCursorByType(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/glass/ui/lens/LensCursor;->ptr:J

    .line 48
    :cond_0
    return-void
.end method

.method protected constructor <init>(IILcom/sun/glass/ui/Pixels;)V
    .locals 9

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensCursor;
    move v2, p1

    .local v2, "x":I
    move v3, p2

    .local v3, "y":I
    move-object v4, p3

    .local v4, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v5, v1

    move v6, v2

    move v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/Cursor;-><init>(IILcom/sun/glass/ui/Pixels;)V

    .line 40
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/sun/glass/ui/lens/LensCursor;->ptr:J

    .line 52
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/lens/LensCursor;->getNativeCursor()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/glass/ui/lens/LensCursor;->ptr:J

    .line 53
    return-void
.end method

.method private native _createNativeCursorByType(I)J
.end method

.method private native _createNativeCursorBytes(II[BII)J
.end method

.method private native _createNativeCursorDirect(IILjava/nio/Buffer;III)J
.end method

.method private native _createNativeCursorInts(II[III)J
.end method

.method private native _releaseNativeCursor(J)V
.end method

.method private native _setNativeCursor(J)V
.end method

.method private static native _setVisible(Z)V
.end method

.method static getBestSize_impl(II)Lcom/sun/glass/ui/Size;
    .locals 7

    .prologue
    .line 116
    move v0, p0

    .local v0, "width":I
    move v1, p1

    .local v1, "height":I
    new-instance v2, Lcom/sun/glass/ui/Size;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x10

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/Size;-><init>(II)V

    move-object v0, v2

    .end local v0    # "width":I
    return-object v0
.end method

.method static setVisible_impl(Z)V
    .locals 2

    .prologue
    .line 112
    move v0, p0

    .local v0, "visible":Z
    move v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/lens/LensCursor;->_setVisible(Z)V

    .line 113
    return-void
.end method


# virtual methods
.method protected _createCursor(IILcom/sun/glass/ui/Pixels;)J
    .locals 19

    .prologue
    .line 69
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensCursor;
    move/from16 v2, p1

    .local v2, "x":I
    move/from16 v3, p2

    .local v3, "y":I
    move-object/from16 v4, p3

    .local v4, "pixels":Lcom/sun/glass/ui/Pixels;
    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 70
    .local v5, "res":J
    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v12

    move-object v7, v12

    .line 71
    .local v7, "data":Ljava/nio/Buffer;
    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v12

    move v8, v12

    .line 72
    .local v8, "width":I
    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v12

    move v9, v12

    .line 74
    .local v9, "height":I
    move-object v12, v7

    if-eqz v12, :cond_0

    .line 75
    move-object v12, v7

    invoke-virtual {v12}, Ljava/nio/Buffer;->isDirect()Z

    move-result v12

    if-nez v12, :cond_2

    .line 76
    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/glass/ui/Pixels;->getBytesPerComponent()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_1

    .line 77
    move-object v12, v7

    invoke-virtual {v12}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/IntBuffer;

    check-cast v12, Ljava/nio/IntBuffer;

    move-object v10, v12

    .line 78
    .local v10, "ints":Ljava/nio/IntBuffer;
    move-object v12, v10

    invoke-virtual {v12}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v12

    move-object v11, v12

    .line 79
    .local v11, "intArray":[I
    move-object v12, v1

    move v13, v2

    move v14, v3

    move-object v15, v11

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Lcom/sun/glass/ui/lens/LensCursor;->_createNativeCursorInts(II[III)J

    move-result-wide v12

    move-wide v5, v12

    .line 91
    .end local v10    # "ints":Ljava/nio/IntBuffer;
    .end local v11    # "intArray":[I
    :cond_0
    :goto_0
    move-wide v12, v5

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/glass/ui/lens/LensCursor;
    return-wide v1

    .line 80
    .restart local v1    # "this":Lcom/sun/glass/ui/lens/LensCursor;
    :cond_1
    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/glass/ui/Pixels;->getBytesPerComponent()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 81
    move-object v12, v7

    invoke-virtual {v12}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    check-cast v12, Ljava/nio/ByteBuffer;

    move-object v10, v12

    .line 82
    .local v10, "bytes":Ljava/nio/ByteBuffer;
    move-object v12, v10

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    move-object v11, v12

    .line 83
    .local v11, "byteArray":[B
    move-object v12, v1

    move v13, v2

    move v14, v3

    move-object v15, v11

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Lcom/sun/glass/ui/lens/LensCursor;->_createNativeCursorBytes(II[BII)J

    move-result-wide v12

    move-wide v5, v12

    .line 84
    goto :goto_0

    .line 86
    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v11    # "byteArray":[B
    :cond_2
    move-object v12, v7

    invoke-virtual {v12}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v12

    .line 87
    move-object v12, v1

    move v13, v2

    move v14, v3

    move-object v15, v7

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/nio/Buffer;->capacity()I

    move-result v16

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v12 .. v18}, Lcom/sun/glass/ui/lens/LensCursor;->_createNativeCursorDirect(IILjava/nio/Buffer;III)J

    move-result-wide v12

    move-wide v5, v12

    goto :goto_0
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensCursor;
    move-object v2, v0

    :try_start_0
    iget-wide v2, v2, Lcom/sun/glass/ui/lens/LensCursor;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 59
    move-object v2, v0

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/glass/ui/lens/LensCursor;->ptr:J

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/lens/LensCursor;->_releaseNativeCursor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->finalize()V

    .line 63
    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->finalize()V

    move-object v2, v1

    throw v2
.end method

.method set()V
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensCursor;
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/lens/LensCursor;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 96
    move-object v2, v0

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/glass/ui/lens/LensCursor;->ptr:J

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/lens/LensCursor;->_setNativeCursor(J)V

    .line 99
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/lens/LensCursor;->getType()I

    move-result v2

    move v1, v2

    .line 100
    .local v1, "type":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 103
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    check-cast v2, Lcom/sun/glass/ui/lens/LensApplication;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/lens/LensApplication;->staticCursor_setVisible(Z)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    check-cast v2, Lcom/sun/glass/ui/lens/LensApplication;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/lens/LensApplication;->staticCursor_setVisible(Z)V

    goto :goto_0
.end method
