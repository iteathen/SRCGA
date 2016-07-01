.class Lcom/sun/prism/Image$IntAccess;
.super Lcom/sun/prism/Image$BaseAccessor;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/prism/Image$BaseAccessor",
        "<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/prism/Image;


# direct methods
.method constructor <init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Ljava/nio/IntBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;",
            "Ljava/nio/IntBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$IntAccess;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/prism/Image;
    move-object v2, p2

    .local v2, "fmt":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/IntBuffer;>;"
    move-object v3, p3

    .local v3, "buffer":Ljava/nio/IntBuffer;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/prism/Image$IntAccess;->this$0:Lcom/sun/prism/Image;

    .line 1091
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image$BaseAccessor;-><init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V

    .line 1092
    return-void
.end method


# virtual methods
.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[BII)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;[BII)V"
        }
    .end annotation

    .prologue
    .line 1099
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image$IntAccess;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v6, p6

    .local v6, "dstarr":[B
    move/from16 v7, p7

    .local v7, "dstoff":I
    move/from16 v8, p8

    .local v8, "dstScanlineBytes":I
    move-object v11, v5

    invoke-static {v11}, Lcom/sun/javafx/image/PixelUtils;->getByteSetter(Ljavafx/scene/image/WritablePixelFormat;)Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v11

    move-object v9, v11

    .line 1100
    .local v9, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v11, v0

    .line 1101
    invoke-virtual {v11}, Lcom/sun/prism/Image$IntAccess;->getGetter()Lcom/sun/javafx/image/PixelGetter;

    move-result-object v11

    move-object v12, v9

    invoke-static {v11, v12}, Lcom/sun/javafx/image/PixelUtils;->getI2BConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/IntToBytePixelConverter;

    move-result-object v11

    move-object v10, v11

    .line 1102
    .local v10, "i2bconverter":Lcom/sun/javafx/image/IntToBytePixelConverter;
    move-object v11, v10

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/prism/Image$IntAccess;->getBuffer()Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/IntBuffer;

    move-object v13, v0

    move v14, v1

    move v15, v2

    invoke-virtual {v13, v14, v15}, Lcom/sun/prism/Image$IntAccess;->getIndex(II)I

    move-result v13

    move-object v14, v0

    iget v14, v14, Lcom/sun/prism/Image$IntAccess;->scanlineElems:I

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-interface/range {v11 .. v19}, Lcom/sun/javafx/image/IntToBytePixelConverter;->convert(Ljava/nio/IntBuffer;II[BIIII)V

    .line 1105
    return-void
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[III)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;[III)V"
        }
    .end annotation

    .prologue
    .line 1112
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image$IntAccess;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<Ljava/nio/IntBuffer;>;"
    move-object/from16 v6, p6

    .local v6, "dstarr":[I
    move/from16 v7, p7

    .local v7, "dstoff":I
    move/from16 v8, p8

    .local v8, "dstScanlineInts":I
    move-object v11, v5

    invoke-static {v11}, Lcom/sun/javafx/image/PixelUtils;->getIntSetter(Ljavafx/scene/image/WritablePixelFormat;)Lcom/sun/javafx/image/IntPixelSetter;

    move-result-object v11

    move-object v9, v11

    .line 1113
    .local v9, "setter":Lcom/sun/javafx/image/IntPixelSetter;
    move-object v11, v0

    .line 1114
    invoke-virtual {v11}, Lcom/sun/prism/Image$IntAccess;->getGetter()Lcom/sun/javafx/image/PixelGetter;

    move-result-object v11

    move-object v12, v9

    invoke-static {v11, v12}, Lcom/sun/javafx/image/PixelUtils;->getI2IConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/IntToIntPixelConverter;

    move-result-object v11

    move-object v10, v11

    .line 1115
    .local v10, "i2iconverter":Lcom/sun/javafx/image/IntToIntPixelConverter;
    move-object v11, v10

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/prism/Image$IntAccess;->getBuffer()Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/IntBuffer;

    move-object v13, v0

    move v14, v1

    move v15, v2

    invoke-virtual {v13, v14, v15}, Lcom/sun/prism/Image$IntAccess;->getIndex(II)I

    move-result v13

    move-object v14, v0

    iget v14, v14, Lcom/sun/prism/Image$IntAccess;->scanlineElems:I

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-interface/range {v11 .. v19}, Lcom/sun/javafx/image/IntToIntPixelConverter;->convert(Ljava/nio/IntBuffer;II[IIIII)V

    .line 1118
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;[BII)V
    .locals 21
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
    .line 1125
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/Image$IntAccess;
    move/from16 v2, p1

    .local v2, "x":I
    move/from16 v3, p2

    .local v3, "y":I
    move/from16 v4, p3

    .local v4, "w":I
    move/from16 v5, p4

    .local v5, "h":I
    move-object/from16 v6, p5

    .local v6, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v7, p6

    .local v7, "srcarr":[B
    move/from16 v8, p7

    .local v8, "srcoff":I
    move/from16 v9, p8

    .local v9, "srcScanlineBytes":I
    move-object v12, v6

    invoke-static {v12}, Lcom/sun/javafx/image/PixelUtils;->getByteGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v12

    move-object v10, v12

    .line 1126
    .local v10, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v12, v10

    move-object v13, v1

    .line 1127
    invoke-virtual {v13}, Lcom/sun/prism/Image$IntAccess;->getSetter()Lcom/sun/javafx/image/PixelSetter;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sun/javafx/image/PixelUtils;->getB2IConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v12

    move-object v11, v12

    .line 1128
    .local v11, "b2iconverter":Lcom/sun/javafx/image/ByteToIntPixelConverter;
    move-object v12, v11

    move-object v13, v7

    move v14, v8

    move v15, v9

    move-object/from16 v16, v1

    .line 1129
    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/Image$IntAccess;->getBuffer()Ljava/nio/Buffer;

    move-result-object v16

    check-cast v16, Ljava/nio/IntBuffer;

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lcom/sun/prism/Image$IntAccess;->getIndex(II)I

    move-result v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/Image$IntAccess;->scanlineElems:I

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v20, v5

    .line 1128
    invoke-interface/range {v12 .. v20}, Lcom/sun/javafx/image/ByteToIntPixelConverter;->convert([BIILjava/nio/IntBuffer;IIII)V

    .line 1131
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;[III)V
    .locals 21
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
    .line 1138
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/Image$IntAccess;
    move/from16 v2, p1

    .local v2, "x":I
    move/from16 v3, p2

    .local v3, "y":I
    move/from16 v4, p3

    .local v4, "w":I
    move/from16 v5, p4

    .local v5, "h":I
    move-object/from16 v6, p5

    .local v6, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/IntBuffer;>;"
    move-object/from16 v7, p6

    .local v7, "srcarr":[I
    move/from16 v8, p7

    .local v8, "srcoff":I
    move/from16 v9, p8

    .local v9, "srcScanlineInts":I
    move-object v12, v6

    invoke-static {v12}, Lcom/sun/javafx/image/PixelUtils;->getIntGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/IntPixelGetter;

    move-result-object v12

    move-object v10, v12

    .line 1139
    .local v10, "getter":Lcom/sun/javafx/image/IntPixelGetter;
    move-object v12, v10

    move-object v13, v1

    .line 1140
    invoke-virtual {v13}, Lcom/sun/prism/Image$IntAccess;->getSetter()Lcom/sun/javafx/image/PixelSetter;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sun/javafx/image/PixelUtils;->getI2IConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/IntToIntPixelConverter;

    move-result-object v12

    move-object v11, v12

    .line 1141
    .local v11, "i2iconverter":Lcom/sun/javafx/image/IntToIntPixelConverter;
    move-object v12, v11

    move-object v13, v7

    move v14, v8

    move v15, v9

    move-object/from16 v16, v1

    .line 1142
    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/Image$IntAccess;->getBuffer()Ljava/nio/Buffer;

    move-result-object v16

    check-cast v16, Ljava/nio/IntBuffer;

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lcom/sun/prism/Image$IntAccess;->getIndex(II)I

    move-result v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/Image$IntAccess;->scanlineElems:I

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v20, v5

    .line 1141
    invoke-interface/range {v12 .. v20}, Lcom/sun/javafx/image/IntToIntPixelConverter;->convert([IIILjava/nio/IntBuffer;IIII)V

    .line 1144
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelReader;II)V
    .locals 18

    .prologue
    .line 1149
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/Image$IntAccess;
    move/from16 v2, p1

    .local v2, "dstx":I
    move/from16 v3, p2

    .local v3, "dsty":I
    move/from16 v4, p3

    .local v4, "w":I
    move/from16 v5, p4

    .local v5, "h":I
    move-object/from16 v6, p5

    .local v6, "reader":Ljavafx/scene/image/PixelReader;
    move/from16 v7, p6

    .local v7, "srcx":I
    move/from16 v8, p7

    .local v8, "srcy":I
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/prism/Image$IntAccess;->theBuffer:Ljava/nio/Buffer;

    check-cast v10, Ljava/nio/IntBuffer;

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->duplicate()Ljava/nio/IntBuffer;

    move-result-object v10

    move-object v9, v10

    .line 1150
    .local v9, "b":Ljava/nio/IntBuffer;
    move-object v10, v9

    move-object v11, v9

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->position()I

    move-result v11

    move-object v12, v1

    move v13, v2

    move v14, v3

    invoke-virtual {v12, v13, v14}, Lcom/sun/prism/Image$IntAccess;->getIndex(II)I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 1151
    move-object v10, v6

    move v11, v7

    move v12, v8

    move v13, v4

    move v14, v5

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/Image$IntAccess;->theFormat:Ljavafx/scene/image/PixelFormat;

    check-cast v15, Ljavafx/scene/image/WritablePixelFormat;

    move-object/from16 v16, v9

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/Image$IntAccess;->scanlineElems:I

    move/from16 v17, v0

    invoke-interface/range {v10 .. v17}, Ljavafx/scene/image/PixelReader;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V

    .line 1154
    return-void
.end method
