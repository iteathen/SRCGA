.class Lcom/sun/javafx/sg/prism/RegionImageCache;
.super Ljava/lang/Object;
.source "RegionImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;
    }
.end annotation


# static fields
.field private static final HEIGHT:I = 0x400

.field private static final MAX_SIZE:I = 0x15f90

.field private static final WIDTH:I = 0x400


# instance fields
.field private backingStore:Lcom/sun/prism/RTTexture;

.field private hPacker:Lcom/sun/prism/impl/packrect/RectanglePacker;

.field private imageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;",
            ">;"
        }
    .end annotation
.end field

.field private vPacker:Lcom/sun/prism/impl/packrect/RectanglePacker;


# direct methods
.method constructor <init>(Lcom/sun/prism/ResourceFactory;)V
    .locals 14

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/RegionImageCache;
    move-object v1, p1

    .local v1, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/RegionImageCache;->imageMap:Ljava/util/HashMap;

    .line 63
    move-object v4, v1

    sget-object v5, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v4, v5}, Lcom/sun/prism/ResourceFactory;->isWrapModeSupported(Lcom/sun/prism/Texture$WrapMode;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    move-object v2, v4

    .line 65
    .local v2, "mode":Lcom/sun/prism/Texture$WrapMode;
    const/4 v4, 0x0

    move v3, v4

    .line 70
    .local v3, "pad":I
    :goto_0
    move-object v4, v0

    move-object v5, v1

    const/16 v6, 0x800

    const/16 v7, 0x400

    move-object v8, v2

    invoke-interface {v5, v6, v7, v8}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/RegionImageCache;->backingStore:Lcom/sun/prism/RTTexture;

    .line 71
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/RegionImageCache;->backingStore:Lcom/sun/prism/RTTexture;

    invoke-interface {v4}, Lcom/sun/prism/RTTexture;->contentsUseful()V

    .line 72
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/RegionImageCache;->backingStore:Lcom/sun/prism/RTTexture;

    invoke-interface {v4}, Lcom/sun/prism/RTTexture;->makePermanent()V

    .line 73
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/RegionImageCache;->backingStore:Lcom/sun/prism/RTTexture;

    invoke-interface {v4, v5}, Lcom/sun/prism/ResourceFactory;->setRegionTexture(Lcom/sun/prism/Texture;)V

    .line 81
    move-object v4, v0

    new-instance v5, Lcom/sun/prism/impl/packrect/RectanglePacker;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/RegionImageCache;->backingStore:Lcom/sun/prism/RTTexture;

    move v8, v3

    move v9, v3

    const/16 v10, 0x400

    move v11, v3

    rsub-int v10, v11, 0x400

    const/16 v11, 0x400

    move v12, v3

    rsub-int v11, v12, 0x400

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/sun/prism/impl/packrect/RectanglePacker;-><init>(Lcom/sun/prism/Texture;IIIIZ)V

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/RegionImageCache;->hPacker:Lcom/sun/prism/impl/packrect/RectanglePacker;

    .line 82
    move-object v4, v0

    new-instance v5, Lcom/sun/prism/impl/packrect/RectanglePacker;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/RegionImageCache;->backingStore:Lcom/sun/prism/RTTexture;

    const/16 v8, 0x400

    move v9, v3

    const/16 v10, 0x400

    const/16 v11, 0x400

    move v12, v3

    rsub-int v11, v12, 0x400

    const/4 v12, 0x1

    invoke-direct/range {v6 .. v12}, Lcom/sun/prism/impl/packrect/RectanglePacker;-><init>(Lcom/sun/prism/Texture;IIIIZ)V

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/RegionImageCache;->vPacker:Lcom/sun/prism/impl/packrect/RectanglePacker;

    .line 83
    return-void

    .line 67
    .end local v2    # "mode":Lcom/sun/prism/Texture$WrapMode;
    .end local v3    # "pad":I
    :cond_0
    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    move-object v2, v4

    .line 68
    .restart local v2    # "mode":Lcom/sun/prism/Texture$WrapMode;
    const/4 v4, 0x1

    move v3, v4

    .restart local v3    # "pad":I
    goto :goto_0
.end method


# virtual methods
.method getBackingStore()Lcom/sun/prism/RTTexture;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/RegionImageCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/RegionImageCache;->backingStore:Lcom/sun/prism/RTTexture;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/RegionImageCache;
    return-object v0
.end method

.method getImageLocation(Ljava/lang/Integer;Lcom/sun/javafx/geom/Rectangle;Ljavafx/scene/layout/Background;Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/Graphics;)Z
    .locals 18

    .prologue
    .line 119
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/RegionImageCache;
    move-object/from16 v1, p1

    .local v1, "key":Ljava/lang/Integer;
    move-object/from16 v2, p2

    .local v2, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v3, p3

    .local v3, "background":Ljavafx/scene/layout/Background;
    move-object/from16 v4, p4

    .local v4, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v5, p5

    .local v5, "g":Lcom/sun/prism/Graphics;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/RegionImageCache;->imageMap:Ljava/util/HashMap;

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;

    move-object v6, v9

    .line 120
    .local v6, "cache":Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;
    move-object v9, v6

    if-eqz v9, :cond_1

    .line 121
    move-object v9, v6

    move-object v10, v2

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v11, v2

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    move-object v12, v3

    move-object v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->equals(IILjavafx/scene/layout/Background;Lcom/sun/javafx/geom/Shape;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 122
    move-object v9, v2

    move-object v10, v6

    iget v10, v10, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->x:I

    iput v10, v9, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 123
    move-object v9, v2

    move-object v10, v6

    iget v10, v10, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->y:I

    iput v10, v9, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 124
    const/4 v9, 0x0

    move v0, v9

    .line 147
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/RegionImageCache;
    :goto_0
    return v0

    .line 128
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/RegionImageCache;
    :cond_0
    move-object v9, v2

    move-object v10, v2

    const/4 v11, -0x1

    move-object/from16 v16, v10

    move/from16 v17, v11

    move/from16 v10, v17

    move-object/from16 v11, v16

    move/from16 v12, v17

    iput v12, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    iput v10, v9, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 129
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 131
    :cond_1
    move-object v9, v2

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->height:I

    const/16 v10, 0x40

    if-le v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_1
    move v7, v9

    .line 132
    .local v7, "vertical":Z
    move v9, v7

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/RegionImageCache;->vPacker:Lcom/sun/prism/impl/packrect/RectanglePacker;

    :goto_2
    move-object v8, v9

    .line 134
    .local v8, "packer":Lcom/sun/prism/impl/packrect/RectanglePacker;
    move-object v9, v8

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/prism/impl/packrect/RectanglePacker;->add(Lcom/sun/javafx/geom/Rectangle;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 135
    move-object v9, v5

    invoke-interface {v9}, Lcom/sun/prism/Graphics;->sync()V

    .line 137
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/RegionImageCache;->vPacker:Lcom/sun/prism/impl/packrect/RectanglePacker;

    invoke-virtual {v9}, Lcom/sun/prism/impl/packrect/RectanglePacker;->clear()V

    .line 138
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/RegionImageCache;->hPacker:Lcom/sun/prism/impl/packrect/RectanglePacker;

    invoke-virtual {v9}, Lcom/sun/prism/impl/packrect/RectanglePacker;->clear()V

    .line 139
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/RegionImageCache;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 140
    move-object v9, v8

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/prism/impl/packrect/RectanglePacker;->add(Lcom/sun/javafx/geom/Rectangle;)Z

    move-result v9

    .line 141
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/RegionImageCache;->backingStore:Lcom/sun/prism/RTTexture;

    invoke-interface {v9}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v9

    invoke-interface {v9}, Lcom/sun/prism/Graphics;->clear()V

    .line 142
    sget-boolean v9, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v9, :cond_2

    .line 143
    const-string v9, "Region image cache flushed"

    invoke-static {v9}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 146
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/RegionImageCache;->imageMap:Ljava/util/HashMap;

    move-object v10, v1

    new-instance v11, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v12, v13, v14, v15}, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;-><init>(Lcom/sun/javafx/geom/Rectangle;Ljavafx/scene/layout/Background;Lcom/sun/javafx/geom/Shape;)V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 147
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 131
    .end local v7    # "vertical":Z
    .end local v8    # "packer":Lcom/sun/prism/impl/packrect/RectanglePacker;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 132
    .restart local v7    # "vertical":Z
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/RegionImageCache;->hPacker:Lcom/sun/prism/impl/packrect/RectanglePacker;

    goto :goto_2
.end method

.method isImageCachable(II)Z
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/RegionImageCache;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    const/4 v3, 0x0

    move v4, v1

    if-ge v3, v4, :cond_0

    move v3, v1

    const/16 v4, 0x400

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    move v4, v2

    if-ge v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x400

    if-ge v3, v4, :cond_0

    move v3, v1

    move v4, v2

    mul-int/2addr v3, v4

    const v4, 0x15f90

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/RegionImageCache;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/RegionImageCache;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
