.class Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
.super Ljava/lang/Object;
.source "QuantumToolkit.java"

# interfaces
.implements Lcom/sun/javafx/tk/ImageLoader;
.implements Lcom/sun/prism/ResourceFactoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/QuantumToolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QuantumImage"
.end annotation


# instance fields
.field private image:Lcom/sun/prism/Image;

.field private rf:Lcom/sun/prism/ResourceFactory;

.field private rt:Lcom/sun/prism/RTTexture;


# direct methods
.method constructor <init>(Lcom/sun/prism/Image;)V
    .locals 4

    .prologue
    .line 1277
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move-object v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1278
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->image:Lcom/sun/prism/Image;

    .line 1279
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;)Lcom/sun/prism/RTTexture;
    .locals 2

    .prologue
    .line 1270
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    return-object v0
.end method


# virtual methods
.method dispose()V
    .locals 3

    .prologue
    .line 1310
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    .line 1311
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 1312
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    .line 1314
    :cond_0
    return-void
.end method

.method public factoryReleased()V
    .locals 2

    .prologue
    .line 1341
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->dispose()V

    return-void
.end method

.method public factoryReset()V
    .locals 2

    .prologue
    .line 1339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->dispose()V

    return-void
.end method

.method public getException()Ljava/lang/Exception;
    .locals 5

    .prologue
    .line 1322
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->image:Lcom/sun/prism/Image;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Unitialized image"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrame(I)Lcom/sun/javafx/tk/PlatformImage;
    .locals 3

    .prologue
    .line 1329
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->image:Lcom/sun/prism/Image;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    return-object v0
.end method

.method public getFrameCount()I
    .locals 2

    .prologue
    .line 1327
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    return v0
.end method

.method public getFrameDelay(I)I
    .locals 3

    .prologue
    .line 1331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move v1, p1

    .local v1, "index":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 1337
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    return v0
.end method

.method public getLoopCount()I
    .locals 2

    .prologue
    .line 1333
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    return v0
.end method

.method getRT(IILcom/sun/prism/ResourceFactory;)Lcom/sun/prism/RTTexture;
    .locals 10

    .prologue
    .line 1282
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v3, p3

    .local v3, "rfNew":Lcom/sun/prism/ResourceFactory;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rf:Lcom/sun/prism/ResourceFactory;

    move-object v6, v3

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    .line 1283
    invoke-interface {v5}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    invoke-interface {v5}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v5

    move v6, v2

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1284
    .local v4, "rttOk":Z
    move v5, v4

    if-eqz v5, :cond_0

    .line 1285
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    invoke-interface {v5}, Lcom/sun/prism/RTTexture;->lock()V

    .line 1286
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    invoke-interface {v5}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1287
    const/4 v5, 0x0

    move v4, v5

    .line 1291
    :cond_0
    move v5, v4

    if-nez v5, :cond_3

    .line 1292
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    if-eqz v5, :cond_1

    .line 1293
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    invoke-interface {v5}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 1295
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rf:Lcom/sun/prism/ResourceFactory;

    if-eqz v5, :cond_2

    .line 1296
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rf:Lcom/sun/prism/ResourceFactory;

    move-object v6, v0

    invoke-interface {v5, v6}, Lcom/sun/prism/ResourceFactory;->removeFactoryListener(Lcom/sun/prism/ResourceFactoryListener;)V

    .line 1297
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rf:Lcom/sun/prism/ResourceFactory;

    .line 1299
    :cond_2
    move-object v5, v0

    move-object v6, v3

    move v7, v1

    move v8, v2

    sget-object v9, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v6, v7, v8, v9}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    .line 1300
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    if-eqz v5, :cond_3

    .line 1301
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rf:Lcom/sun/prism/ResourceFactory;

    .line 1302
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rf:Lcom/sun/prism/ResourceFactory;

    move-object v6, v0

    invoke-interface {v5, v6}, Lcom/sun/prism/ResourceFactory;->addFactoryListener(Lcom/sun/prism/ResourceFactoryListener;)V

    .line 1306
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->rt:Lcom/sun/prism/RTTexture;

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    return-object v0

    .line 1283
    .end local v4    # "rttOk":Z
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 1335
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    return v0
.end method

.method setImage(Lcom/sun/prism/Image;)V
    .locals 4

    .prologue
    .line 1317
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->image:Lcom/sun/prism/Image;

    .line 1318
    return-void
.end method
