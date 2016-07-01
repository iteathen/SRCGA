.class final Lcom/sun/javafx/tk/quantum/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sun/javafx/tk/quantum/CursorUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/CursorUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/CursorUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static createPlatformCursor(Lcom/sun/javafx/cursor/CursorFrame;)Lcom/sun/glass/ui/Cursor;
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "cursorFrame":Lcom/sun/javafx/cursor/CursorFrame;
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    move-object v1, v2

    .line 68
    .local v1, "app":Lcom/sun/glass/ui/Application;
    sget-object v2, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/cursor/CursorFrame;->getCursorType()Lcom/sun/javafx/cursor/CursorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 111
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled Cursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    .line 112
    invoke-virtual {v4}, Lcom/sun/javafx/cursor/CursorFrame;->getCursorType()Lcom/sun/javafx/cursor/CursorType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "cursorFrame":Lcom/sun/javafx/cursor/CursorFrame;
    :goto_0
    return-object v0

    .line 70
    .restart local v0    # "cursorFrame":Lcom/sun/javafx/cursor/CursorFrame;
    :pswitch_0
    move-object v2, v1

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 72
    :pswitch_1
    move-object v2, v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 74
    :pswitch_2
    move-object v2, v1

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 76
    :pswitch_3
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 78
    :pswitch_4
    move-object v2, v1

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 80
    :pswitch_5
    move-object v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 82
    :pswitch_6
    move-object v2, v1

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 84
    :pswitch_7
    move-object v2, v1

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 86
    :pswitch_8
    move-object v2, v1

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 88
    :pswitch_9
    move-object v2, v1

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 90
    :pswitch_a
    move-object v2, v1

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 92
    :pswitch_b
    move-object v2, v1

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 94
    :pswitch_c
    move-object v2, v1

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 96
    :pswitch_d
    move-object v2, v1

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 98
    :pswitch_e
    move-object v2, v1

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 101
    :pswitch_f
    move-object v2, v1

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 104
    :pswitch_10
    move-object v2, v1

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 106
    :pswitch_11
    move-object v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 108
    :pswitch_12
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/cursor/ImageCursorFrame;

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/CursorUtils;->createPlatformImageCursor(Lcom/sun/javafx/cursor/ImageCursorFrame;)Lcom/sun/glass/ui/Cursor;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private static createPlatformImageCursor(IIIILjava/lang/Object;)Lcom/sun/glass/ui/Cursor;
    .locals 13

    .prologue
    .line 205
    move v0, p0

    .local v0, "x":I
    move v1, p1

    .local v1, "y":I
    move v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move-object/from16 v4, p4

    .local v4, "buffer":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v6

    move-object v5, v6

    .line 206
    .local v5, "app":Lcom/sun/glass/ui/Application;
    move-object v6, v5

    move v7, v0

    move v8, v1

    move-object v9, v5

    move v10, v2

    move v11, v3

    move-object v12, v4

    check-cast v12, Ljava/nio/IntBuffer;

    invoke-virtual {v9, v10, v11, v12}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/IntBuffer;)Lcom/sun/glass/ui/Pixels;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/glass/ui/Application;->createCursor(IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/Cursor;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "x":I
    return-object v0
.end method

.method private static createPlatformImageCursor(Lcom/sun/javafx/cursor/ImageCursorFrame;)Lcom/sun/glass/ui/Cursor;
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "imageCursorFrame":Lcom/sun/javafx/cursor/ImageCursorFrame;
    move-object v1, v0

    .line 120
    invoke-virtual {v1}, Lcom/sun/javafx/cursor/ImageCursorFrame;->getPlatformImage()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    .line 121
    invoke-virtual {v2}, Lcom/sun/javafx/cursor/ImageCursorFrame;->getHotspotX()D

    move-result-wide v2

    double-to-float v2, v2

    move-object v3, v0

    .line 122
    invoke-virtual {v3}, Lcom/sun/javafx/cursor/ImageCursorFrame;->getHotspotY()D

    move-result-wide v3

    double-to-float v3, v3

    .line 119
    invoke-static {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/CursorUtils;->createPlatformImageCursor(Ljava/lang/Object;FF)Lcom/sun/glass/ui/Cursor;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "imageCursorFrame":Lcom/sun/javafx/cursor/ImageCursorFrame;
    return-object v0
.end method

.method private static createPlatformImageCursor(Ljava/lang/Object;FF)Lcom/sun/glass/ui/Cursor;
    .locals 27

    .prologue
    .line 128
    move-object/from16 v2, p0

    .local v2, "platformImage":Ljava/lang/Object;
    move/from16 v3, p1

    .local v3, "hotspotX":F
    move/from16 v4, p2

    .local v4, "hotspotY":F
    move-object/from16 v20, v2

    if-nez v20, :cond_0

    .line 129
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string v22, "QuantumToolkit.createImageCursor: no image"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 133
    :cond_0
    sget-boolean v20, Lcom/sun/javafx/tk/quantum/CursorUtils;->$assertionsDisabled:Z

    if-nez v20, :cond_1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sun/prism/Image;

    move/from16 v20, v0

    if-nez v20, :cond_1

    new-instance v20, Ljava/lang/AssertionError;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 135
    :cond_1
    move-object/from16 v20, v2

    check-cast v20, Lcom/sun/prism/Image;

    move-object/from16 v5, v20

    .line 137
    .local v5, "prismImage":Lcom/sun/prism/Image;
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/Image;->getHeight()I

    move-result v20

    move/from16 v6, v20

    .line 138
    .local v6, "iheight":I
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/Image;->getWidth()I

    move-result v20

    move/from16 v7, v20

    .line 139
    .local v7, "iwidth":I
    move/from16 v20, v7

    move/from16 v21, v6

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/tk/quantum/CursorUtils;->getBestCursorSize(II)Ljavafx/geometry/Dimension2D;

    move-result-object v20

    move-object/from16 v8, v20

    .line 140
    .local v8, "d":Ljavafx/geometry/Dimension2D;
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v9, v20

    .line 141
    .local v9, "bestWidth":F
    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v10, v20

    .line 143
    .local v10, "bestHeight":F
    move/from16 v20, v9

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-lez v20, :cond_2

    move/from16 v20, v10

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_3

    .line 144
    :cond_2
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v20

    const/16 v21, 0x1

    .line 145
    invoke-virtual/range {v20 .. v21}, Lcom/sun/glass/ui/Application;->createCursor(I)Lcom/sun/glass/ui/Cursor;

    move-result-object v20

    move-object/from16 v2, v20

    .line 196
    .end local v2    # "platformImage":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 149
    .restart local v2    # "platformImage":Ljava/lang/Object;
    :cond_3
    sget-object v20, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    .line 160
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string v22, "QuantumToolkit.createImageCursor: bad image format"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 151
    :pswitch_0
    move/from16 v20, v3

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v22, v7

    move/from16 v23, v6

    move-object/from16 v24, v5

    .line 153
    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v24

    .line 151
    invoke-static/range {v20 .. v24}, Lcom/sun/javafx/tk/quantum/CursorUtils;->createPlatformImageCursor(IIIILjava/lang/Object;)Lcom/sun/glass/ui/Cursor;

    move-result-object v20

    move-object/from16 v2, v20

    goto :goto_0

    .line 157
    :pswitch_1
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v20

    check-cast v20, Ljava/nio/ByteBuffer;

    move-object/from16 v11, v20

    .line 164
    .local v11, "buf":Ljava/nio/ByteBuffer;
    move/from16 v20, v9

    move/from16 v21, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v12, v20

    .line 165
    .local v12, "xscale":F
    move/from16 v20, v10

    move/from16 v21, v6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v13, v20

    .line 167
    .local v13, "yscale":F
    move/from16 v20, v3

    move/from16 v21, v12

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v14, v20

    .line 168
    .local v14, "scaledHotSpotX":I
    move/from16 v20, v4

    move/from16 v21, v13

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v15, v20

    .line 171
    .local v15, "scaledHotSpotY":I
    move/from16 v20, v7

    move/from16 v21, v6

    move-object/from16 v22, v5

    .line 172
    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/Image;->getBytesPerPixelUnit()I

    move-result v22

    move/from16 v23, v9

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v24, v10

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    .line 171
    invoke-static/range {v20 .. v25}, Lcom/sun/javafx/iio/common/ScalerFactory;->createScaler(IIIIIZ)Lcom/sun/javafx/iio/common/PushbroomScaler;

    move-result-object v20

    move-object/from16 v16, v20

    .line 176
    .local v16, "scaler":Lcom/sun/javafx/iio/common/PushbroomScaler;
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->limit()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v17, v20

    .line 180
    .local v17, "bytes":[B
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/Image;->getScanlineStride()I

    move-result v20

    move/from16 v18, v20

    .line 181
    .local v18, "scanlineStride":I
    const/16 v20, 0x0

    move/from16 v19, v20

    .local v19, "z":I
    :goto_1
    move/from16 v20, v19

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 182
    move-object/from16 v20, v11

    move/from16 v21, v19

    move/from16 v22, v18

    mul-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 183
    move-object/from16 v20, v11

    move-object/from16 v21, v17

    const/16 v22, 0x0

    move/from16 v23, v18

    invoke-virtual/range {v20 .. v23}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 184
    move-object/from16 v20, v16

    if-eqz v20, :cond_4

    .line 185
    move-object/from16 v20, v16

    move-object/from16 v21, v17

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/sun/javafx/iio/common/PushbroomScaler;->putSourceScanline([BI)Z

    move-result v20

    .line 181
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 189
    :cond_5
    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v20

    .line 191
    move-object/from16 v20, v5

    move-object/from16 v21, v16

    .line 192
    invoke-interface/range {v21 .. v21}, Lcom/sun/javafx/iio/common/PushbroomScaler;->getDestination()Ljava/nio/ByteBuffer;

    move-result-object v21

    move/from16 v22, v9

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v23, v10

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lcom/sun/prism/Image;->iconify(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;

    move-result-object v20

    move-object/from16 v19, v20

    .line 196
    .local v19, "img":Lcom/sun/prism/Image;
    move/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v22, v19

    .line 197
    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/Image;->getWidth()I

    move-result v22

    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/Image;->getHeight()I

    move-result v23

    move-object/from16 v24, v19

    .line 198
    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v24

    .line 196
    invoke-static/range {v20 .. v24}, Lcom/sun/javafx/tk/quantum/CursorUtils;->createPlatformImageCursor(IIIILjava/lang/Object;)Lcom/sun/glass/ui/Cursor;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getBestCursorSize(II)Ljavafx/geometry/Dimension2D;
    .locals 11

    .prologue
    .line 62
    move v1, p0

    .local v1, "preferredWidth":I
    move v2, p1

    .local v2, "preferredHeight":I
    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Lcom/sun/glass/ui/Cursor;->getBestSize(II)Lcom/sun/glass/ui/Size;

    move-result-object v4

    move-object v3, v4

    .line 63
    .local v3, "size":Lcom/sun/glass/ui/Size;
    new-instance v4, Ljavafx/geometry/Dimension2D;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v3

    iget v6, v6, Lcom/sun/glass/ui/Size;->width:I

    int-to-double v6, v6

    move-object v8, v3

    iget v8, v8, Lcom/sun/glass/ui/Size;->height:I

    int-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/geometry/Dimension2D;-><init>(DD)V

    move-object v1, v4

    .end local v1    # "preferredWidth":I
    return-object v1
.end method

.method public static getPlatformCursor(Lcom/sun/javafx/cursor/CursorFrame;)Lcom/sun/glass/ui/Cursor;
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "cursorFrame":Lcom/sun/javafx/cursor/CursorFrame;
    move-object v3, v0

    const-class v4, Lcom/sun/glass/ui/Cursor;

    .line 47
    invoke-virtual {v3, v4}, Lcom/sun/javafx/cursor/CursorFrame;->getPlatformCursor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/Cursor;

    move-object v1, v3

    .line 48
    .local v1, "cachedPlatformCursor":Lcom/sun/glass/ui/Cursor;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 50
    move-object v3, v1

    move-object v0, v3

    .line 57
    .end local v0    # "cursorFrame":Lcom/sun/javafx/cursor/CursorFrame;
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "cursorFrame":Lcom/sun/javafx/cursor/CursorFrame;
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/CursorUtils;->createPlatformCursor(Lcom/sun/javafx/cursor/CursorFrame;)Lcom/sun/glass/ui/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 55
    .local v2, "platformCursor":Lcom/sun/glass/ui/Cursor;
    move-object v3, v0

    const-class v4, Lcom/sun/glass/ui/Cursor;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/cursor/CursorFrame;->setPlatforCursor(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 57
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method
