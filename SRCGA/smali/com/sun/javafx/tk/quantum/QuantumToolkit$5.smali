.class Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;
.super Ljava/lang/Object;
.source "QuantumToolkit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/tk/quantum/QuantumToolkit;->renderToImage(Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/QuantumToolkit;

.field final synthetic val$currentPaint:Lcom/sun/prism/paint/Paint;

.field final synthetic val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/QuantumToolkit;Lcom/sun/prism/paint/Paint;Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;)V
    .locals 6

    .prologue
    .line 1369
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->this$0:Lcom/sun/javafx/tk/quantum/QuantumToolkit;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$currentPaint:Lcom/sun/prism/paint/Paint;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private draw(Lcom/sun/prism/Graphics;IIII)V
    .locals 12

    .prologue
    .line 1384
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget-object v8, v8, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V

    .line 1385
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget-boolean v8, v8, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->depthBuffer:Z

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setDepthBuffer(Z)V

    .line 1387
    move-object v7, v1

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->getClearColor()Lcom/sun/prism/paint/Color;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->clear(Lcom/sun/prism/paint/Color;)V

    .line 1388
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$currentPaint:Lcom/sun/prism/paint/Paint;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$currentPaint:Lcom/sun/prism/paint/Paint;

    .line 1389
    invoke-virtual {v7}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v7

    sget-object v8, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    if-eq v7, v8, :cond_0

    .line 1390
    move-object v7, v1

    invoke-interface {v7}, Lcom/sun/prism/Graphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$currentPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v8}, Lcom/sun/prism/paint/Paint;->isOpaque()Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/sun/prism/RenderTarget;->setOpaque(Z)V

    .line 1391
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$currentPaint:Lcom/sun/prism/paint/Paint;

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1392
    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v4

    int-to-float v10, v10

    move v11, v5

    int-to-float v11, v11

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/sun/prism/Graphics;->fillQuad(FFFF)V

    .line 1396
    :cond_0
    move v7, v2

    if-nez v7, :cond_1

    move v7, v3

    if-eqz v7, :cond_2

    .line 1397
    :cond_1
    move-object v7, v1

    move v8, v2

    neg-int v8, v8

    int-to-float v8, v8

    move v9, v3

    neg-int v9, v9

    int-to-float v9, v9

    invoke-interface {v7, v8, v9}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 1399
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget-object v7, v7, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v7, :cond_3

    .line 1400
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget-object v8, v8, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1403
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget-object v7, v7, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->root:Lcom/sun/javafx/sg/prism/NGNode;

    if-eqz v7, :cond_5

    .line 1404
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget-object v7, v7, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    if-eqz v7, :cond_4

    .line 1405
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget-object v8, v8, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V

    .line 1407
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget-object v7, v7, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->root:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v6, v7

    .line 1408
    .local v6, "ngNode":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->render(Lcom/sun/prism/Graphics;)V

    .line 1411
    .end local v6    # "ngNode":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_5
    return-void
.end method

.method private getClearColor()Lcom/sun/prism/paint/Color;
    .locals 3

    .prologue
    .line 1372
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$currentPaint:Lcom/sun/prism/paint/Paint;

    if-nez v1, :cond_0

    .line 1373
    sget-object v1, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    move-object v0, v1

    .line 1379
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;
    :goto_0
    return-object v0

    .line 1374
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$currentPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v1}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v1

    sget-object v2, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    if-ne v1, v2, :cond_1

    .line 1375
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$currentPaint:Lcom/sun/prism/paint/Paint;

    check-cast v1, Lcom/sun/prism/paint/Color;

    move-object v0, v1

    goto :goto_0

    .line 1376
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$currentPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v1}, Lcom/sun/prism/paint/Paint;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1377
    sget-object v1, Lcom/sun/prism/paint/Color;->TRANSPARENT:Lcom/sun/prism/paint/Color;

    move-object v0, v1

    goto :goto_0

    .line 1379
    :cond_2
    sget-object v1, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 1416
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getDefaultResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v13

    move-object v1, v13

    .line 1418
    .local v1, "rf":Lcom/sun/prism/ResourceFactory;
    move-object v13, v1

    invoke-interface {v13}, Lcom/sun/prism/ResourceFactory;->isDeviceReady()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1419
    .line 1473
    :goto_0
    return-void

    .line 1422
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget v13, v13, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->x:I

    move v2, v13

    .line 1423
    .local v2, "x":I
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget v13, v13, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->y:I

    move v3, v13

    .line 1424
    .local v3, "y":I
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget v13, v13, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->width:I

    move v4, v13

    .line 1425
    .local v4, "w":I
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget v13, v13, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->height:I

    move v5, v13

    .line 1427
    .local v5, "h":I
    move v13, v4

    if-lez v13, :cond_1

    move v13, v5

    if-gtz v13, :cond_2

    .line 1428
    :cond_1
    goto :goto_0

    .line 1431
    :cond_2
    const/4 v13, 0x0

    move v6, v13

    .line 1433
    .local v6, "errored":Z
    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget-object v13, v13, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->platformImage:Ljava/lang/Object;

    instance-of v13, v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;

    if-eqz v13, :cond_3

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    iget-object v13, v13, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->platformImage:Ljava/lang/Object;

    check-cast v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;

    :goto_1
    move-object v7, v13

    .line 1436
    .local v7, "pImage":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    move-object v13, v7

    move v14, v4

    move v15, v5

    move-object/from16 v16, v1

    invoke-virtual/range {v13 .. v16}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->getRT(IILcom/sun/prism/ResourceFactory;)Lcom/sun/prism/RTTexture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    move-object v8, v13

    .line 1438
    .local v8, "rt":Lcom/sun/prism/RTTexture;
    move-object v13, v8

    if-nez v13, :cond_4

    .line 1470
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 1471
    move-object v13, v1

    invoke-interface {v13}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v13

    move v14, v6

    invoke-interface {v13, v14}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 1439
    goto :goto_0

    .line 1433
    .end local v7    # "pImage":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    .end local v8    # "rt":Lcom/sun/prism/RTTexture;
    :cond_3
    :try_start_1
    new-instance v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;-><init>(Lcom/sun/prism/Image;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1466
    :catch_0
    move-exception v13

    move-object v7, v13

    .line 1467
    .local v7, "t":Ljava/lang/Throwable;
    const/4 v13, 0x1

    move v6, v13

    .line 1468
    move-object v13, v7

    :try_start_2
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1470
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 1471
    move-object v13, v1

    invoke-interface {v13}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v13

    move v14, v6

    invoke-interface {v13, v14}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 1472
    .line 1473
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_0

    .line 1442
    .local v7, "pImage":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    .restart local v8    # "rt":Lcom/sun/prism/RTTexture;
    :cond_4
    move-object v13, v8

    :try_start_3
    invoke-interface {v13}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v13

    move-object v9, v13

    .line 1444
    .local v9, "g":Lcom/sun/prism/Graphics;
    move-object v13, v0

    move-object v14, v9

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->draw(Lcom/sun/prism/Graphics;IIII)V

    .line 1446
    move-object v13, v7

    invoke-static {v13}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->access$100(Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;)Lcom/sun/prism/RTTexture;

    move-result-object v13

    invoke-interface {v13}, Lcom/sun/prism/RTTexture;->getPixels()[I

    move-result-object v13

    move-object v10, v13

    .line 1448
    .local v10, "pixels":[I
    move-object v13, v10

    if-eqz v13, :cond_5

    .line 1449
    move-object v13, v7

    move-object v14, v10

    move v15, v4

    move/from16 v16, v5

    invoke-static/range {v14 .. v16}, Lcom/sun/prism/Image;->fromIntArgbPreData([III)Lcom/sun/prism/Image;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->setImage(Lcom/sun/prism/Image;)V

    .line 1462
    :goto_3
    move-object v13, v8

    invoke-interface {v13}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 1464
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;->val$params:Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    move-object v14, v7

    iput-object v14, v13, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->platformImage:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1470
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 1471
    move-object v13, v1

    invoke-interface {v13}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v13

    move v14, v6

    invoke-interface {v13, v14}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    .line 1472
    goto :goto_2

    .line 1451
    :cond_5
    move v13, v4

    move v14, v5

    mul-int/2addr v13, v14

    :try_start_4
    invoke-static {v13}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v13

    move-object v11, v13

    .line 1452
    .local v11, "ib":Ljava/nio/IntBuffer;
    move-object v13, v7

    invoke-static {v13}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->access$100(Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;)Lcom/sun/prism/RTTexture;

    move-result-object v13

    move-object v14, v11

    move-object v15, v7

    invoke-static {v15}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->access$100(Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;)Lcom/sun/prism/RTTexture;

    move-result-object v15

    invoke-interface {v15}, Lcom/sun/prism/RTTexture;->getContentX()I

    move-result v15

    move-object/from16 v16, v7

    .line 1453
    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->access$100(Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;)Lcom/sun/prism/RTTexture;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/sun/prism/RTTexture;->getContentY()I

    move-result v16

    move/from16 v17, v4

    move/from16 v18, v5

    .line 1452
    invoke-interface/range {v13 .. v18}, Lcom/sun/prism/RTTexture;->readPixels(Ljava/nio/Buffer;IIII)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1455
    move-object v13, v7

    move-object v14, v11

    move v15, v4

    move/from16 v16, v5

    invoke-static/range {v14 .. v16}, Lcom/sun/prism/Image;->fromIntArgbPreData(Ljava/nio/IntBuffer;II)Lcom/sun/prism/Image;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->setImage(Lcom/sun/prism/Image;)V

    goto :goto_3

    .line 1457
    :cond_6
    move-object v13, v7

    invoke-virtual {v13}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;->dispose()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1458
    const/4 v13, 0x0

    move-object v7, v13

    goto :goto_3

    .line 1470
    .end local v7    # "pImage":Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    .end local v8    # "rt":Lcom/sun/prism/RTTexture;
    .end local v9    # "g":Lcom/sun/prism/Graphics;
    .end local v10    # "pixels":[I
    .end local v11    # "ib":Ljava/nio/IntBuffer;
    :catchall_0
    move-exception v13

    move-object v12, v13

    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 1471
    move-object v13, v1

    invoke-interface {v13}, Lcom/sun/prism/ResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v13

    move v14, v6

    invoke-interface {v13, v14}, Lcom/sun/prism/impl/TextureResourcePool;->freeDisposalRequestedAndCheckResources(Z)V

    move-object v13, v12

    throw v13
.end method
