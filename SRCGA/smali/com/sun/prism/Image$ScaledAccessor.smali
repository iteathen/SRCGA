.class Lcom/sun/prism/Image$ScaledAccessor;
.super Lcom/sun/prism/Image$Accessor;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaledAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/nio/Buffer;",
        ">",
        "Lcom/sun/prism/Image$Accessor",
        "<TI;>;"
    }
.end annotation


# instance fields
.field pixelScale:F

.field theDelegate:Lcom/sun/prism/Image$Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/prism/Image$Accessor",
            "<TI;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/prism/Image;


# direct methods
.method constructor <init>(Lcom/sun/prism/Image;Lcom/sun/prism/Image$Accessor;F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/Image$Accessor",
            "<TI;>;F)V"
        }
    .end annotation

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/prism/Image;
    move-object v2, p2

    .local v2, "delegate":Lcom/sun/prism/Image$Accessor;, "Lcom/sun/prism/Image$Accessor<TI;>;"
    move v3, p3

    .local v3, "pixelScale":F
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/prism/Image$ScaledAccessor;->this$0:Lcom/sun/prism/Image;

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/prism/Image$Accessor;-><init>(Lcom/sun/prism/Image;)V

    .line 773
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/prism/Image$ScaledAccessor;->theDelegate:Lcom/sun/prism/Image$Accessor;

    .line 774
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/prism/Image$ScaledAccessor;->pixelScale:F

    .line 775
    return-void
.end method

.method private scale(I)I
    .locals 4

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move v1, p1

    .local v1, "v":I
    move v2, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/Image$ScaledAccessor;->pixelScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    return v0
.end method


# virtual methods
.method public getArgb(II)I
    .locals 7

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/Image$ScaledAccessor;->theDelegate:Lcom/sun/prism/Image$Accessor;

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/sun/prism/Image$ScaledAccessor;->scale(I)I

    move-result v4

    move-object v5, v0

    move v6, v2

    invoke-direct {v5, v6}, Lcom/sun/prism/Image$ScaledAccessor;->scale(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/Image$Accessor;->getArgb(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    return v0
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<TT;>;TT;I)V"
        }
    .end annotation

    .prologue
    .line 814
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move/from16 v3, p1

    .local v3, "x":I
    move/from16 v4, p2

    .local v4, "y":I
    move/from16 v5, p3

    .local v5, "w":I
    move/from16 v6, p4

    .local v6, "h":I
    move-object/from16 v7, p5

    .local v7, "pixelformat":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<TT;>;"
    move-object/from16 v8, p6

    .local v8, "pixels":Ljava/nio/Buffer;, "TT;"
    move/from16 v9, p7

    .local v9, "scanlineElems":I
    move-object/from16 v18, v7

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/image/PixelUtils;->getSetter(Ljavafx/scene/image/WritablePixelFormat;)Lcom/sun/javafx/image/PixelSetter;

    move-result-object v18

    move-object/from16 v10, v18

    .line 815
    .local v10, "setter":Lcom/sun/javafx/image/PixelSetter;, "Lcom/sun/javafx/image/PixelSetter<TT;>;"
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/nio/Buffer;->position()I

    move-result v18

    move/from16 v11, v18

    .line 816
    .local v11, "offset":I
    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/image/PixelSetter;->getNumElements()I

    move-result v18

    move/from16 v12, v18

    .line 817
    .local v12, "numElem":I
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "rely":I
    :goto_0
    move/from16 v18, v13

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 818
    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v13

    add-int v19, v19, v20

    invoke-direct/range {v18 .. v19}, Lcom/sun/prism/Image$ScaledAccessor;->scale(I)I

    move-result v18

    move/from16 v14, v18

    .line 819
    .local v14, "sy":I
    move/from16 v18, v11

    move/from16 v15, v18

    .line 820
    .local v15, "rowoff":I
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "relx":I
    :goto_1
    move/from16 v18, v16

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 821
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v16

    add-int v19, v19, v20

    invoke-direct/range {v18 .. v19}, Lcom/sun/prism/Image$ScaledAccessor;->scale(I)I

    move-result v18

    move/from16 v17, v18

    .line 822
    .local v17, "sx":I
    move-object/from16 v18, v10

    move-object/from16 v19, v8

    move/from16 v20, v15

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/Image$ScaledAccessor;->theDelegate:Lcom/sun/prism/Image$Accessor;

    move-object/from16 v21, v0

    move/from16 v22, v17

    move/from16 v23, v14

    invoke-virtual/range {v21 .. v23}, Lcom/sun/prism/Image$Accessor;->getArgb(II)I

    move-result v21

    invoke-interface/range {v18 .. v21}, Lcom/sun/javafx/image/PixelSetter;->setArgb(Ljava/nio/Buffer;II)V

    .line 823
    move/from16 v18, v15

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v15, v18

    .line 820
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 825
    .end local v17    # "sx":I
    :cond_0
    move/from16 v18, v11

    move/from16 v19, v9

    add-int v18, v18, v19

    move/from16 v11, v18

    .line 817
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 827
    .end local v14    # "sy":I
    .end local v15    # "rowoff":I
    .end local v16    # "relx":I
    :cond_1
    return-void
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[BII)V
    .locals 18
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
    .line 834
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
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

    .local v6, "pixels":[B
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineBytes":I
    move-object v10, v6

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v9, v10

    .line 835
    .local v9, "bb":Ljava/nio/ByteBuffer;
    move-object v10, v9

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 836
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v5

    move-object/from16 v16, v9

    move/from16 v17, v8

    invoke-virtual/range {v10 .. v17}, Lcom/sun/prism/Image$ScaledAccessor;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V

    .line 837
    return-void
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[III)V
    .locals 18
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
    .line 844
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
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

    .local v6, "pixels":[I
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineInts":I
    move-object v10, v6

    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v10

    move-object v9, v10

    .line 845
    .local v9, "ib":Ljava/nio/IntBuffer;
    move-object v10, v9

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 846
    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v5

    move-object/from16 v16, v9

    move/from16 v17, v8

    invoke-virtual/range {v10 .. v17}, Lcom/sun/prism/Image$ScaledAccessor;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V

    .line 847
    return-void
.end method

.method public getPlatformPixelFormat()Ljavafx/scene/image/PixelFormat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/PixelFormat",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$ScaledAccessor;->theDelegate:Lcom/sun/prism/Image$Accessor;

    invoke-virtual {v1}, Lcom/sun/prism/Image$Accessor;->getPlatformPixelFormat()Ljavafx/scene/image/PixelFormat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    return-object v0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$ScaledAccessor;->theDelegate:Lcom/sun/prism/Image$Accessor;

    invoke-virtual {v1}, Lcom/sun/prism/Image$Accessor;->isWritable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    return v0
.end method

.method public promoteToWritableImage()Lcom/sun/javafx/tk/PlatformImage;
    .locals 5

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Pixel setting for scaled images not supported yet"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setArgb(III)V
    .locals 8

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "argb":I
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Pixel setting for scaled images not supported yet"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V
    .locals 12
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
    .line 855
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TT;>;"
    move-object/from16 v6, p6

    .local v6, "pixels":Ljava/nio/Buffer;, "TT;"
    move/from16 v7, p7

    .local v7, "scanlineElems":I
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Pixel setting for scaled images not supported yet"

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;[BII)V
    .locals 13
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
    .line 876
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v6, p6

    .local v6, "pixels":[B
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineBytes":I
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "Pixel setting for scaled images not supported yet"

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;[III)V
    .locals 13
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
    .line 884
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/IntBuffer;>;"
    move-object/from16 v6, p6

    .local v6, "pixels":[I
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineInts":I
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "Pixel setting for scaled images not supported yet"

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelReader;II)V
    .locals 12

    .prologue
    .line 891
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ScaledAccessor;, "Lcom/sun/prism/Image$ScaledAccessor<TI;>;"
    move v1, p1

    .local v1, "dstx":I
    move v2, p2

    .local v2, "dsty":I
    move v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "reader":Ljavafx/scene/image/PixelReader;
    move/from16 v6, p6

    .local v6, "srcx":I
    move/from16 v7, p7

    .local v7, "srcy":I
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Pixel setting for scaled images not supported yet"

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
