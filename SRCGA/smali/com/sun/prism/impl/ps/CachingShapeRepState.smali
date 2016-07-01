.class Lcom/sun/prism/impl/ps/CachingShapeRepState;
.super Ljava/lang/Object;
.source "CachingShapeRep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;,
        Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;,
        Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;,
        Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    }
.end annotation


# static fields
.field private static final IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private static final maskCache:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;


# instance fields
.field private bbox:[F

.field private final disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

.field private final disposerReferent:Ljava/lang/Object;

.field private lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private renderCount:I

.field private final texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

.field private tryCache:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 380
    sget-object v0, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    sput-object v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 382
    new-instance v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;-><init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$1;)V

    sput-object v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->maskCache:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 390
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->disposerReferent:Ljava/lang/Object;

    .line 394
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;-><init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$1;)V

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    .line 395
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;-><init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/prism/impl/ps/CachingShapeRepState$1;)V

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

    .line 396
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->disposerReferent:Ljava/lang/Object;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState;->disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

    invoke-static {v1, v2}, Lcom/sun/prism/impl/Disposer;->addRecord(Ljava/lang/Object;Lcom/sun/prism/impl/Disposer$Record;)V

    .line 397
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/BaseTransform;)Z
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->equalsIgnoreTranslation(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/BaseTransform;)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/geom/transform/BaseTransform;
    return v0
.end method

.method static synthetic access$1100()Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->maskCache:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;

    return-object v0
.end method

.method private static equalsIgnoreTranslation(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/BaseTransform;)Z
    .locals 6

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "a":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v1, p1

    .local v1, "b":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 370
    const/4 v2, 0x1

    move v0, v2

    .line 377
    .end local v0    # "a":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_0
    return v0

    .line 373
    .restart local v0    # "a":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_0
    move-object v2, v0

    .line 374
    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v0

    .line 375
    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v0

    .line 376
    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v0

    .line 377
    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private invalidateMaskTexData()V
    .locals 3

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->tryCache:Ljava/lang/Boolean;

    .line 423
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 424
    sget-object v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->maskCache:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    invoke-virtual {v1, v2}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->unref(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)V

    .line 425
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->invalidate()V

    .line 580
    return-void
.end method

.method drawNoCache(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;)V
    .locals 5

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    .line 407
    return-void
.end method

.method fillNoCache(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;)V
    .locals 5

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/sun/prism/Graphics;->fill(Lcom/sun/javafx/geom/Shape;)V

    .line 402
    return-void
.end method

.method invalidate()V
    .locals 3

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->renderCount:I

    .line 414
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->tryCache:Ljava/lang/Boolean;

    .line 415
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 416
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->bbox:[F

    .line 417
    return-void
.end method

.method render(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/prism/BasicStroke;)V
    .locals 49

    .prologue
    .line 429
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState;
    move-object/from16 v3, p1

    .local v3, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v4, p2

    .local v4, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v5, p3

    .local v5, "shapeBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v6, p4

    .local v6, "stroke":Lcom/sun/prism/BasicStroke;
    move-object/from16 v32, v3

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v32

    move-object/from16 v7, v32

    .line 435
    .local v7, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    move-object/from16 v32, v7

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->equalsIgnoreTranslation(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/BaseTransform;)Z

    move-result v32

    if-nez v32, :cond_1

    .line 436
    :cond_0
    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->invalidateMaskTexData()V

    .line 437
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 438
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->renderCount:I

    .line 442
    :cond_1
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$200(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-result-object v32

    if-eqz v32, :cond_2

    .line 443
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Texture;->lock()V

    .line 444
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 445
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Texture;->unlock()V

    .line 446
    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->invalidateMaskTexData()V

    .line 450
    :cond_2
    const/16 v32, 0x0

    move-object/from16 v8, v32

    .line 451
    .local v8, "xformBounds":Lcom/sun/javafx/geom/RectBounds;
    const/16 v32, 0x0

    move/from16 v9, v32

    .line 453
    .local v9, "boundsCopy":Z
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->tryCache:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    if-nez v32, :cond_3

    .line 455
    move-object/from16 v32, v7

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v32

    if-eqz v32, :cond_5

    .line 456
    move-object/from16 v32, v5

    move-object/from16 v8, v32

    .line 464
    :goto_0
    move-object/from16 v32, v2

    move-object/from16 v33, v8

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_6

    sget-object v33, Lcom/sun/prism/impl/ps/CachingShapeRepState;->maskCache:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;

    move-object/from16 v34, v8

    invoke-virtual/range {v33 .. v34}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->hasRoom(Lcom/sun/javafx/geom/RectBounds;)Z

    move-result v33

    if-eqz v33, :cond_6

    const/16 v33, 0x1

    :goto_1
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->tryCache:Ljava/lang/Boolean;

    .line 467
    :cond_3
    move-object/from16 v32, v2

    move-object/from16 v48, v32

    move-object/from16 v32, v48

    move-object/from16 v33, v48

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->renderCount:I

    move/from16 v33, v0

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->renderCount:I

    .line 468
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->tryCache:Ljava/lang/Boolean;

    move-object/from16 v32, v0

    sget-object v33, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_4

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->renderCount:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_4

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/sun/prism/impl/ps/BaseShaderGraphics;

    move/from16 v32, v0

    if-eqz v32, :cond_4

    move-object/from16 v32, v3

    check-cast v32, Lcom/sun/prism/impl/ps/BaseShaderGraphics;

    .line 471
    invoke-virtual/range {v32 .. v32}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isComplexPaint()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 481
    :cond_4
    move-object/from16 v32, v6

    if-nez v32, :cond_7

    .line 482
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    invoke-virtual/range {v32 .. v34}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->fillNoCache(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;)V

    .line 486
    .line 572
    :goto_2
    return-void

    .line 458
    :cond_5
    new-instance v32, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v48, v32

    move-object/from16 v32, v48

    move-object/from16 v33, v48

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v8, v32

    .line 459
    const/16 v32, 0x1

    move/from16 v9, v32

    .line 462
    move-object/from16 v32, v7

    move-object/from16 v33, v5

    move-object/from16 v34, v8

    invoke-virtual/range {v32 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v32

    check-cast v32, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v8, v32

    goto/16 :goto_0

    .line 464
    :cond_6
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 484
    :cond_7
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    invoke-virtual/range {v32 .. v34}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->drawNoCache(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;)V

    goto :goto_2

    .line 489
    :cond_8
    move-object/from16 v32, v3

    check-cast v32, Lcom/sun/prism/impl/ps/BaseShaderGraphics;

    move-object/from16 v10, v32

    .line 490
    .local v10, "bsg":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v32, v10

    invoke-virtual/range {v32 .. v32}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getContext()Lcom/sun/prism/impl/ps/BaseShaderContext;

    move-result-object v32

    move-object/from16 v11, v32

    .line 491
    .local v11, "context":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v0

    move-object/from16 v33, v7

    invoke-virtual/range {v32 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_b

    .line 493
    :cond_9
    move-object/from16 v32, v8

    if-nez v32, :cond_a

    .line 494
    move-object/from16 v32, v7

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v32

    if-eqz v32, :cond_e

    .line 495
    move-object/from16 v32, v5

    move-object/from16 v8, v32

    .line 503
    :cond_a
    :goto_3
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$200(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-result-object v32

    if-eqz v32, :cond_f

    .line 507
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    move-object/from16 v33, v7

    invoke-virtual/range {v32 .. v33}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->adjustOrigin(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 515
    :goto_4
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v0

    if-nez v32, :cond_10

    .line 516
    move-object/from16 v32, v2

    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 522
    :cond_b
    :goto_5
    move-object/from16 v32, v10

    invoke-virtual/range {v32 .. v32}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaint()Lcom/sun/prism/paint/Paint;

    move-result-object v32

    move-object/from16 v12, v32

    .line 523
    .local v12, "paint":Lcom/sun/prism/paint/Paint;
    const/16 v32, 0x0

    move/from16 v13, v32

    .local v13, "bx":F
    const/16 v32, 0x0

    move/from16 v14, v32

    .local v14, "by":F
    const/16 v32, 0x0

    move/from16 v15, v32

    .local v15, "bw":F
    const/16 v32, 0x0

    move/from16 v16, v32

    .line 524
    .local v16, "bh":F
    move-object/from16 v32, v12

    invoke-virtual/range {v32 .. v32}, Lcom/sun/prism/paint/Paint;->isProportional()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 525
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->bbox:[F

    move-object/from16 v32, v0

    if-nez v32, :cond_c

    .line 526
    move-object/from16 v32, v2

    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    fill-array-data v33, :array_0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState;->bbox:[F

    .line 530
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->bbox:[F

    move-object/from16 v32, v0

    move-object/from16 v33, v4

    sget-object v34, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-static/range {v32 .. v34}, Lcom/sun/javafx/geom/Shape;->accumulate([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 532
    :cond_c
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->bbox:[F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget v32, v32, v33

    move/from16 v13, v32

    .line 533
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->bbox:[F

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget v32, v32, v33

    move/from16 v14, v32

    .line 534
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->bbox:[F

    move-object/from16 v32, v0

    const/16 v33, 0x2

    aget v32, v32, v33

    move/from16 v33, v13

    sub-float v32, v32, v33

    move/from16 v15, v32

    .line 535
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->bbox:[F

    move-object/from16 v32, v0

    const/16 v33, 0x3

    aget v32, v32, v33

    move/from16 v33, v14

    sub-float v32, v32, v33

    move/from16 v16, v32

    .line 538
    :cond_d
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$600(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)I

    move-result v32

    move/from16 v17, v32

    .line 539
    .local v17, "mw":I
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$700(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)I

    move-result v32

    move/from16 v18, v32

    .line 540
    .local v18, "mh":I
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v32

    move-object/from16 v19, v32

    .line 541
    .local v19, "maskTex":Lcom/sun/prism/Texture;
    move-object/from16 v32, v19

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v20, v32

    .line 542
    .local v20, "tw":F
    move-object/from16 v32, v19

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v21, v32

    .line 543
    .local v21, "th":F
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$400(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)F

    move-result v32

    move/from16 v22, v32

    .line 544
    .local v22, "dx1":F
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$500(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)F

    move-result v32

    move/from16 v23, v32

    .line 545
    .local v23, "dy1":F
    move/from16 v32, v22

    move/from16 v33, v17

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v24, v32

    .line 546
    .local v24, "dx2":F
    move/from16 v32, v23

    move/from16 v33, v18

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v25, v32

    .line 547
    .local v25, "dy2":F
    move-object/from16 v32, v19

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Texture;->getContentX()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v33, v20

    div-float v32, v32, v33

    move/from16 v26, v32

    .line 548
    .local v26, "tx1":F
    move-object/from16 v32, v19

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Texture;->getContentY()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v33, v21

    div-float v32, v32, v33

    move/from16 v27, v32

    .line 549
    .local v27, "ty1":F
    move/from16 v32, v26

    move/from16 v33, v17

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v34, v20

    div-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v28, v32

    .line 550
    .local v28, "tx2":F
    move/from16 v32, v27

    move/from16 v33, v18

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v34, v21

    div-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v29, v32

    .line 552
    .local v29, "ty2":F
    sget v32, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    if-eqz v32, :cond_11

    .line 555
    move-object/from16 v32, v11

    move-object/from16 v33, v10

    sget-object v34, Lcom/sun/prism/impl/ps/CachingShapeRepState;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    sget-object v35, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ALPHA_TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v36, v0

    .line 557
    invoke-static/range {v36 .. v36}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v36

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v15

    move/from16 v40, v16

    .line 556
    invoke-virtual/range {v32 .. v40}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v32

    move-object/from16 v30, v32

    .line 560
    .local v30, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v32, v11

    invoke-virtual/range {v32 .. v32}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v32

    move-object/from16 v31, v32

    .line 561
    .local v31, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v32, v31

    move/from16 v33, v22

    move/from16 v34, v23

    move/from16 v35, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move/from16 v39, v28

    move/from16 v40, v29

    move-object/from16 v41, v10

    move-object/from16 v42, v7

    move-object/from16 v43, v30

    move/from16 v44, v13

    move/from16 v45, v14

    move/from16 v46, v15

    move/from16 v47, v16

    .line 562
    invoke-virtual/range {v41 .. v47}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaintTextureTx(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;FFFF)Lcom/sun/javafx/geom/transform/AffineBase;

    move-result-object v41

    .line 561
    invoke-virtual/range {v32 .. v41}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFLcom/sun/javafx/geom/transform/AffineBase;)V

    .line 563
    .line 571
    .end local v30    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v31    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    :goto_6
    move-object/from16 v32, v19

    invoke-interface/range {v32 .. v32}, Lcom/sun/prism/Texture;->unlock()V

    .line 572
    goto/16 :goto_2

    .line 497
    .end local v12    # "paint":Lcom/sun/prism/paint/Paint;
    .end local v13    # "bx":F
    .end local v14    # "by":F
    .end local v15    # "bw":F
    .end local v16    # "bh":F
    .end local v17    # "mw":I
    .end local v18    # "mh":I
    .end local v19    # "maskTex":Lcom/sun/prism/Texture;
    .end local v20    # "tw":F
    .end local v21    # "th":F
    .end local v22    # "dx1":F
    .end local v23    # "dy1":F
    .end local v24    # "dx2":F
    .end local v25    # "dy2":F
    .end local v26    # "tx1":F
    .end local v27    # "ty1":F
    .end local v28    # "tx2":F
    .end local v29    # "ty2":F
    :cond_e
    new-instance v32, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v48, v32

    move-object/from16 v32, v48

    move-object/from16 v33, v48

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v8, v32

    .line 498
    const/16 v32, 0x1

    move/from16 v9, v32

    .line 499
    move-object/from16 v32, v7

    move-object/from16 v33, v5

    move-object/from16 v34, v8

    invoke-virtual/range {v32 .. v34}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v32

    check-cast v32, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v8, v32

    goto/16 :goto_3

    .line 512
    :cond_f
    sget-object v32, Lcom/sun/prism/impl/ps/CachingShapeRepState;->maskCache:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;

    move-object/from16 v33, v11

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v34, v0

    move-object/from16 v35, v4

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    move/from16 v39, v9

    move-object/from16 v40, v3

    invoke-interface/range {v40 .. v40}, Lcom/sun/prism/Graphics;->isAntialiasedShape()Z

    move-result v40

    invoke-virtual/range {v32 .. v40}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->get(Lcom/sun/prism/impl/ps/BaseShaderContext;Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/RectBounds;ZZ)V

    goto/16 :goto_4

    .line 518
    :cond_10
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->lastXform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v0

    move-object/from16 v33, v7

    invoke-virtual/range {v32 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    goto/16 :goto_5

    .line 566
    .restart local v12    # "paint":Lcom/sun/prism/paint/Paint;
    .restart local v13    # "bx":F
    .restart local v14    # "by":F
    .restart local v15    # "bw":F
    .restart local v16    # "bh":F
    .restart local v17    # "mw":I
    .restart local v18    # "mh":I
    .restart local v19    # "maskTex":Lcom/sun/prism/Texture;
    .restart local v20    # "tw":F
    .restart local v21    # "th":F
    .restart local v22    # "dx1":F
    .restart local v23    # "dy1":F
    .restart local v24    # "dx2":F
    .restart local v25    # "dy2":F
    .restart local v26    # "tx1":F
    .restart local v27    # "ty1":F
    .restart local v28    # "tx2":F
    .restart local v29    # "ty2":F
    :cond_11
    move-object/from16 v32, v11

    move-object/from16 v33, v10

    sget-object v34, Lcom/sun/prism/impl/ps/CachingShapeRepState;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v35

    move/from16 v36, v13

    move/from16 v37, v14

    move/from16 v38, v15

    move/from16 v39, v16

    invoke-virtual/range {v32 .. v39}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v32

    .line 568
    move-object/from16 v32, v11

    invoke-virtual/range {v32 .. v32}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v32

    move-object/from16 v30, v32

    .line 569
    .local v30, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v32, v30

    move/from16 v33, v22

    move/from16 v34, v23

    move/from16 v35, v24

    move/from16 v36, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move/from16 v39, v28

    move/from16 v40, v29

    invoke-virtual/range {v32 .. v40}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    goto/16 :goto_6

    .line 526
    :array_0
    .array-data 4
        0x7f800000    # Float.POSITIVE_INFINITY
        0x7f800000    # Float.POSITIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
    .end array-data
.end method
