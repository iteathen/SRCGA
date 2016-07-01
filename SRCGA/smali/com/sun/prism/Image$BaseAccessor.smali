.class abstract Lcom/sun/prism/Image$BaseAccessor;
.super Lcom/sun/prism/Image$Accessor;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseAccessor"
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
.field offsetElems:I

.field pixelElems:I

.field scanlineElems:I

.field theBuffer:Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field theFormat:Ljavafx/scene/image/PixelFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/image/PixelFormat",
            "<TI;>;"
        }
    .end annotation
.end field

.field theGetter:Lcom/sun/javafx/image/PixelGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/image/PixelGetter",
            "<TI;>;"
        }
    .end annotation
.end field

.field theSetter:Lcom/sun/javafx/image/PixelSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/image/PixelSetter",
            "<TI;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/prism/Image;


# direct methods
.method constructor <init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;Ljava/nio/Buffer;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<TI;>;",
            "Lcom/sun/javafx/image/PixelGetter",
            "<TI;>;",
            "Lcom/sun/javafx/image/PixelSetter",
            "<TI;>;TI;I)V"
        }
    .end annotation

    .prologue
    .line 921
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/prism/Image;
    move-object v2, p2

    .local v2, "theFormat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TI;>;"
    move-object v3, p3

    .local v3, "getter":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<TI;>;"
    move-object v4, p4

    .local v4, "setter":Lcom/sun/javafx/image/PixelSetter;, "Lcom/sun/javafx/image/PixelSetter<TI;>;"
    move-object/from16 v5, p5

    .local v5, "buffer":Ljava/nio/Buffer;, "TI;"
    move/from16 v6, p6

    .local v6, "pixelStride":I
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/prism/Image$BaseAccessor;->this$0:Lcom/sun/prism/Image;

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/prism/Image$Accessor;-><init>(Lcom/sun/prism/Image;)V

    .line 922
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/prism/Image$BaseAccessor;->theFormat:Ljavafx/scene/image/PixelFormat;

    .line 923
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/sun/prism/Image$BaseAccessor;->theGetter:Lcom/sun/javafx/image/PixelGetter;

    .line 924
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/sun/prism/Image$BaseAccessor;->theSetter:Lcom/sun/javafx/image/PixelSetter;

    .line 925
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/sun/prism/Image$BaseAccessor;->theBuffer:Ljava/nio/Buffer;

    .line 926
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/prism/Image$BaseAccessor;->pixelElems:I

    .line 927
    move-object v7, v0

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/prism/Image;->access$100(Lcom/sun/prism/Image;)I

    move-result v8

    move-object v9, v1

    invoke-static {v9}, Lcom/sun/prism/Image;->access$200(Lcom/sun/prism/Image;)Lcom/sun/prism/PixelFormat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/prism/PixelFormat;->getDataType()Lcom/sun/prism/PixelFormat$DataType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/prism/PixelFormat$DataType;->getSizeInBytes()I

    move-result v9

    div-int/2addr v8, v9

    iput v8, v7, Lcom/sun/prism/Image$BaseAccessor;->scanlineElems:I

    .line 928
    move-object v7, v0

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/prism/Image;->access$300(Lcom/sun/prism/Image;)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/Image$BaseAccessor;->scanlineElems:I

    mul-int/2addr v8, v9

    move-object v9, v1

    invoke-static {v9}, Lcom/sun/prism/Image;->access$400(Lcom/sun/prism/Image;)I

    move-result v9

    move v10, v6

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lcom/sun/prism/Image$BaseAccessor;->offsetElems:I

    .line 929
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<TI;>;TI;I)V"
        }
    .end annotation

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/prism/Image;
    move-object v2, p2

    .local v2, "theFormat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TI;>;"
    move-object v3, p3

    .local v3, "buffer":Ljava/nio/Buffer;, "TI;"
    move/from16 v4, p4

    .local v4, "pixelStride":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v2

    invoke-static {v8}, Lcom/sun/javafx/image/PixelUtils;->getGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/PixelGetter;

    move-result-object v8

    move-object v9, v2

    invoke-static {v9}, Lcom/sun/prism/Image;->getSetterIfWritable(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/PixelSetter;

    move-result-object v9

    move-object v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/sun/prism/Image$BaseAccessor;-><init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;Ljava/nio/Buffer;I)V

    .line 916
    return-void
.end method


# virtual methods
.method public getArgb(II)I
    .locals 8

    .prologue
    .line 973
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/Image$BaseAccessor;->getGetter()Lcom/sun/javafx/image/PixelGetter;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/prism/Image$BaseAccessor;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/prism/Image$BaseAccessor;->getIndex(II)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/image/PixelGetter;->getArgb(Ljava/nio/Buffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    return v0
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .prologue
    .line 939
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$BaseAccessor;->theBuffer:Ljava/nio/Buffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    return-object v0
.end method

.method public getGetter()Lcom/sun/javafx/image/PixelGetter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/javafx/image/PixelGetter",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 943
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$BaseAccessor;->theGetter:Lcom/sun/javafx/image/PixelGetter;

    if-nez v1, :cond_0

    .line 944
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Unsupported Image type"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 946
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$BaseAccessor;->theGetter:Lcom/sun/javafx/image/PixelGetter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    return-object v0
.end method

.method public getIndex(II)I
    .locals 8

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v2

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/Image$BaseAccessor;->this$0:Lcom/sun/prism/Image;

    invoke-static {v4}, Lcom/sun/prism/Image;->access$500(Lcom/sun/prism/Image;)I

    move-result v4

    if-ge v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/Image$BaseAccessor;->this$0:Lcom/sun/prism/Image;

    invoke-static {v4}, Lcom/sun/prism/Image;->access$600(Lcom/sun/prism/Image;)I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 933
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 935
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/Image$BaseAccessor;->offsetElems:I

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/Image$BaseAccessor;->scanlineElems:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/Image$BaseAccessor;->pixelElems:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    return v0
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V
    .locals 20
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
    .line 987
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<TT;>;"
    move-object/from16 v6, p6

    .local v6, "dstbuf":Ljava/nio/Buffer;, "TT;"
    move/from16 v7, p7

    .local v7, "dstScanlineElems":I
    move-object v11, v5

    invoke-static {v11}, Lcom/sun/javafx/image/PixelUtils;->getSetter(Ljavafx/scene/image/WritablePixelFormat;)Lcom/sun/javafx/image/PixelSetter;

    move-result-object v11

    move-object v8, v11

    .line 988
    .local v8, "setter":Lcom/sun/javafx/image/PixelSetter;, "Lcom/sun/javafx/image/PixelSetter<TT;>;"
    move-object v11, v0

    .line 989
    invoke-virtual {v11}, Lcom/sun/prism/Image$BaseAccessor;->getGetter()Lcom/sun/javafx/image/PixelGetter;

    move-result-object v11

    move-object v12, v8

    invoke-static {v11, v12}, Lcom/sun/javafx/image/PixelUtils;->getConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/PixelConverter;

    move-result-object v11

    move-object v9, v11

    .line 990
    .local v9, "converter":Lcom/sun/javafx/image/PixelConverter;, "Lcom/sun/javafx/image/PixelConverter<TI;TT;>;"
    move-object v11, v6

    invoke-virtual {v11}, Ljava/nio/Buffer;->position()I

    move-result v11

    move v10, v11

    .line 991
    .local v10, "dstoff":I
    move-object v11, v9

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/prism/Image$BaseAccessor;->getBuffer()Ljava/nio/Buffer;

    move-result-object v12

    move-object v13, v0

    move v14, v1

    move v15, v2

    invoke-virtual {v13, v14, v15}, Lcom/sun/prism/Image$BaseAccessor;->getIndex(II)I

    move-result v13

    move-object v14, v0

    iget v14, v14, Lcom/sun/prism/Image$BaseAccessor;->scanlineElems:I

    move-object v15, v6

    move/from16 v16, v10

    move/from16 v17, v7

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-interface/range {v11 .. v19}, Lcom/sun/javafx/image/PixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 994
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
    .line 958
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$BaseAccessor;->theFormat:Ljavafx/scene/image/PixelFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    return-object v0
.end method

.method public getSetter()Lcom/sun/javafx/image/PixelSetter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/javafx/image/PixelSetter",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 950
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$BaseAccessor;->theSetter:Lcom/sun/javafx/image/PixelSetter;

    if-nez v1, :cond_0

    .line 951
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Unsupported Image type"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$BaseAccessor;->theSetter:Lcom/sun/javafx/image/PixelSetter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    return-object v0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$BaseAccessor;->theSetter:Lcom/sun/javafx/image/PixelSetter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public promoteToWritableImage()Lcom/sun/javafx/tk/PlatformImage;
    .locals 2

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$BaseAccessor;->this$0:Lcom/sun/prism/Image;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    return-object v0
.end method

.method public setArgb(III)V
    .locals 9

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/prism/Image$BaseAccessor;->getSetter()Lcom/sun/javafx/image/PixelSetter;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/prism/Image$BaseAccessor;->getBuffer()Ljava/nio/Buffer;

    move-result-object v5

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/prism/Image$BaseAccessor;->getIndex(II)I

    move-result v6

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/sun/javafx/image/PixelSetter;->setArgb(Ljava/nio/Buffer;II)V

    .line 979
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V
    .locals 21
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
    .line 1002
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/Image$BaseAccessor;, "Lcom/sun/prism/Image$BaseAccessor<TI;>;"
    move/from16 v2, p1

    .local v2, "x":I
    move/from16 v3, p2

    .local v3, "y":I
    move/from16 v4, p3

    .local v4, "w":I
    move/from16 v5, p4

    .local v5, "h":I
    move-object/from16 v6, p5

    .local v6, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TT;>;"
    move-object/from16 v7, p6

    .local v7, "srcbuf":Ljava/nio/Buffer;, "TT;"
    move/from16 v8, p7

    .local v8, "srcScanlineBytes":I
    move-object v12, v6

    invoke-static {v12}, Lcom/sun/javafx/image/PixelUtils;->getGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/PixelGetter;

    move-result-object v12

    move-object v9, v12

    .line 1003
    .local v9, "getter":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<TT;>;"
    move-object v12, v9

    move-object v13, v1

    .line 1004
    invoke-virtual {v13}, Lcom/sun/prism/Image$BaseAccessor;->getSetter()Lcom/sun/javafx/image/PixelSetter;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sun/javafx/image/PixelUtils;->getConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/PixelConverter;

    move-result-object v12

    move-object v10, v12

    .line 1005
    .local v10, "converter":Lcom/sun/javafx/image/PixelConverter;, "Lcom/sun/javafx/image/PixelConverter<TT;TI;>;"
    move-object v12, v7

    invoke-virtual {v12}, Ljava/nio/Buffer;->position()I

    move-result v12

    move v11, v12

    .line 1006
    .local v11, "srcoff":I
    move-object v12, v10

    move-object v13, v7

    move v14, v11

    move v15, v8

    move-object/from16 v16, v1

    .line 1007
    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/Image$BaseAccessor;->getBuffer()Ljava/nio/Buffer;

    move-result-object v16

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lcom/sun/prism/Image$BaseAccessor;->getIndex(II)I

    move-result v17

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/Image$BaseAccessor;->scanlineElems:I

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v20, v5

    .line 1006
    invoke-interface/range {v12 .. v20}, Lcom/sun/javafx/image/PixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 1009
    return-void
.end method
