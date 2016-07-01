.class Ljavafx/scene/canvas/GraphicsContext$1;
.super Ljava/lang/Object;
.source "GraphicsContext.java"

# interfaces
.implements Ljavafx/scene/image/PixelWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/canvas/GraphicsContext;->getPixelWriter()Ljavafx/scene/image/PixelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/canvas/GraphicsContext;


# direct methods
.method constructor <init>(Ljavafx/scene/canvas/GraphicsContext;)V
    .locals 4

    .prologue
    .line 2705
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/canvas/GraphicsContext;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext$1;->this$0:Ljavafx/scene/canvas/GraphicsContext;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkBounds(IIIILjavafx/scene/image/PixelFormat;I)[I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<+",
            "Ljava/nio/Buffer;",
            ">;I)[I"
        }
    .end annotation

    .prologue
    .line 2751
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<+Ljava/nio/Buffer;>;"
    move/from16 v6, p6

    .local v6, "scan":I
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext$1;->this$0:Ljavafx/scene/canvas/GraphicsContext;

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    invoke-virtual {v10}, Ljavafx/scene/canvas/Canvas;->getWidth()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    move v7, v10

    .line 2752
    .local v7, "cw":I
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext$1;->this$0:Ljavafx/scene/canvas/GraphicsContext;

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    invoke-virtual {v10}, Ljavafx/scene/canvas/Canvas;->getHeight()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    move v8, v10

    .line 2753
    .local v8, "ch":I
    move v10, v1

    if-ltz v10, :cond_0

    move v10, v2

    if-ltz v10, :cond_0

    move v10, v1

    move v11, v3

    add-int/2addr v10, v11

    move v11, v7

    if-gt v10, v11, :cond_0

    move v10, v2

    move v11, v4

    add-int/2addr v10, v11

    move v11, v8

    if-gt v10, v11, :cond_0

    .line 2754
    const/4 v10, 0x0

    move-object v0, v10

    .line 2794
    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext$1;
    :goto_0
    return-object v0

    .line 2756
    .restart local v0    # "this":Ljavafx/scene/canvas/GraphicsContext$1;
    :cond_0
    const/4 v10, 0x0

    move v9, v10

    .line 2757
    .local v9, "offset":I
    move v10, v1

    if-gez v10, :cond_3

    .line 2758
    move v10, v3

    move v11, v1

    add-int/2addr v10, v11

    move v3, v10

    .line 2759
    move v10, v3

    if-gez v10, :cond_1

    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 2760
    :cond_1
    move-object v10, v5

    if-eqz v10, :cond_2

    .line 2761
    sget-object v10, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/scene/image/PixelFormat;->getType()Ljavafx/scene/image/PixelFormat$Type;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 2775
    new-instance v10, Ljava/lang/InternalError;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "unknown Pixel Format"

    invoke-direct {v11, v12}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2764
    :pswitch_0
    move v10, v9

    move v11, v1

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v9, v10

    .line 2778
    :cond_2
    :goto_1
    const/4 v10, 0x0

    move v1, v10

    .line 2780
    :cond_3
    move v10, v2

    if-gez v10, :cond_5

    .line 2781
    move v10, v4

    move v11, v2

    add-int/2addr v10, v11

    move v4, v10

    .line 2782
    move v10, v4

    if-gez v10, :cond_4

    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 2767
    :pswitch_1
    move v10, v9

    move v11, v1

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    move v9, v10

    .line 2768
    goto :goto_1

    .line 2772
    :pswitch_2
    move v10, v9

    move v11, v1

    sub-int/2addr v10, v11

    move v9, v10

    .line 2773
    goto :goto_1

    .line 2783
    :cond_4
    move v10, v9

    move v11, v2

    move v12, v6

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v9, v10

    .line 2784
    const/4 v10, 0x0

    move v2, v10

    .line 2786
    :cond_5
    move v10, v1

    move v11, v3

    add-int/2addr v10, v11

    move v11, v7

    if-le v10, v11, :cond_6

    .line 2787
    move v10, v7

    move v11, v1

    sub-int/2addr v10, v11

    move v3, v10

    .line 2788
    move v10, v3

    if-gez v10, :cond_6

    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 2790
    :cond_6
    move v10, v2

    move v11, v4

    add-int/2addr v10, v11

    move v11, v8

    if-le v10, v11, :cond_7

    .line 2791
    move v10, v8

    move v11, v2

    sub-int/2addr v10, v11

    move v4, v10

    .line 2792
    move v10, v4

    if-gez v10, :cond_7

    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 2794
    :cond_7
    const/4 v10, 0x5

    new-array v10, v10, [I

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v1

    aput v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v2

    aput v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move v13, v3

    aput v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move v13, v4

    aput v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x4

    move v13, v9

    aput v13, v11, v12

    move-object v0, v10

    goto/16 :goto_0

    .line 2761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getSetter()Lcom/sun/javafx/image/BytePixelSetter;
    .locals 2

    .prologue
    .line 2712
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    sget-object v1, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext$1;
    return-object v0
.end method

.method private writePixelBuffer(IIII[B)V
    .locals 9

    .prologue
    .line 2737
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "w":I
    move v4, p4

    .local v4, "h":I
    move-object v5, p5

    .local v5, "pixels":[B
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/canvas/GraphicsContext$1;->this$0:Ljavafx/scene/canvas/GraphicsContext;

    invoke-static {v7}, Ljavafx/scene/canvas/GraphicsContext;->access$000(Ljavafx/scene/canvas/GraphicsContext;)Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v7

    move-object v6, v7

    .line 2738
    .local v6, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v7, v6

    const/16 v8, 0x35

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 2739
    move-object v7, v6

    move v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putInt(I)V

    .line 2740
    move-object v7, v6

    move v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putInt(I)V

    .line 2741
    move-object v7, v6

    move v8, v3

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putInt(I)V

    .line 2742
    move-object v7, v6

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putInt(I)V

    .line 2743
    move-object v7, v6

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 2744
    return-void
.end method


# virtual methods
.method public getPixelFormat()Ljavafx/scene/image/PixelFormat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2708
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    invoke-static {}, Ljavafx/scene/image/PixelFormat;->getByteBgraPreInstance()Ljavafx/scene/image/WritablePixelFormat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext$1;
    return-object v0
.end method

.method public setArgb(III)V
    .locals 7

    .prologue
    .line 2717
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "argb":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/canvas/GraphicsContext$1;->this$0:Ljavafx/scene/canvas/GraphicsContext;

    invoke-static {v5}, Ljavafx/scene/canvas/GraphicsContext;->access$000(Ljavafx/scene/canvas/GraphicsContext;)Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v5

    move-object v4, v5

    .line 2718
    .local v4, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v5, v4

    const/16 v6, 0x34

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 2719
    move-object v5, v4

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putInt(I)V

    .line 2720
    move-object v5, v4

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putInt(I)V

    .line 2721
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putInt(I)V

    .line 2722
    return-void
.end method

.method public setColor(IILjavafx/scene/paint/Color;)V
    .locals 15

    .prologue
    .line 2726
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move-object/from16 v3, p3

    .local v3, "c":Ljavafx/scene/paint/Color;
    move-object v8, v3

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "Color cannot be null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2727
    :cond_0
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    move v4, v8

    .line 2728
    .local v4, "a":I
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    move v5, v8

    .line 2729
    .local v5, "r":I
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    move v6, v8

    .line 2730
    .local v6, "g":I
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    move v7, v8

    .line 2731
    .local v7, "b":I
    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v4

    const/16 v12, 0x18

    shl-int/lit8 v11, v11, 0x18

    move v12, v5

    const/16 v13, 0x10

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    move v12, v6

    const/16 v13, 0x8

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    move v12, v7

    or-int/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Ljavafx/scene/canvas/GraphicsContext$1;->setArgb(III)V

    .line 2732
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<TT;>;TT;I)V"
        }
    .end annotation

    .prologue
    .line 2805
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TT;>;"
    move-object/from16 v6, p6

    .local v6, "buffer":Ljava/nio/Buffer;, "TT;"
    move/from16 v7, p7

    .local v7, "scan":I
    move-object v14, v5

    if-nez v14, :cond_0

    new-instance v14, Ljava/lang/NullPointerException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const-string v16, "PixelFormat cannot be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2806
    :cond_0
    move-object v14, v6

    if-nez v14, :cond_1

    new-instance v14, Ljava/lang/NullPointerException;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const-string v16, "Buffer cannot be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2807
    :cond_1
    move v14, v3

    if-lez v14, :cond_2

    move v14, v4

    if-gtz v14, :cond_3

    .line 2829
    :cond_2
    :goto_0
    return-void

    .line 2808
    :cond_3
    move-object v14, v6

    invoke-virtual {v14}, Ljava/nio/Buffer;->position()I

    move-result v14

    move v8, v14

    .line 2809
    .local v8, "offset":I
    move-object v14, v0

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v7

    invoke-direct/range {v14 .. v20}, Ljavafx/scene/canvas/GraphicsContext$1;->checkBounds(IIIILjavafx/scene/image/PixelFormat;I)[I

    move-result-object v14

    move-object v9, v14

    .line 2811
    .local v9, "adjustments":[I
    move-object v14, v9

    if-eqz v14, :cond_4

    .line 2812
    move-object v14, v9

    const/4 v15, 0x0

    aget v14, v14, v15

    move v1, v14

    .line 2813
    move-object v14, v9

    const/4 v15, 0x1

    aget v14, v14, v15

    move v2, v14

    .line 2814
    move-object v14, v9

    const/4 v15, 0x2

    aget v14, v14, v15

    move v3, v14

    .line 2815
    move-object v14, v9

    const/4 v15, 0x3

    aget v14, v14, v15

    move v4, v14

    .line 2816
    move v14, v8

    move-object v15, v9

    const/16 v16, 0x4

    aget v15, v15, v16

    add-int/2addr v14, v15

    move v8, v14

    .line 2819
    :cond_4
    move v14, v3

    move v15, v4

    mul-int/2addr v14, v15

    const/4 v15, 0x4

    mul-int/lit8 v14, v14, 0x4

    new-array v14, v14, [B

    move-object v10, v14

    .line 2820
    .local v10, "pixels":[B
    move-object v14, v10

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object v11, v14

    .line 2822
    .local v11, "dst":Ljava/nio/ByteBuffer;
    move-object v14, v5

    invoke-static {v14}, Lcom/sun/javafx/image/PixelUtils;->getGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/PixelGetter;

    move-result-object v14

    move-object v12, v14

    .line 2823
    .local v12, "getter":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<TT;>;"
    move-object v14, v12

    move-object v15, v0

    .line 2824
    invoke-direct {v15}, Ljavafx/scene/canvas/GraphicsContext$1;->getSetter()Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sun/javafx/image/PixelUtils;->getConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/PixelConverter;

    move-result-object v14

    move-object v13, v14

    .line 2825
    .local v13, "converter":Lcom/sun/javafx/image/PixelConverter;, "Lcom/sun/javafx/image/PixelConverter<TT;Ljava/nio/ByteBuffer;>;"
    move-object v14, v13

    move-object v15, v6

    move/from16 v16, v8

    move/from16 v17, v7

    move-object/from16 v18, v11

    const/16 v19, 0x0

    move/from16 v20, v3

    const/16 v21, 0x4

    mul-int/lit8 v20, v20, 0x4

    move/from16 v21, v3

    move/from16 v22, v4

    invoke-interface/range {v14 .. v22}, Lcom/sun/javafx/image/PixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 2828
    move-object v14, v0

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v10

    invoke-direct/range {v14 .. v19}, Ljavafx/scene/canvas/GraphicsContext$1;->writePixelBuffer(IIII[B)V

    .line 2829
    goto :goto_0
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;[BII)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;[BII)V"
        }
    .end annotation

    .prologue
    .line 2836
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v6, p6

    .local v6, "buffer":[B
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineStride":I
    move-object v13, v5

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const-string v15, "PixelFormat cannot be null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2837
    :cond_0
    move-object v13, v6

    if-nez v13, :cond_1

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const-string v15, "Buffer cannot be null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2838
    :cond_1
    move v13, v3

    if-lez v13, :cond_2

    move v13, v4

    if-gtz v13, :cond_3

    .line 2858
    :cond_2
    :goto_0
    return-void

    .line 2839
    :cond_3
    move-object v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Ljavafx/scene/canvas/GraphicsContext$1;->checkBounds(IIIILjavafx/scene/image/PixelFormat;I)[I

    move-result-object v13

    move-object v9, v13

    .line 2841
    .local v9, "adjustments":[I
    move-object v13, v9

    if-eqz v13, :cond_4

    .line 2842
    move-object v13, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    move v1, v13

    .line 2843
    move-object v13, v9

    const/4 v14, 0x1

    aget v13, v13, v14

    move v2, v13

    .line 2844
    move-object v13, v9

    const/4 v14, 0x2

    aget v13, v13, v14

    move v3, v13

    .line 2845
    move-object v13, v9

    const/4 v14, 0x3

    aget v13, v13, v14

    move v4, v13

    .line 2846
    move v13, v7

    move-object v14, v9

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v13, v14

    move v7, v13

    .line 2849
    :cond_4
    move v13, v3

    move v14, v4

    mul-int/2addr v13, v14

    const/4 v14, 0x4

    mul-int/lit8 v13, v13, 0x4

    new-array v13, v13, [B

    move-object v10, v13

    .line 2851
    .local v10, "pixels":[B
    move-object v13, v5

    invoke-static {v13}, Lcom/sun/javafx/image/PixelUtils;->getByteGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v13

    move-object v11, v13

    .line 2852
    .local v11, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v13, v11

    move-object v14, v0

    .line 2853
    invoke-direct {v14}, Ljavafx/scene/canvas/GraphicsContext$1;->getSetter()Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sun/javafx/image/PixelUtils;->getB2BConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v13

    move-object v12, v13

    .line 2854
    .local v12, "converter":Lcom/sun/javafx/image/ByteToBytePixelConverter;
    move-object v13, v12

    move-object v14, v6

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v10

    const/16 v18, 0x0

    move/from16 v19, v3

    const/16 v20, 0x4

    mul-int/lit8 v19, v19, 0x4

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-interface/range {v13 .. v21}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert([BII[BIIII)V

    .line 2857
    move-object v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v10

    invoke-direct/range {v13 .. v18}, Ljavafx/scene/canvas/GraphicsContext$1;->writePixelBuffer(IIII[B)V

    .line 2858
    goto :goto_0
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;[III)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;[III)V"
        }
    .end annotation

    .prologue
    .line 2865
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/IntBuffer;>;"
    move-object/from16 v6, p6

    .local v6, "buffer":[I
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineStride":I
    move-object v13, v5

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const-string v15, "PixelFormat cannot be null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2866
    :cond_0
    move-object v13, v6

    if-nez v13, :cond_1

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const-string v15, "Buffer cannot be null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2867
    :cond_1
    move v13, v3

    if-lez v13, :cond_2

    move v13, v4

    if-gtz v13, :cond_3

    .line 2887
    :cond_2
    :goto_0
    return-void

    .line 2868
    :cond_3
    move-object v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Ljavafx/scene/canvas/GraphicsContext$1;->checkBounds(IIIILjavafx/scene/image/PixelFormat;I)[I

    move-result-object v13

    move-object v9, v13

    .line 2870
    .local v9, "adjustments":[I
    move-object v13, v9

    if-eqz v13, :cond_4

    .line 2871
    move-object v13, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    move v1, v13

    .line 2872
    move-object v13, v9

    const/4 v14, 0x1

    aget v13, v13, v14

    move v2, v13

    .line 2873
    move-object v13, v9

    const/4 v14, 0x2

    aget v13, v13, v14

    move v3, v13

    .line 2874
    move-object v13, v9

    const/4 v14, 0x3

    aget v13, v13, v14

    move v4, v13

    .line 2875
    move v13, v7

    move-object v14, v9

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v13, v14

    move v7, v13

    .line 2878
    :cond_4
    move v13, v3

    move v14, v4

    mul-int/2addr v13, v14

    const/4 v14, 0x4

    mul-int/lit8 v13, v13, 0x4

    new-array v13, v13, [B

    move-object v10, v13

    .line 2880
    .local v10, "pixels":[B
    move-object v13, v5

    invoke-static {v13}, Lcom/sun/javafx/image/PixelUtils;->getIntGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/IntPixelGetter;

    move-result-object v13

    move-object v11, v13

    .line 2881
    .local v11, "getter":Lcom/sun/javafx/image/IntPixelGetter;
    move-object v13, v11

    move-object v14, v0

    .line 2882
    invoke-direct {v14}, Ljavafx/scene/canvas/GraphicsContext$1;->getSetter()Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sun/javafx/image/PixelUtils;->getI2BConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/IntToBytePixelConverter;

    move-result-object v13

    move-object v12, v13

    .line 2883
    .local v12, "converter":Lcom/sun/javafx/image/IntToBytePixelConverter;
    move-object v13, v12

    move-object v14, v6

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v10

    const/16 v18, 0x0

    move/from16 v19, v3

    const/16 v20, 0x4

    mul-int/lit8 v19, v19, 0x4

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-interface/range {v13 .. v21}, Lcom/sun/javafx/image/IntToBytePixelConverter;->convert([III[BIIII)V

    .line 2886
    move-object v13, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v10

    invoke-direct/range {v13 .. v18}, Ljavafx/scene/canvas/GraphicsContext$1;->writePixelBuffer(IIII[B)V

    .line 2887
    goto :goto_0
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelReader;II)V
    .locals 22

    .prologue
    .line 2893
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext$1;
    move/from16 v1, p1

    .local v1, "dstx":I
    move/from16 v2, p2

    .local v2, "dsty":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "reader":Ljavafx/scene/image/PixelReader;
    move/from16 v6, p6

    .local v6, "srcx":I
    move/from16 v7, p7

    .local v7, "srcy":I
    move-object v11, v5

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/NullPointerException;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    const-string v13, "Reader cannot be null"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2894
    :cond_0
    move v11, v3

    if-lez v11, :cond_1

    move v11, v4

    if-gtz v11, :cond_2

    .line 2912
    :cond_1
    :goto_0
    return-void

    .line 2895
    :cond_2
    move-object v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/canvas/GraphicsContext$1;->checkBounds(IIIILjavafx/scene/image/PixelFormat;I)[I

    move-result-object v11

    move-object v8, v11

    .line 2896
    .local v8, "adjustments":[I
    move-object v11, v8

    if-eqz v11, :cond_3

    .line 2897
    move-object v11, v8

    const/4 v12, 0x0

    aget v11, v11, v12

    move v9, v11

    .line 2898
    .local v9, "newx":I
    move-object v11, v8

    const/4 v12, 0x1

    aget v11, v11, v12

    move v10, v11

    .line 2899
    .local v10, "newy":I
    move v11, v6

    move v12, v9

    move v13, v1

    sub-int/2addr v12, v13

    add-int/2addr v11, v12

    move v6, v11

    .line 2900
    move v11, v7

    move v12, v10

    move v13, v2

    sub-int/2addr v12, v13

    add-int/2addr v11, v12

    move v7, v11

    .line 2901
    move v11, v9

    move v1, v11

    .line 2902
    move v11, v10

    move v2, v11

    .line 2903
    move-object v11, v8

    const/4 v12, 0x2

    aget v11, v11, v12

    move v3, v11

    .line 2904
    move-object v11, v8

    const/4 v12, 0x3

    aget v11, v11, v12

    move v4, v11

    .line 2907
    .end local v9    # "newx":I
    .end local v10    # "newy":I
    :cond_3
    move v11, v3

    move v12, v4

    mul-int/2addr v11, v12

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    new-array v11, v11, [B

    move-object v9, v11

    .line 2908
    .local v9, "pixels":[B
    move-object v11, v5

    move v12, v6

    move v13, v7

    move v14, v3

    move v15, v4

    .line 2909
    invoke-static {}, Ljavafx/scene/image/PixelFormat;->getByteBgraPreInstance()Ljavafx/scene/image/WritablePixelFormat;

    move-result-object v16

    move-object/from16 v17, v9

    const/16 v18, 0x0

    move/from16 v19, v3

    const/16 v20, 0x4

    mul-int/lit8 v19, v19, 0x4

    .line 2908
    invoke-interface/range {v11 .. v19}, Ljavafx/scene/image/PixelReader;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[BII)V

    .line 2911
    move-object v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Ljavafx/scene/canvas/GraphicsContext$1;->writePixelBuffer(IIII[B)V

    .line 2912
    goto :goto_0
.end method
