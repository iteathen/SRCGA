.class public Lcom/sun/prism/impl/GlyphCache;
.super Ljava/lang/Object;
.source "GlyphCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/impl/GlyphCache$GlyphData;
    }
.end annotation


# static fields
.field private static final HEIGHT:I

.field private static final SEGSHIFT:I = 0x5

.field private static final SEGSIZE:I = 0x20

.field private static final SUBPIXEL_SHIFT:I = 0x1b

.field private static final WIDTH:I

.field private static emptyMask:Ljava/nio/ByteBuffer;

.field static greyPackerMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sun/prism/impl/BaseContext;",
            "Lcom/sun/prism/impl/packrect/RectanglePacker;",
            ">;"
        }
    .end annotation
.end field

.field static lcdPackerMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sun/prism/impl/BaseContext;",
            "Lcom/sun/prism/impl/packrect/RectanglePacker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Lcom/sun/prism/impl/BaseContext;

.field glyphDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/sun/prism/impl/GlyphCache$GlyphData;",
            ">;"
        }
    .end annotation
.end field

.field private isLCDCache:Z

.field private packer:Lcom/sun/prism/impl/packrect/RectanglePacker;

.field private final strike:Lcom/sun/javafx/font/FontStrike;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    sget v0, Lcom/sun/prism/impl/PrismSettings;->glyphCacheWidth:I

    sput v0, Lcom/sun/prism/impl/GlyphCache;->WIDTH:I

    .line 63
    sget v0, Lcom/sun/prism/impl/PrismSettings;->glyphCacheHeight:I

    sput v0, Lcom/sun/prism/impl/GlyphCache;->HEIGHT:I

    .line 86
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/GlyphCache;->greyPackerMap:Ljava/util/WeakHashMap;

    .line 89
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/GlyphCache;->lcdPackerMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/sun/prism/impl/BaseContext;Lcom/sun/javafx/font/FontStrike;)V
    .locals 13

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/impl/BaseContext;
    move-object v2, p2

    .local v2, "strike":Lcom/sun/javafx/font/FontStrike;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 72
    move-object v6, v0

    new-instance v7, Ljava/util/HashMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lcom/sun/prism/impl/GlyphCache;->glyphDataMap:Ljava/util/HashMap;

    .line 93
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/prism/impl/GlyphCache;->context:Lcom/sun/prism/impl/BaseContext;

    .line 94
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/prism/impl/GlyphCache;->strike:Lcom/sun/javafx/font/FontStrike;

    .line 98
    move-object v6, v0

    move-object v7, v2

    invoke-interface {v7}, Lcom/sun/javafx/font/FontStrike;->getAAMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/sun/prism/impl/GlyphCache;->isLCDCache:Z

    .line 100
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/prism/impl/GlyphCache;->isLCDCache:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/sun/prism/impl/GlyphCache;->lcdPackerMap:Ljava/util/WeakHashMap;

    :goto_1
    move-object v3, v6

    .line 101
    .local v3, "packerMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Lcom/sun/prism/impl/BaseContext;Lcom/sun/prism/impl/packrect/RectanglePacker;>;"
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/prism/impl/packrect/RectanglePacker;

    iput-object v7, v6, Lcom/sun/prism/impl/GlyphCache;->packer:Lcom/sun/prism/impl/packrect/RectanglePacker;

    .line 102
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/GlyphCache;->packer:Lcom/sun/prism/impl/packrect/RectanglePacker;

    if-nez v6, :cond_1

    .line 103
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/prism/impl/BaseContext;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v6

    move-object v4, v6

    .line 104
    .local v4, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v6, v4

    sget v7, Lcom/sun/prism/impl/GlyphCache;->WIDTH:I

    sget v8, Lcom/sun/prism/impl/GlyphCache;->HEIGHT:I

    sget-object v9, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v6, v7, v8, v9}, Lcom/sun/prism/ResourceFactory;->createMaskTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v6

    move-object v5, v6

    .line 106
    .local v5, "tex":Lcom/sun/prism/Texture;
    move-object v6, v5

    invoke-interface {v6}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 107
    move-object v6, v5

    invoke-interface {v6}, Lcom/sun/prism/Texture;->makePermanent()V

    .line 108
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/prism/impl/GlyphCache;->isLCDCache:Z

    if-nez v6, :cond_0

    .line 109
    move-object v6, v4

    move-object v7, v5

    invoke-interface {v6, v7}, Lcom/sun/prism/ResourceFactory;->setGlyphTexture(Lcom/sun/prism/Texture;)V

    .line 111
    :cond_0
    move-object v6, v5

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/sun/prism/Texture;->setLinearFiltering(Z)V

    .line 112
    move-object v6, v0

    new-instance v7, Lcom/sun/prism/impl/packrect/RectanglePacker;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    sget v10, Lcom/sun/prism/impl/GlyphCache;->WIDTH:I

    sget v11, Lcom/sun/prism/impl/GlyphCache;->HEIGHT:I

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/prism/impl/packrect/RectanglePacker;-><init>(Lcom/sun/prism/Texture;II)V

    iput-object v7, v6, Lcom/sun/prism/impl/GlyphCache;->packer:Lcom/sun/prism/impl/packrect/RectanglePacker;

    .line 113
    move-object v6, v3

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/GlyphCache;->packer:Lcom/sun/prism/impl/packrect/RectanglePacker;

    invoke-virtual {v6, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 115
    .end local v4    # "factory":Lcom/sun/prism/ResourceFactory;
    .end local v5    # "tex":Lcom/sun/prism/Texture;
    :cond_1
    return-void

    .line 98
    .end local v3    # "packerMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Lcom/sun/prism/impl/BaseContext;Lcom/sun/prism/impl/packrect/RectanglePacker;>;"
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 100
    :cond_3
    sget-object v6, Lcom/sun/prism/impl/GlyphCache;->greyPackerMap:Ljava/util/WeakHashMap;

    goto :goto_1
.end method

.method private addDataToQuad(Lcom/sun/prism/impl/GlyphCache$GlyphData;Lcom/sun/prism/impl/VertexBuffer;Lcom/sun/prism/Texture;FFFF)V
    .locals 40

    .prologue
    .line 186
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/GlyphCache;
    move-object/from16 v2, p1

    .local v2, "data":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move-object/from16 v3, p2

    .local v3, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v4, p3

    .local v4, "tex":Lcom/sun/prism/Texture;
    move/from16 v5, p4

    .local v5, "x":F
    move/from16 v6, p5

    .local v6, "y":F
    move/from16 v7, p6

    .local v7, "dstw":F
    move/from16 v8, p7

    .local v8, "dsth":F
    move/from16 v27, v6

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v6, v27

    .line 187
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/impl/GlyphCache$GlyphData;->getRect()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v27

    move-object/from16 v9, v27

    .line 188
    .local v9, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v27, v9

    if-nez v27, :cond_0

    .line 190
    .line 222
    :goto_0
    return-void

    .line 192
    :cond_0
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/impl/GlyphCache$GlyphData;->getBlankBoundary()I

    move-result v27

    move/from16 v10, v27

    .line 193
    .local v10, "border":I
    move-object/from16 v27, v9

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v27, v0

    move/from16 v28, v10

    const/16 v29, 0x2

    mul-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v11, v27

    .line 194
    .local v11, "gw":F
    move-object/from16 v27, v9

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v27, v0

    move/from16 v28, v10

    const/16 v29, 0x2

    mul-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v12, v27

    .line 195
    .local v12, "gh":F
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/impl/GlyphCache$GlyphData;->getOriginX()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v28, v5

    add-float v27, v27, v28

    move/from16 v13, v27

    .line 196
    .local v13, "dx1":F
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/impl/GlyphCache$GlyphData;->getOriginY()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v28, v6

    add-float v27, v27, v28

    move/from16 v14, v27

    .line 198
    .local v14, "dy1":F
    move/from16 v27, v14

    move/from16 v28, v12

    add-float v27, v27, v28

    move/from16 v16, v27

    .line 199
    .local v16, "dy2":F
    move-object/from16 v27, v4

    invoke-interface/range {v27 .. v27}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v17, v27

    .line 200
    .local v17, "tw":F
    move-object/from16 v27, v4

    invoke-interface/range {v27 .. v27}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v18, v27

    .line 201
    .local v18, "th":F
    move-object/from16 v27, v9

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v27, v0

    move/from16 v28, v10

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v28, v17

    div-float v27, v27, v28

    move/from16 v19, v27

    .line 202
    .local v19, "tx1":F
    move-object/from16 v27, v9

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v27, v0

    move/from16 v28, v10

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v28, v18

    div-float v27, v27, v28

    move/from16 v20, v27

    .line 203
    .local v20, "ty1":F
    move/from16 v27, v19

    move/from16 v28, v11

    move/from16 v29, v17

    div-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v21, v27

    .line 204
    .local v21, "tx2":F
    move/from16 v27, v20

    move/from16 v28, v12

    move/from16 v29, v18

    div-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v22, v27

    .line 205
    .local v22, "ty2":F
    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/sun/prism/impl/GlyphCache;->isLCDCache:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 206
    move/from16 v27, v13

    const/high16 v28, 0x40400000    # 3.0f

    mul-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40400000    # 3.0f

    div-float v27, v27, v28

    move/from16 v13, v27

    .line 207
    move/from16 v27, v13

    move/from16 v28, v11

    const/high16 v29, 0x40400000    # 3.0f

    div-float v28, v28, v29

    add-float v27, v27, v28

    move/from16 v15, v27

    .line 208
    .local v15, "dx2":F
    move/from16 v27, v13

    move/from16 v28, v7

    div-float v27, v27, v28

    move/from16 v23, v27

    .line 209
    .local v23, "t2x1":F
    move/from16 v27, v15

    move/from16 v28, v7

    div-float v27, v27, v28

    move/from16 v24, v27

    .line 210
    .local v24, "t2x2":F
    move/from16 v27, v14

    move/from16 v28, v8

    div-float v27, v27, v28

    move/from16 v25, v27

    .line 211
    .local v25, "t2y1":F
    move/from16 v27, v16

    move/from16 v28, v8

    div-float v27, v27, v28

    move/from16 v26, v27

    .line 212
    .local v26, "t2y2":F
    move-object/from16 v27, v3

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v31, v16

    move/from16 v32, v19

    move/from16 v33, v20

    move/from16 v34, v21

    move/from16 v35, v22

    move/from16 v36, v23

    move/from16 v37, v25

    move/from16 v38, v24

    move/from16 v39, v26

    invoke-virtual/range {v27 .. v39}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFFFFFF)V

    .line 213
    .line 222
    .end local v23    # "t2x1":F
    .end local v24    # "t2x2":F
    .end local v25    # "t2y1":F
    .end local v26    # "t2y2":F
    :goto_1
    goto/16 :goto_0

    .line 214
    .end local v15    # "dx2":F
    :cond_1
    move/from16 v27, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v13, v27

    .line 215
    move/from16 v27, v13

    move/from16 v28, v11

    add-float v27, v27, v28

    move/from16 v15, v27

    .line 216
    .restart local v15    # "dx2":F
    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/prism/impl/GlyphCache;->context:Lcom/sun/prism/impl/BaseContext;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/impl/BaseContext;->isSuperShaderEnabled()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 217
    move-object/from16 v27, v3

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v31, v16

    move/from16 v32, v19

    move/from16 v33, v20

    move/from16 v34, v21

    move/from16 v35, v22

    const/16 v36, 0x1

    invoke-virtual/range {v27 .. v36}, Lcom/sun/prism/impl/VertexBuffer;->addSuperQuad(FFFFFFFFZ)V

    goto :goto_1

    .line 219
    :cond_2
    move-object/from16 v27, v3

    move/from16 v28, v13

    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v31, v16

    move/from16 v32, v19

    move/from16 v33, v20

    move/from16 v34, v21

    move/from16 v35, v22

    invoke-virtual/range {v27 .. v35}, Lcom/sun/prism/impl/VertexBuffer;->addQuad(FFFFFFFF)V

    goto :goto_1
.end method

.method private clearAll()V
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/GlyphCache;->context:Lcom/sun/prism/impl/BaseContext;

    invoke-virtual {v1}, Lcom/sun/prism/impl/BaseContext;->flushVertexBuffer()V

    .line 236
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/GlyphCache;->context:Lcom/sun/prism/impl/BaseContext;

    invoke-virtual {v1}, Lcom/sun/prism/impl/BaseContext;->clearGlyphCaches()V

    .line 237
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/GlyphCache;->packer:Lcom/sun/prism/impl/packrect/RectanglePacker;

    invoke-virtual {v1}, Lcom/sun/prism/impl/packrect/RectanglePacker;->clear()V

    .line 238
    return-void
.end method

.method private getCachedGlyph(II)Lcom/sun/prism/impl/GlyphCache$GlyphData;
    .locals 38

    .prologue
    .line 241
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/GlyphCache;
    move/from16 v3, p1

    .local v3, "glyphCode":I
    move/from16 v4, p2

    .local v4, "subPixel":I
    move/from16 v26, v3

    const/16 v27, 0x5

    shr-int/lit8 v26, v26, 0x5

    move/from16 v5, v26

    .line 242
    .local v5, "segIndex":I
    move/from16 v26, v3

    const/16 v27, 0x20

    rem-int/lit8 v26, v26, 0x20

    move/from16 v6, v26

    .line 243
    .local v6, "subIndex":I
    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x1b

    shl-int/lit8 v27, v27, 0x1b

    or-int v26, v26, v27

    move/from16 v5, v26

    .line 244
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/GlyphCache;->glyphDataMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move/from16 v27, v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Lcom/sun/prism/impl/GlyphCache$GlyphData;

    move-object/from16 v7, v26

    .line 245
    .local v7, "segment":[Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move-object/from16 v26, v7

    if-eqz v26, :cond_0

    .line 246
    move-object/from16 v26, v7

    move/from16 v27, v6

    aget-object v26, v26, v27

    if-eqz v26, :cond_1

    .line 247
    move-object/from16 v26, v7

    move/from16 v27, v6

    aget-object v26, v26, v27

    move-object/from16 v2, v26

    .line 335
    .end local v2    # "this":Lcom/sun/prism/impl/GlyphCache;
    :goto_0
    return-object v2

    .line 250
    .restart local v2    # "this":Lcom/sun/prism/impl/GlyphCache;
    :cond_0
    const/16 v26, 0x20

    move/from16 v0, v26

    new-array v0, v0, [Lcom/sun/prism/impl/GlyphCache$GlyphData;

    move-object/from16 v26, v0

    move-object/from16 v7, v26

    .line 251
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/GlyphCache;->glyphDataMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move/from16 v27, v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v28, v7

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 255
    :cond_1
    const/16 v26, 0x0

    move-object/from16 v8, v26

    .line 256
    .local v8, "data":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/GlyphCache;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v26, v0

    move/from16 v27, v3

    invoke-interface/range {v26 .. v27}, Lcom/sun/javafx/font/FontStrike;->getGlyph(I)Lcom/sun/javafx/font/Glyph;

    move-result-object v26

    move-object/from16 v9, v26

    .line 257
    .local v9, "glyph":Lcom/sun/javafx/font/Glyph;
    move-object/from16 v26, v9

    if-eqz v26, :cond_3

    .line 258
    move-object/from16 v26, v9

    move/from16 v27, v4

    invoke-interface/range {v26 .. v27}, Lcom/sun/javafx/font/Glyph;->getPixelData(I)[B

    move-result-object v26

    move-object/from16 v10, v26

    .line 259
    .local v10, "glyphImage":[B
    move-object/from16 v26, v10

    if-eqz v26, :cond_2

    move-object/from16 v26, v10

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_4

    .line 260
    :cond_2
    new-instance v26, Lcom/sun/prism/impl/GlyphCache$GlyphData;

    move-object/from16 v37, v26

    move-object/from16 v26, v37

    move-object/from16 v27, v37

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v31, v9

    .line 261
    invoke-interface/range {v31 .. v31}, Lcom/sun/javafx/font/Glyph;->getPixelXAdvance()F

    move-result v31

    move-object/from16 v32, v9

    .line 262
    invoke-interface/range {v32 .. v32}, Lcom/sun/javafx/font/Glyph;->getPixelYAdvance()F

    move-result v32

    const/16 v33, 0x0

    invoke-direct/range {v27 .. v33}, Lcom/sun/prism/impl/GlyphCache$GlyphData;-><init>(IIIFFLcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v8, v26

    .line 332
    :goto_1
    move-object/from16 v26, v7

    move/from16 v27, v6

    move-object/from16 v28, v8

    aput-object v28, v26, v27

    .line 335
    .end local v10    # "glyphImage":[B
    :cond_3
    move-object/from16 v26, v8

    move-object/from16 v2, v26

    goto :goto_0

    .line 269
    .restart local v10    # "glyphImage":[B
    :cond_4
    move-object/from16 v26, v10

    move-object/from16 v27, v9

    .line 270
    invoke-interface/range {v27 .. v27}, Lcom/sun/javafx/font/Glyph;->getOriginX()I

    move-result v27

    move-object/from16 v28, v9

    .line 271
    invoke-interface/range {v28 .. v28}, Lcom/sun/javafx/font/Glyph;->getOriginY()I

    move-result v28

    move-object/from16 v29, v9

    .line 272
    invoke-interface/range {v29 .. v29}, Lcom/sun/javafx/font/Glyph;->getWidth()I

    move-result v29

    move-object/from16 v30, v9

    .line 273
    invoke-interface/range {v30 .. v30}, Lcom/sun/javafx/font/Glyph;->getHeight()I

    move-result v30

    .line 269
    invoke-static/range {v26 .. v30}, Lcom/sun/prism/impl/shape/MaskData;->create([BIIII)Lcom/sun/prism/impl/shape/MaskData;

    move-result-object v26

    move-object/from16 v11, v26

    .line 276
    .local v11, "maskData":Lcom/sun/prism/impl/shape/MaskData;
    const/16 v26, 0x1

    move/from16 v12, v26

    .line 277
    .local v12, "border":I
    move-object/from16 v26, v11

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/shape/MaskData;->getWidth()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v28, v12

    mul-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v13, v26

    .line 278
    .local v13, "rectW":I
    move-object/from16 v26, v11

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/shape/MaskData;->getHeight()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v28, v12

    mul-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v14, v26

    .line 279
    .local v14, "rectH":I
    move-object/from16 v26, v11

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/shape/MaskData;->getOriginX()I

    move-result v26

    move/from16 v15, v26

    .line 280
    .local v15, "originX":I
    move-object/from16 v26, v11

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/shape/MaskData;->getOriginY()I

    move-result v26

    move/from16 v16, v26

    .line 281
    .local v16, "originY":I
    new-instance v26, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v37, v26

    move-object/from16 v26, v37

    move-object/from16 v27, v37

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v30, v13

    move/from16 v31, v14

    invoke-direct/range {v27 .. v31}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    move-object/from16 v17, v26

    .line 282
    .local v17, "rect":Lcom/sun/javafx/geom/Rectangle;
    new-instance v26, Lcom/sun/prism/impl/GlyphCache$GlyphData;

    move-object/from16 v37, v26

    move-object/from16 v26, v37

    move-object/from16 v27, v37

    move/from16 v28, v15

    move/from16 v29, v16

    move/from16 v30, v12

    move-object/from16 v31, v9

    .line 283
    invoke-interface/range {v31 .. v31}, Lcom/sun/javafx/font/Glyph;->getPixelXAdvance()F

    move-result v31

    move-object/from16 v32, v9

    .line 284
    invoke-interface/range {v32 .. v32}, Lcom/sun/javafx/font/Glyph;->getPixelYAdvance()F

    move-result v32

    move-object/from16 v33, v17

    invoke-direct/range {v27 .. v33}, Lcom/sun/prism/impl/GlyphCache$GlyphData;-><init>(IIIFFLcom/sun/javafx/geom/Rectangle;)V

    move-object/from16 v8, v26

    .line 287
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/GlyphCache;->packer:Lcom/sun/prism/impl/packrect/RectanglePacker;

    move-object/from16 v26, v0

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Lcom/sun/prism/impl/packrect/RectanglePacker;->add(Lcom/sun/javafx/geom/Rectangle;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 288
    sget-boolean v26, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v26, :cond_5

    .line 289
    const-string v26, "Font Glyph Cache Cleared"

    invoke-static/range {v26 .. v26}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 292
    :cond_5
    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v26}, Lcom/sun/prism/impl/GlyphCache;->clearAll()V

    .line 293
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/GlyphCache;->packer:Lcom/sun/prism/impl/packrect/RectanglePacker;

    move-object/from16 v26, v0

    move-object/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Lcom/sun/prism/impl/packrect/RectanglePacker;->add(Lcom/sun/javafx/geom/Rectangle;)Z

    move-result v26

    .line 300
    :cond_6
    const/16 v26, 0x1

    move/from16 v18, v26

    .line 305
    .local v18, "skipFlush":Z
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/GlyphCache;->getBackingStore()Lcom/sun/prism/Texture;

    move-result-object v26

    move-object/from16 v19, v26

    .line 306
    .local v19, "backingStore":Lcom/sun/prism/Texture;
    move-object/from16 v26, v17

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v26, v0

    move/from16 v20, v26

    .line 307
    .local v20, "emw":I
    move-object/from16 v26, v17

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v26, v0

    move/from16 v21, v26

    .line 308
    .local v21, "emh":I
    move-object/from16 v26, v19

    invoke-interface/range {v26 .. v26}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v26

    move/from16 v22, v26

    .line 309
    .local v22, "bpp":I
    move/from16 v26, v20

    move/from16 v27, v22

    mul-int v26, v26, v27

    move/from16 v23, v26

    .line 310
    .local v23, "stride":I
    move/from16 v26, v23

    move/from16 v27, v21

    mul-int v26, v26, v27

    move/from16 v24, v26

    .line 311
    .local v24, "size":I
    sget-object v26, Lcom/sun/prism/impl/GlyphCache;->emptyMask:Ljava/nio/ByteBuffer;

    if-eqz v26, :cond_7

    move/from16 v26, v24

    sget-object v27, Lcom/sun/prism/impl/GlyphCache;->emptyMask:Ljava/nio/ByteBuffer;

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    .line 312
    :cond_7
    move/from16 v26, v24

    invoke-static/range {v26 .. v26}, Lcom/sun/prism/impl/BufferUtil;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v26

    sput-object v26, Lcom/sun/prism/impl/GlyphCache;->emptyMask:Ljava/nio/ByteBuffer;

    .line 316
    :cond_8
    move-object/from16 v26, v19

    :try_start_0
    sget-object v27, Lcom/sun/prism/impl/GlyphCache;->emptyMask:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v19

    .line 317
    invoke-interface/range {v28 .. v28}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v28

    move-object/from16 v29, v17

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v29, v0

    move-object/from16 v30, v17

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v33, v20

    move/from16 v34, v21

    move/from16 v35, v23

    move/from16 v36, v18

    .line 316
    invoke-interface/range {v26 .. v36}, Lcom/sun/prism/Texture;->update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .line 326
    move-object/from16 v26, v11

    move-object/from16 v27, v19

    move/from16 v28, v12

    move-object/from16 v29, v17

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v29, v12

    move-object/from16 v30, v17

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v30, v18

    invoke-virtual/range {v26 .. v30}, Lcom/sun/prism/impl/shape/MaskData;->uploadToTexture(Lcom/sun/prism/Texture;IIZ)V

    goto/16 :goto_1

    .line 321
    :catch_0
    move-exception v26

    move-object/from16 v25, v26

    .line 322
    .local v25, "e":Ljava/lang/Exception;
    move-object/from16 v26, v25

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    const/16 v26, 0x0

    move-object/from16 v2, v26

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/GlyphCache;->glyphDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 230
    return-void
.end method

.method public getBackingStore()Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/GlyphCache;->packer:Lcom/sun/prism/impl/packrect/RectanglePacker;

    invoke-virtual {v1}, Lcom/sun/prism/impl/packrect/RectanglePacker;->getBackingStore()Lcom/sun/prism/Texture;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/GlyphCache;
    return-object v0
.end method

.method public render(Lcom/sun/prism/impl/BaseContext;Lcom/sun/javafx/scene/text/GlyphList;FFIILcom/sun/prism/paint/Color;Lcom/sun/prism/paint/Color;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 34

    .prologue
    .line 122
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/GlyphCache;
    move-object/from16 v3, p1

    .local v3, "ctx":Lcom/sun/prism/impl/BaseContext;
    move-object/from16 v4, p2

    .local v4, "gl":Lcom/sun/javafx/scene/text/GlyphList;
    move/from16 v5, p3

    .local v5, "x":F
    move/from16 v6, p4

    .local v6, "y":F
    move/from16 v7, p5

    .local v7, "start":I
    move/from16 v8, p6

    .local v8, "end":I
    move-object/from16 v9, p7

    .local v9, "rangeColor":Lcom/sun/prism/paint/Color;
    move-object/from16 v10, p8

    .local v10, "textColor":Lcom/sun/prism/paint/Color;
    move-object/from16 v11, p9

    .local v11, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v12, p10

    .local v12, "clip":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/sun/prism/impl/GlyphCache;->isLCDCache:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 123
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/BaseContext;->getLCDBuffer()Lcom/sun/prism/RTTexture;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/RTTexture;->getPhysicalWidth()I

    move-result v25

    move/from16 v13, v25

    .line 124
    .local v13, "dstw":I
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/BaseContext;->getLCDBuffer()Lcom/sun/prism/RTTexture;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/RTTexture;->getPhysicalHeight()I

    move-result v25

    move/from16 v14, v25

    .line 129
    .local v14, "dsth":I
    :goto_0
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/GlyphCache;->getBackingStore()Lcom/sun/prism/Texture;

    move-result-object v25

    move-object/from16 v15, v25

    .line 130
    .local v15, "tex":Lcom/sun/prism/Texture;
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/impl/BaseContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v25

    move-object/from16 v16, v25

    .line 132
    .local v16, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object/from16 v25, v4

    invoke-interface/range {v25 .. v25}, Lcom/sun/javafx/scene/text/GlyphList;->getGlyphCount()I

    move-result v25

    move/from16 v17, v25

    .line 133
    .local v17, "len":I
    const/16 v25, 0x0

    move-object/from16 v18, v25

    .line 134
    .local v18, "currentColor":Lcom/sun/prism/paint/Color;
    new-instance v25, Lcom/sun/javafx/geom/Point2D;

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    move-object/from16 v19, v25

    .line 136
    .local v19, "pt":Lcom/sun/javafx/geom/Point2D;
    const/16 v25, 0x0

    move/from16 v20, v25

    .local v20, "gi":I
    :goto_1
    move/from16 v25, v20

    move/from16 v26, v17

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 137
    move-object/from16 v25, v4

    move/from16 v26, v20

    invoke-interface/range {v25 .. v26}, Lcom/sun/javafx/scene/text/GlyphList;->getGlyphCode(I)I

    move-result v25

    move/from16 v21, v25

    .line 142
    .local v21, "gc":I
    move/from16 v25, v21

    const v26, 0xffffff

    and-int v25, v25, v26

    const v26, 0xffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 143
    .line 136
    :cond_0
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 126
    .end local v13    # "dstw":I
    .end local v14    # "dsth":I
    .end local v15    # "tex":Lcom/sun/prism/Texture;
    .end local v16    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    .end local v17    # "len":I
    .end local v18    # "currentColor":Lcom/sun/prism/paint/Color;
    .end local v19    # "pt":Lcom/sun/javafx/geom/Point2D;
    .end local v20    # "gi":I
    .end local v21    # "gc":I
    :cond_1
    const/16 v25, 0x1

    move/from16 v13, v25

    .line 127
    .restart local v13    # "dstw":I
    const/16 v25, 0x1

    move/from16 v14, v25

    .restart local v14    # "dsth":I
    goto :goto_0

    .line 145
    .restart local v15    # "tex":Lcom/sun/prism/Texture;
    .restart local v16    # "vb":Lcom/sun/prism/impl/VertexBuffer;
    .restart local v17    # "len":I
    .restart local v18    # "currentColor":Lcom/sun/prism/paint/Color;
    .restart local v19    # "pt":Lcom/sun/javafx/geom/Point2D;
    .restart local v20    # "gi":I
    .restart local v21    # "gc":I
    :cond_2
    move-object/from16 v25, v19

    move/from16 v26, v5

    move-object/from16 v27, v4

    move/from16 v28, v20

    invoke-interface/range {v27 .. v28}, Lcom/sun/javafx/scene/text/GlyphList;->getPosX(I)F

    move-result v27

    add-float v26, v26, v27

    move/from16 v27, v6

    move-object/from16 v28, v4

    move/from16 v29, v20

    invoke-interface/range {v28 .. v29}, Lcom/sun/javafx/scene/text/GlyphList;->getPosY(I)F

    move-result v28

    add-float v27, v27, v28

    invoke-virtual/range {v25 .. v27}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 146
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/GlyphCache;->strike:Lcom/sun/javafx/font/FontStrike;

    move-object/from16 v25, v0

    move-object/from16 v26, v19

    invoke-interface/range {v25 .. v26}, Lcom/sun/javafx/font/FontStrike;->getQuantizedPosition(Lcom/sun/javafx/geom/Point2D;)I

    move-result v25

    move/from16 v22, v25

    .line 147
    .local v22, "subPixel":I
    move-object/from16 v25, v2

    move/from16 v26, v21

    move/from16 v27, v22

    invoke-direct/range {v25 .. v27}, Lcom/sun/prism/impl/GlyphCache;->getCachedGlyph(II)Lcom/sun/prism/impl/GlyphCache$GlyphData;

    move-result-object v25

    move-object/from16 v23, v25

    .line 148
    .local v23, "data":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move-object/from16 v25, v23

    if-eqz v25, :cond_0

    .line 149
    move-object/from16 v25, v12

    if-eqz v25, :cond_5

    .line 151
    move/from16 v25, v5

    move-object/from16 v26, v4

    move/from16 v27, v20

    invoke-interface/range {v26 .. v27}, Lcom/sun/javafx/scene/text/GlyphList;->getPosX(I)F

    move-result v26

    add-float v25, v25, v26

    move-object/from16 v26, v12

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v26

    cmpl-float v25, v25, v26

    if-lez v25, :cond_4

    .line 175
    .end local v21    # "gc":I
    .end local v22    # "subPixel":I
    .end local v23    # "data":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    :cond_3
    return-void

    .line 152
    .restart local v21    # "gc":I
    .restart local v22    # "subPixel":I
    .restart local v23    # "data":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    :cond_4
    move/from16 v25, v5

    move-object/from16 v26, v4

    move/from16 v27, v20

    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    invoke-interface/range {v26 .. v27}, Lcom/sun/javafx/scene/text/GlyphList;->getPosX(I)F

    move-result v26

    add-float v25, v25, v26

    move-object/from16 v26, v12

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v26

    cmpg-float v25, v25, v26

    if-gez v25, :cond_5

    goto :goto_2

    .line 157
    :cond_5
    move-object/from16 v25, v9

    if-eqz v25, :cond_6

    move-object/from16 v25, v10

    if-eqz v25, :cond_6

    .line 158
    move-object/from16 v25, v4

    move/from16 v26, v20

    invoke-interface/range {v25 .. v26}, Lcom/sun/javafx/scene/text/GlyphList;->getCharOffset(I)I

    move-result v25

    move/from16 v24, v25

    .line 159
    .local v24, "offset":I
    move/from16 v25, v7

    move/from16 v26, v24

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_7

    move/from16 v25, v24

    move/from16 v26, v8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 160
    move-object/from16 v25, v9

    move-object/from16 v26, v18

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 161
    move-object/from16 v25, v16

    move-object/from16 v26, v9

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v27}, Lcom/sun/prism/impl/VertexBuffer;->setPerVertexColor(Lcom/sun/prism/paint/Color;F)V

    .line 162
    move-object/from16 v25, v9

    move-object/from16 v18, v25

    .line 171
    .end local v24    # "offset":I
    :cond_6
    :goto_3
    move-object/from16 v25, v11

    move-object/from16 v26, v19

    move-object/from16 v27, v19

    invoke-virtual/range {v25 .. v27}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v25

    .line 172
    move-object/from16 v25, v2

    move-object/from16 v26, v23

    move-object/from16 v27, v16

    move-object/from16 v28, v15

    move-object/from16 v29, v19

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v29, v0

    move-object/from16 v30, v19

    move-object/from16 v0, v30

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v30, v0

    move/from16 v31, v13

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v32, v14

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-direct/range {v25 .. v32}, Lcom/sun/prism/impl/GlyphCache;->addDataToQuad(Lcom/sun/prism/impl/GlyphCache$GlyphData;Lcom/sun/prism/impl/VertexBuffer;Lcom/sun/prism/Texture;FFFF)V

    goto/16 :goto_2

    .line 165
    .restart local v24    # "offset":I
    :cond_7
    move-object/from16 v25, v10

    move-object/from16 v26, v18

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 166
    move-object/from16 v25, v16

    move-object/from16 v26, v10

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v27}, Lcom/sun/prism/impl/VertexBuffer;->setPerVertexColor(Lcom/sun/prism/paint/Color;F)V

    .line 167
    move-object/from16 v25, v10

    move-object/from16 v18, v25

    goto :goto_3
.end method
