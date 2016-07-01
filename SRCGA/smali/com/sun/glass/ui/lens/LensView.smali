.class final Lcom/sun/glass/ui/lens/LensView;
.super Lcom/sun/glass/ui/View;
.source "LensView.java"


# static fields
.field private static multiClickMaxX:I

.field private static multiClickMaxY:I

.field private static multiClickTime:J


# instance fields
.field private nativePtr:J

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/sun/glass/ui/lens/LensView;->multiClickTime:J

    .line 46
    sget v0, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touchTapRadius:I

    sput v0, Lcom/sun/glass/ui/lens/LensView;->multiClickMaxX:I

    .line 47
    sget v0, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touchTapRadius:I

    sput v0, Lcom/sun/glass/ui/lens/LensView;->multiClickMaxY:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/View;-><init>()V

    .line 42
    return-void
.end method

.method private native _createNativeView(Ljava/util/Map;)J
.end method

.method protected static _getMultiClickMaxX()I
    .locals 2

    .prologue
    .line 64
    sget v0, Lcom/sun/glass/ui/lens/LensView;->multiClickMaxX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v0, 0x2

    sput v0, Lcom/sun/glass/ui/lens/LensView;->multiClickMaxX:I

    .line 69
    :cond_0
    sget v0, Lcom/sun/glass/ui/lens/LensView;->multiClickMaxX:I

    return v0
.end method

.method protected static _getMultiClickMaxY()I
    .locals 2

    .prologue
    .line 73
    sget v0, Lcom/sun/glass/ui/lens/LensView;->multiClickMaxY:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v0, 0x2

    sput v0, Lcom/sun/glass/ui/lens/LensView;->multiClickMaxY:I

    .line 78
    :cond_0
    sget v0, Lcom/sun/glass/ui/lens/LensView;->multiClickMaxY:I

    return v0
.end method

.method protected static _getMultiClickTime()J
    .locals 4

    .prologue
    .line 55
    sget-wide v0, Lcom/sun/glass/ui/lens/LensView;->multiClickTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 58
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/sun/glass/ui/lens/LensView;->multiClickTime:J

    .line 60
    :cond_0
    sget-wide v0, Lcom/sun/glass/ui/lens/LensView;->multiClickTime:J

    return-wide v0
.end method

.method private native _paintByte(JIILjava/nio/ByteBuffer;[BI)V
.end method

.method private native _paintInt(JIILjava/nio/IntBuffer;[II)V
.end method

.method private native _paintIntDirect(JIILjava/nio/Buffer;)V
.end method


# virtual methods
.method protected native _begin(J)V
.end method

.method protected native _close(J)Z
.end method

.method protected _create(Ljava/util/Map;)J
    .locals 5

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move-object v1, p1

    .local v1, "caps":Ljava/util/Map;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/lens/LensView;->_createNativeView(Ljava/util/Map;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/glass/ui/lens/LensView;->nativePtr:J

    .line 221
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/lens/LensView;->nativePtr:J

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensView;
    return-wide v0
.end method

.method protected _enableInputMethodEvents(JZ)V
    .locals 0
    .param p1, "ptr"    # J
    .param p3, "enable"    # Z

    .prologue
    .line 89
    return-void
.end method

.method protected native _end(J)V
.end method

.method protected native _enterFullscreen(JZZZ)Z
.end method

.method protected native _exitFullscreen(JZ)V
.end method

.method protected _getNativeFrameBuffer(J)I
    .locals 5

    .prologue
    .line 211
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensView;
    move-wide v2, p1

    .local v2, "ptr":J
    const/4 v4, 0x0

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/lens/LensView;
    return v1
.end method

.method protected _getNativeView(J)J
    .locals 7

    .prologue
    .line 97
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensView;
    move-wide v2, p1

    .local v2, "ptr":J
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/lens/LensView;
    return-wide v1
.end method

.method protected _getX(J)I
    .locals 5

    .prologue
    .line 102
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensView;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/lens/LensView;->x:I

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/lens/LensView;
    return v1
.end method

.method protected _getY(J)I
    .locals 5

    .prologue
    .line 107
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensView;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, v1

    iget v4, v4, Lcom/sun/glass/ui/lens/LensView;->y:I

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/lens/LensView;
    return v1
.end method

.method protected _notifyDragDrop(IIIII)V
    .locals 12

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "absx":I
    move/from16 v4, p4

    .local v4, "absy":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/glass/ui/lens/LensView;->notifyDragDrop(IIIII)I

    move-result v6

    .line 199
    return-void
.end method

.method protected _notifyDragEnter(IIIII)V
    .locals 12

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "absx":I
    move/from16 v4, p4

    .local v4, "absy":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/glass/ui/lens/LensView;->notifyDragEnter(IIIII)I

    move-result v6

    .line 193
    return-void
.end method

.method protected _notifyDragLeave()V
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensView;->notifyDragLeave()V

    .line 196
    return-void
.end method

.method protected _notifyDragOver(IIIII)V
    .locals 12

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "absx":I
    move/from16 v4, p4

    .local v4, "absy":I
    move/from16 v5, p5

    .local v5, "recommendedDropAction":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/glass/ui/lens/LensView;->notifyDragOver(IIIII)I

    move-result v6

    .line 202
    return-void
.end method

.method protected _notifyKey(II[CI)V
    .locals 10

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "keyCode":I
    move-object v3, p3

    .local v3, "keyChars":[C
    move v4, p4

    .local v4, "modifiers":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/lens/LensView;->notifyKey(II[CI)V

    .line 159
    return-void
.end method

.method protected _notifyMenu(IIIIZ)V
    .locals 12

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "isKeyboardTrigger":Z
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/glass/ui/lens/LensView;->notifyMenu(IIIIZ)V

    .line 207
    return-void
.end method

.method protected _notifyMouse(IIIIIIIZZ)V
    .locals 20

    .prologue
    .line 164
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v1, p1

    .local v1, "type":I
    move/from16 v2, p2

    .local v2, "button":I
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "xAbs":I
    move/from16 v6, p6

    .local v6, "yAbs":I
    move/from16 v7, p7

    .local v7, "modifiers":I
    move/from16 v8, p8

    .local v8, "isPopupTrigger":Z
    move/from16 v9, p9

    .local v9, "isSynthesized":Z
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Lcom/sun/glass/ui/lens/LensView;->notifyMouse(IIIIIIIZZ)V

    .line 166
    return-void
.end method

.method protected _notifyMove(II)V
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/lens/LensView;->x:I

    .line 152
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/lens/LensView;->y:I

    .line 153
    move-object v3, v0

    const/16 v4, 0x1a7

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/lens/LensView;->notifyView(I)V

    .line 154
    return-void
.end method

.method protected _notifyRepaint(IIII)V
    .locals 10

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/lens/LensView;->notifyRepaint(IIII)V

    .line 180
    return-void
.end method

.method protected _notifyResize(II)V
    .locals 6

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/lens/LensView;->notifyResize(II)V

    .line 184
    return-void
.end method

.method protected _notifyScroll(IIIIDDIIIIIDD)V
    .locals 36

    .prologue
    .line 173
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move-wide/from16 v5, p5

    .local v5, "deltaX":D
    move-wide/from16 v7, p7

    .local v7, "deltaY":D
    move/from16 v9, p9

    .local v9, "modifiers":I
    move/from16 v10, p10

    .local v10, "lines":I
    move/from16 v11, p11

    .local v11, "chars":I
    move/from16 v12, p12

    .local v12, "defaultLines":I
    move/from16 v13, p13

    .local v13, "defaultChars":I
    move-wide/from16 v14, p14

    .local v14, "xMultiplier":D
    move-wide/from16 v16, p16

    .local v16, "yMultiplier":D
    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move-wide/from16 v32, v14

    move-wide/from16 v34, v16

    invoke-virtual/range {v18 .. v35}, Lcom/sun/glass/ui/lens/LensView;->notifyScroll(IIIIDDIIIIIDD)V

    .line 176
    return-void
.end method

.method protected _notifyViewEvent(I)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move v1, p1

    .local v1, "viewEvent":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/lens/LensView;->notifyView(I)V

    .line 188
    return-void
.end method

.method protected _scheduleRepaint(J)V
    .locals 7

    .prologue
    .line 116
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensView;
    move-wide v2, p1

    .local v2, "ptr":J
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "Ignoring repaint"

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected native _setParent(JJ)V
.end method

.method protected _uploadPixels(JLcom/sun/glass/ui/Pixels;)V
    .locals 17

    .prologue
    .line 122
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    move-wide/from16 v1, p1

    .local v1, "nativeViewPtr":J
    move-object/from16 v3, p3

    .local v3, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/glass/ui/lens/LensView;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 123
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v9

    move-object v4, v9

    .line 124
    .local v4, "data":Ljava/nio/Buffer;
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v9

    move v5, v9

    .line 125
    .local v5, "width":I
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v9

    move v6, v9

    .line 127
    .local v6, "height":I
    move-object v9, v4

    invoke-virtual {v9}, Ljava/nio/Buffer;->isDirect()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 128
    move-object v9, v0

    move-wide v10, v1

    move v12, v5

    move v13, v6

    move-object v14, v4

    invoke-direct/range {v9 .. v14}, Lcom/sun/glass/ui/lens/LensView;->_paintIntDirect(JIILjava/nio/Buffer;)V

    .line 143
    .end local v4    # "data":Ljava/nio/Buffer;
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local v4    # "data":Ljava/nio/Buffer;
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Ljava/nio/Buffer;->hasArray()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 130
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/glass/ui/Pixels;->getBytesPerComponent()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 131
    move-object v9, v4

    check-cast v9, Ljava/nio/ByteBuffer;

    move-object v7, v9

    .line 132
    .local v7, "bytes":Ljava/nio/ByteBuffer;
    move-object v9, v0

    move-wide v10, v1

    move v12, v5

    move v13, v6

    move-object v14, v7

    move-object v15, v7

    .line 133
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v16

    .line 132
    invoke-direct/range {v9 .. v16}, Lcom/sun/glass/ui/lens/LensView;->_paintByte(JIILjava/nio/ByteBuffer;[BI)V

    .line 134
    goto :goto_0

    .line 135
    .end local v7    # "bytes":Ljava/nio/ByteBuffer;
    :cond_2
    move-object v9, v4

    check-cast v9, Ljava/nio/IntBuffer;

    move-object v7, v9

    .line 136
    .local v7, "ints":Ljava/nio/IntBuffer;
    move-object v9, v7

    invoke-virtual {v9}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v9

    move-object v8, v9

    .line 138
    .local v8, "intArray":[I
    move-object v9, v0

    move-wide v10, v1

    move v12, v5

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v7

    .line 139
    invoke-virtual/range {v16 .. v16}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v16

    .line 138
    invoke-direct/range {v9 .. v16}, Lcom/sun/glass/ui/lens/LensView;->_paintInt(JIILjava/nio/IntBuffer;[II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensView;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensView[nativePtr=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/lens/LensView;->nativePtr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensView;
    return-object v0
.end method
