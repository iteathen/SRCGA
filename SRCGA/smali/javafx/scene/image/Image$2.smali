.class Ljavafx/scene/image/Image$2;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljavafx/scene/image/PixelReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/image/Image;->getPixelReader()Ljavafx/scene/image/PixelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/image/Image;


# direct methods
.method constructor <init>(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 1180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/Image$2;->this$0:Ljavafx/scene/image/Image;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgb(II)I
    .locals 7

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$2;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/image/Image$2;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v4}, Ljavafx/scene/image/Image;->access$1200(Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/tk/PlatformImage;

    move-object v3, v4

    .line 1190
    .local v3, "pimg":Lcom/sun/javafx/tk/PlatformImage;
    move-object v4, v3

    move v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/tk/PlatformImage;->getArgb(II)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Ljavafx/scene/image/Image$2;
    return v0
.end method

.method public getColor(II)Ljavafx/scene/paint/Color;
    .locals 16

    .prologue
    .line 1195
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/image/Image$2;
    move/from16 v2, p1

    .local v2, "x":I
    move/from16 v3, p2

    .local v3, "y":I
    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/image/Image$2;->getArgb(II)I

    move-result v9

    move v4, v9

    .line 1196
    .local v4, "argb":I
    move v9, v4

    const/16 v10, 0x18

    ushr-int/lit8 v9, v9, 0x18

    move v5, v9

    .line 1197
    .local v5, "a":I
    move v9, v4

    const/16 v10, 0x10

    shr-int/lit8 v9, v9, 0x10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v6, v9

    .line 1198
    .local v6, "r":I
    move v9, v4

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v7, v9

    .line 1199
    .local v7, "g":I
    move v9, v4

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v8, v9

    .line 1200
    .local v8, "b":I
    move v9, v6

    move v10, v7

    move v11, v8

    move v12, v5

    int-to-double v12, v12

    const-wide v14, 0x406fe00000000000L    # 255.0

    div-double/2addr v12, v14

    invoke-static {v9, v10, v11, v12, v13}, Ljavafx/scene/paint/Color;->rgb(IIID)Ljavafx/scene/paint/Color;

    move-result-object v9

    move-object v1, v9

    .end local v1    # "this":Ljavafx/scene/image/Image$2;
    return-object v1
.end method

.method public getPixelFormat()Ljavafx/scene/image/PixelFormat;
    .locals 3

    .prologue
    .line 1183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$2;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/Image$2;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v2}, Ljavafx/scene/image/Image;->access$1200(Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/tk/PlatformImage;

    move-object v1, v2

    .line 1184
    .local v1, "pimg":Lcom/sun/javafx/tk/PlatformImage;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/tk/PlatformImage;->getPlatformPixelFormat()Ljavafx/scene/image/PixelFormat;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/Image$2;
    return-object v0
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V
    .locals 17
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
    .line 1209
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$2;
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

    .local v6, "buffer":Ljava/nio/Buffer;, "TT;"
    move/from16 v7, p7

    .local v7, "scanlineStride":I
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/image/Image$2;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v9}, Ljavafx/scene/image/Image;->access$1200(Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/tk/PlatformImage;

    move-object v8, v9

    .line 1210
    .local v8, "pimg":Lcom/sun/javafx/tk/PlatformImage;
    move-object v9, v8

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    invoke-interface/range {v9 .. v16}, Lcom/sun/javafx/tk/PlatformImage;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V

    .line 1212
    return-void
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[BII)V
    .locals 19
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
    .line 1219
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$2;
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

    .local v6, "buffer":[B
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineStride":I
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/image/Image$2;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v10}, Ljavafx/scene/image/Image;->access$1200(Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/tk/PlatformImage;

    move-object v9, v10

    .line 1220
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

    invoke-interface/range {v10 .. v18}, Lcom/sun/javafx/tk/PlatformImage;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[BII)V

    .line 1222
    return-void
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[III)V
    .locals 19
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
    .line 1229
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$2;
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

    .local v6, "buffer":[I
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineStride":I
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/image/Image$2;->this$0:Ljavafx/scene/image/Image;

    invoke-static {v10}, Ljavafx/scene/image/Image;->access$1200(Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/tk/PlatformImage;

    move-object v9, v10

    .line 1230
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

    invoke-interface/range {v10 .. v18}, Lcom/sun/javafx/tk/PlatformImage;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[III)V

    .line 1232
    return-void
.end method
