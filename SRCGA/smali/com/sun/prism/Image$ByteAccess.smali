.class Lcom/sun/prism/Image$ByteAccess;
.super Lcom/sun/prism/Image$BaseAccessor;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ByteAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/prism/Image$BaseAccessor",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/prism/Image;


# direct methods
.method constructor <init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;Ljava/nio/ByteBuffer;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/sun/javafx/image/PixelGetter",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/sun/javafx/image/PixelSetter",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ByteAccess;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/prism/Image;
    move-object/from16 v2, p2

    .local v2, "fmt":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v3, p3

    .local v3, "getter":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v4, p4

    .local v4, "setter":Lcom/sun/javafx/image/PixelSetter;, "Lcom/sun/javafx/image/PixelSetter<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v5, p5

    .local v5, "buffer":Ljava/nio/ByteBuffer;
    move/from16 v6, p6

    .local v6, "numbytes":I
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/prism/Image$ByteAccess;->this$0:Lcom/sun/prism/Image;

    .line 1017
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/prism/Image$BaseAccessor;-><init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;Ljava/nio/Buffer;I)V

    .line 1018
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Ljava/nio/ByteBuffer;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1022
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ByteAccess;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/prism/Image;
    move-object v2, p2

    .local v2, "fmt":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object v3, p3

    .local v3, "buffer":Ljava/nio/ByteBuffer;
    move v4, p4

    .local v4, "numbytes":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/prism/Image$ByteAccess;->this$0:Lcom/sun/prism/Image;

    .line 1023
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/prism/Image$BaseAccessor;-><init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V

    .line 1024
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
    .line 1031
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ByteAccess;
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

    .line 1032
    .local v9, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v11, v0

    .line 1033
    invoke-virtual {v11}, Lcom/sun/prism/Image$ByteAccess;->getGetter()Lcom/sun/javafx/image/PixelGetter;

    move-result-object v11

    move-object v12, v9

    invoke-static {v11, v12}, Lcom/sun/javafx/image/PixelUtils;->getB2BConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v11

    move-object v10, v11

    .line 1034
    .local v10, "b2bconverter":Lcom/sun/javafx/image/ByteToBytePixelConverter;
    move-object v11, v10

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/prism/Image$ByteAccess;->getBuffer()Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    move-object v13, v0

    move v14, v1

    move v15, v2

    invoke-virtual {v13, v14, v15}, Lcom/sun/prism/Image$ByteAccess;->getIndex(II)I

    move-result v13

    move-object v14, v0

    iget v14, v14, Lcom/sun/prism/Image$ByteAccess;->scanlineElems:I

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-interface/range {v11 .. v19}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/ByteBuffer;II[BIIII)V

    .line 1037
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
    .line 1044
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ByteAccess;
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

    .line 1045
    .local v9, "setter":Lcom/sun/javafx/image/IntPixelSetter;
    move-object v11, v0

    .line 1046
    invoke-virtual {v11}, Lcom/sun/prism/Image$ByteAccess;->getGetter()Lcom/sun/javafx/image/PixelGetter;

    move-result-object v11

    move-object v12, v9

    invoke-static {v11, v12}, Lcom/sun/javafx/image/PixelUtils;->getB2IConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v11

    move-object v10, v11

    .line 1047
    .local v10, "b2iconverter":Lcom/sun/javafx/image/ByteToIntPixelConverter;
    move-object v11, v10

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/prism/Image$ByteAccess;->getBuffer()Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    move-object v13, v0

    move v14, v1

    move v15, v2

    invoke-virtual {v13, v14, v15}, Lcom/sun/prism/Image$ByteAccess;->getIndex(II)I

    move-result v13

    move-object v14, v0

    iget v14, v14, Lcom/sun/prism/Image$ByteAccess;->scanlineElems:I

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-interface/range {v11 .. v19}, Lcom/sun/javafx/image/ByteToIntPixelConverter;->convert(Ljava/nio/ByteBuffer;II[IIIII)V

    .line 1050
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
    .line 1057
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/Image$ByteAccess;
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

    .line 1058
    .local v10, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v12, v10

    move-object v13, v1

    .line 1059
    invoke-virtual {v13}, Lcom/sun/prism/Image$ByteAccess;->getSetter()Lcom/sun/javafx/image/PixelSetter;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sun/javafx/image/PixelUtils;->getB2BConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v12

    move-object v11, v12

    .line 1060
    .local v11, "b2bconverter":Lcom/sun/javafx/image/ByteToBytePixelConverter;
    move-object v12, v11

    move-object v13, v7

    move v14, v8

    move v15, v9

    move-object/from16 v16, v1

    .line 1061
    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/Image$ByteAccess;->getBuffer()Ljava/nio/Buffer;

    move-result-object v16

    check-cast v16, Ljava/nio/ByteBuffer;

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lcom/sun/prism/Image$ByteAccess;->getIndex(II)I

    move-result v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/Image$ByteAccess;->scanlineElems:I

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v20, v5

    .line 1060
    invoke-interface/range {v12 .. v20}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert([BIILjava/nio/ByteBuffer;IIII)V

    .line 1063
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
    .line 1070
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/Image$ByteAccess;
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

    .line 1071
    .local v10, "getter":Lcom/sun/javafx/image/IntPixelGetter;
    move-object v12, v10

    move-object v13, v1

    .line 1072
    invoke-virtual {v13}, Lcom/sun/prism/Image$ByteAccess;->getSetter()Lcom/sun/javafx/image/PixelSetter;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sun/javafx/image/PixelUtils;->getI2BConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/IntToBytePixelConverter;

    move-result-object v12

    move-object v11, v12

    .line 1073
    .local v11, "i2bconverter":Lcom/sun/javafx/image/IntToBytePixelConverter;
    move-object v12, v11

    move-object v13, v7

    move v14, v8

    move v15, v9

    move-object/from16 v16, v1

    .line 1074
    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/Image$ByteAccess;->getBuffer()Ljava/nio/Buffer;

    move-result-object v16

    check-cast v16, Ljava/nio/ByteBuffer;

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lcom/sun/prism/Image$ByteAccess;->getIndex(II)I

    move-result v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/Image$ByteAccess;->scanlineElems:I

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v20, v5

    .line 1073
    invoke-interface/range {v12 .. v20}, Lcom/sun/javafx/image/IntToBytePixelConverter;->convert([IIILjava/nio/ByteBuffer;IIII)V

    .line 1076
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelReader;II)V
    .locals 18

    .prologue
    .line 1081
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/Image$ByteAccess;
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

    iget-object v10, v10, Lcom/sun/prism/Image$ByteAccess;->theBuffer:Ljava/nio/Buffer;

    check-cast v10, Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v9, v10

    .line 1082
    .local v9, "b":Ljava/nio/ByteBuffer;
    move-object v10, v9

    move-object v11, v9

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    move-object v12, v1

    move v13, v2

    move v14, v3

    invoke-virtual {v12, v13, v14}, Lcom/sun/prism/Image$ByteAccess;->getIndex(II)I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 1083
    move-object v10, v6

    move v11, v7

    move v12, v8

    move v13, v4

    move v14, v5

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/Image$ByteAccess;->theFormat:Ljavafx/scene/image/PixelFormat;

    check-cast v15, Ljavafx/scene/image/WritablePixelFormat;

    move-object/from16 v16, v9

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/Image$ByteAccess;->scanlineElems:I

    move/from16 v17, v0

    invoke-interface/range {v10 .. v17}, Ljavafx/scene/image/PixelReader;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V

    .line 1086
    return-void
.end method
