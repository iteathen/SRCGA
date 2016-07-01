.class Ljavafx/scene/image/WritableImage$2;
.super Ljava/lang/Object;
.source "WritableImage.java"

# interfaces
.implements Ljavafx/scene/image/PixelWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/image/WritableImage;->getPixelWriter()Ljavafx/scene/image/PixelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pimgprop:Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Lcom/sun/javafx/tk/PlatformImage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/image/WritableImage;


# direct methods
.method constructor <init>(Ljavafx/scene/image/WritableImage;)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/image/WritableImage;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 159
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    .line 160
    invoke-virtual {v3}, Ljavafx/scene/image/WritableImage;->acc_platformImageProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/image/WritableImage$2;->pimgprop:Ljavafx/beans/property/ReadOnlyObjectProperty;

    .line 159
    return-void
.end method


# virtual methods
.method public getPixelFormat()Ljavafx/scene/image/PixelFormat;
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$2;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v2}, Ljavafx/scene/image/WritableImage;->getWritablePlatformImage()Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v2

    move-object v1, v2

    .line 165
    .local v1, "pimg":Lcom/sun/javafx/tk/PlatformImage;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/tk/PlatformImage;->getPlatformPixelFormat()Ljavafx/scene/image/PixelFormat;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/WritableImage$2;
    return-object v0
.end method

.method public setArgb(III)V
    .locals 8

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$2;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v4}, Ljavafx/scene/image/WritableImage;->getWritablePlatformImage()Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v4

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/sun/javafx/tk/PlatformImage;->setArgb(III)V

    .line 171
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v4}, Ljavafx/scene/image/WritableImage;->pixelsDirty()V

    .line 172
    return-void
.end method

.method public setColor(IILjavafx/scene/paint/Color;)V
    .locals 15

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$2;
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

    .line 177
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

    .line 178
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

    .line 179
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

    .line 180
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

    .line 181
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

    invoke-virtual {v8, v9, v10, v11}, Ljavafx/scene/image/WritableImage$2;->setArgb(III)V

    .line 182
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V
    .locals 18
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
    .line 190
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$2;
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

    .local v7, "scanlineStride":I
    move-object v9, v5

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const-string v11, "PixelFormat cannot be null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 191
    :cond_0
    move-object v9, v6

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/NullPointerException;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const-string v11, "Buffer cannot be null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 192
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v9}, Ljavafx/scene/image/WritableImage;->getWritablePlatformImage()Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v9

    move-object v8, v9

    .line 193
    .local v8, "pimg":Lcom/sun/javafx/tk/PlatformImage;
    move-object v9, v8

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    invoke-interface/range {v9 .. v16}, Lcom/sun/javafx/tk/PlatformImage;->setPixels(IIIILjavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V

    .line 195
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v9}, Ljavafx/scene/image/WritableImage;->pixelsDirty()V

    .line 196
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;[BII)V
    .locals 20
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
    .line 203
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$2;
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
    move-object v10, v5

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/NullPointerException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const-string v12, "PixelFormat cannot be null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 204
    :cond_0
    move-object v10, v6

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/NullPointerException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const-string v12, "Buffer cannot be null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 205
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v10}, Ljavafx/scene/image/WritableImage;->getWritablePlatformImage()Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v10

    move-object v9, v10

    .line 206
    .local v9, "pimg":Lcom/sun/javafx/tk/PlatformImage;
    move-object v10, v9

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-interface/range {v10 .. v18}, Lcom/sun/javafx/tk/PlatformImage;->setPixels(IIIILjavafx/scene/image/PixelFormat;[BII)V

    .line 208
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v10}, Ljavafx/scene/image/WritableImage;->pixelsDirty()V

    .line 209
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;[III)V
    .locals 20
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
    .line 216
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$2;
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
    move-object v10, v5

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/NullPointerException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const-string v12, "PixelFormat cannot be null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 217
    :cond_0
    move-object v10, v6

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/NullPointerException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const-string v12, "Buffer cannot be null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 218
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v10}, Ljavafx/scene/image/WritableImage;->getWritablePlatformImage()Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v10

    move-object v9, v10

    .line 219
    .local v9, "pimg":Lcom/sun/javafx/tk/PlatformImage;
    move-object v10, v9

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-interface/range {v10 .. v18}, Lcom/sun/javafx/tk/PlatformImage;->setPixels(IIIILjavafx/scene/image/PixelFormat;[III)V

    .line 221
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v10}, Ljavafx/scene/image/WritableImage;->pixelsDirty()V

    .line 222
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelReader;II)V
    .locals 18

    .prologue
    .line 228
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$2;
    move/from16 v1, p1

    .local v1, "writex":I
    move/from16 v2, p2

    .local v2, "writey":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "reader":Ljavafx/scene/image/PixelReader;
    move/from16 v6, p6

    .local v6, "readx":I
    move/from16 v7, p7

    .local v7, "ready":I
    move-object v9, v5

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const-string v11, "Reader cannot be null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 229
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v9}, Ljavafx/scene/image/WritableImage;->getWritablePlatformImage()Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v9

    move-object v8, v9

    .line 230
    .local v8, "pimg":Lcom/sun/javafx/tk/PlatformImage;
    move-object v9, v8

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-interface/range {v9 .. v16}, Lcom/sun/javafx/tk/PlatformImage;->setPixels(IIIILjavafx/scene/image/PixelReader;II)V

    .line 231
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/image/WritableImage$2;->this$0:Ljavafx/scene/image/WritableImage;

    invoke-virtual {v9}, Ljavafx/scene/image/WritableImage;->pixelsDirty()V

    .line 232
    return-void
.end method
