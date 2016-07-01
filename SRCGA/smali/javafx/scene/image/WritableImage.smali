.class public Ljavafx/scene/image/WritableImage;
.super Ljavafx/scene/image/Image;
.source "WritableImage.java"


# instance fields
.field private tkImageLoader:Lcom/sun/javafx/tk/ImageLoader;

.field private writer:Ljavafx/scene/image/PixelWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljavafx/scene/image/WritableImage$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/image/WritableImage$1;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/tk/Toolkit;->setWritableImageAccessor(Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;)V

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/image/Image;-><init>(II)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/image/PixelReader;II)V
    .locals 12
    .param p1    # Ljavafx/scene/image/PixelReader;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "reader"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage;
    move-object v1, p1

    .local v1, "reader":Ljavafx/scene/image/PixelReader;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/scene/image/Image;-><init>(II)V

    .line 101
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/image/WritableImage;->getPixelWriter()Ljavafx/scene/image/PixelWriter;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v2

    move v8, v3

    move-object v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Ljavafx/scene/image/PixelWriter;->setPixels(IIIILjavafx/scene/image/PixelReader;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/image/PixelReader;IIII)V
    .locals 14
    .param p1    # Ljavafx/scene/image/PixelReader;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "reader"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "x"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "y"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage;
    move-object v1, p1

    .local v1, "reader":Ljavafx/scene/image/PixelReader;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move-object v6, v0

    move v7, v4

    move v8, v5

    invoke-direct {v6, v7, v8}, Ljavafx/scene/image/Image;-><init>(II)V

    .line 133
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/image/WritableImage;->getPixelWriter()Ljavafx/scene/image/PixelWriter;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v4

    move v10, v5

    move-object v11, v1

    move v12, v2

    move v13, v3

    invoke-interface/range {v6 .. v13}, Ljavafx/scene/image/PixelWriter;->setPixels(IIIILjavafx/scene/image/PixelReader;II)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/image/WritableImage;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/WritableImage;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/image/WritableImage;->loadTkImage(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/image/WritableImage;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/WritableImage;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/image/WritableImage;->getTkImageLoader()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/image/WritableImage;
    return-object v0
.end method

.method private getTkImageLoader()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/WritableImage;->tkImageLoader:Lcom/sun/javafx/tk/ImageLoader;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/WritableImage;
    return-object v0
.end method

.method private loadTkImage(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage;
    move-object v1, p1

    .local v1, "loader":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/tk/ImageLoader;

    if-nez v3, :cond_0

    .line 240
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized image loader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/tk/ImageLoader;

    move-object v2, v3

    .line 244
    .local v2, "tkLoader":Lcom/sun/javafx/tk/ImageLoader;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/javafx/tk/ImageLoader;->getWidth()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/image/WritableImage;->getWidth()D

    move-result-wide v4

    double-to-int v4, v4

    if-ne v3, v4, :cond_1

    move-object v3, v2

    .line 245
    invoke-interface {v3}, Lcom/sun/javafx/tk/ImageLoader;->getHeight()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/image/WritableImage;->getHeight()D

    move-result-wide v4

    double-to-int v4, v4

    if-eq v3, v4, :cond_2

    .line 247
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Size of loader does not match size of image"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_2
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/sun/javafx/tk/ImageLoader;->getFrame(I)Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v4

    invoke-super {v3, v4}, Ljavafx/scene/image/Image;->setPlatformImage(Lcom/sun/javafx/tk/PlatformImage;)V

    .line 251
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/image/WritableImage;->tkImageLoader:Lcom/sun/javafx/tk/ImageLoader;

    .line 252
    return-void
.end method


# virtual methods
.method public final getPixelWriter()Ljavafx/scene/image/PixelWriter;
    .locals 7

    .prologue
    .line 154
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/image/WritableImage;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/image/WritableImage;->getProgress()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/image/WritableImage;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    .line 235
    .end local v1    # "this":Ljavafx/scene/image/WritableImage;
    :goto_0
    return-object v1

    .line 157
    .restart local v1    # "this":Ljavafx/scene/image/WritableImage;
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/WritableImage;->writer:Ljavafx/scene/image/PixelWriter;

    if-nez v2, :cond_2

    .line 158
    move-object v2, v1

    new-instance v3, Ljavafx/scene/image/WritableImage$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/image/WritableImage$2;-><init>(Ljavafx/scene/image/WritableImage;)V

    iput-object v3, v2, Ljavafx/scene/image/WritableImage;->writer:Ljavafx/scene/image/PixelWriter;

    .line 235
    :cond_2
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/image/WritableImage;->writer:Ljavafx/scene/image/PixelWriter;

    move-object v1, v2

    goto :goto_0
.end method

.method isAnimation()Z
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/WritableImage;
    return v0
.end method

.method pixelsReadable()Z
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/WritableImage;
    return v0
.end method
