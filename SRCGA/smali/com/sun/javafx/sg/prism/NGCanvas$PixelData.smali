.class Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
.super Ljava/lang/Object;
.source "NGCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PixelData"
.end annotation


# instance fields
.field private ch:I

.field private cw:I

.field private pixels:Ljava/nio/IntBuffer;

.field private validPixels:Z


# direct methods
.method private constructor <init>(II)V
    .locals 6

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
    move v1, p1

    .local v1, "cw":I
    move v2, p2

    .local v2, "ch":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 275
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->pixels:Ljava/nio/IntBuffer;

    .line 276
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->validPixels:Z

    .line 280
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->cw:I

    .line 281
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->ch:I

    .line 282
    move-object v3, v0

    move v4, v1

    move v5, v2

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->pixels:Ljava/nio/IntBuffer;

    .line 283
    return-void
.end method

.method synthetic constructor <init>(IILcom/sun/javafx/sg/prism/NGCanvas$1;)V
    .locals 7

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/sg/prism/NGCanvas$1;
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;-><init>(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/Graphics;II)V
    .locals 8

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/prism/Graphics;
    move v2, p2

    .local v2, "x2":I
    move v3, p3

    .local v3, "x3":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->restore(Lcom/sun/prism/Graphics;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/RTTexture;)V
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/prism/RTTexture;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->save(Lcom/sun/prism/RTTexture;)V

    return-void
.end method

.method private restore(Lcom/sun/prism/Graphics;II)V
    .locals 13

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move v2, p2

    .local v2, "tw":I
    move/from16 v3, p3

    .local v3, "th":I
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->validPixels:Z

    if-eqz v7, :cond_0

    .line 300
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->pixels:Ljava/nio/IntBuffer;

    move v8, v2

    move v9, v3

    invoke-static {v7, v8, v9}, Lcom/sun/prism/Image;->fromIntArgbPreData(Ljava/nio/IntBuffer;II)Lcom/sun/prism/Image;

    move-result-object v7

    move-object v4, v7

    .line 301
    .local v4, "img":Lcom/sun/prism/Image;
    move-object v7, v1

    invoke-interface {v7}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v7

    move-object v5, v7

    .line 302
    .local v5, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v7, v5

    move-object v8, v4

    sget-object v9, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    sget-object v10, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    .line 303
    invoke-interface {v7, v8, v9, v10}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v7

    move-object v6, v7

    .line 306
    .local v6, "tempTex":Lcom/sun/prism/Texture;
    move-object v7, v1

    move-object v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v2

    int-to-float v11, v11

    move v12, v3

    int-to-float v12, v12

    invoke-interface/range {v7 .. v12}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 307
    move-object v7, v6

    invoke-interface {v7}, Lcom/sun/prism/Texture;->dispose()V

    .line 309
    .end local v4    # "img":Lcom/sun/prism/Image;
    .end local v5    # "factory":Lcom/sun/prism/ResourceFactory;
    .end local v6    # "tempTex":Lcom/sun/prism/Texture;
    :cond_0
    return-void
.end method

.method private save(Lcom/sun/prism/RTTexture;)V
    .locals 7

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
    move-object v1, p1

    .local v1, "tex":Lcom/sun/prism/RTTexture;
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v4

    move v2, v4

    .line 287
    .local v2, "tw":I
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v4

    move v3, v4

    .line 288
    .local v3, "th":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->cw:I

    move v5, v2

    if-lt v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->ch:I

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 289
    :cond_0
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->cw:I

    .line 290
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->ch:I

    .line 291
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->cw:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->ch:I

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->pixels:Ljava/nio/IntBuffer;

    .line 293
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->pixels:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    .line 294
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->pixels:Ljava/nio/IntBuffer;

    invoke-interface {v4, v5}, Lcom/sun/prism/RTTexture;->readPixels(Ljava/nio/Buffer;)Z

    move-result v4

    .line 295
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->validPixels:Z

    .line 296
    return-void
.end method
