.class public Lcom/sun/javafx/sg/prism/NGText;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGText.java"


# static fields
.field private static DECORATION:I

.field private static EPSILON:D

.field private static FILL:I

.field static final IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private static SHAPE_FILL:I

.field private static TEXT:I


# instance fields
.field private drawingEffect:Z

.field private font:Lcom/sun/javafx/font/PGFont;

.field private fontSmoothingType:I

.field private fontStrike:Lcom/sun/javafx/font/FontStrike;

.field private identityStrike:Lcom/sun/javafx/font/FontStrike;

.field private layoutX:F

.field private layoutY:F

.field private runs:[Lcom/sun/javafx/scene/text/GlyphList;

.field private selectionEnd:I

.field private selectionPaint:Ljava/lang/Object;

.field private selectionStart:I

.field private strikeMat:[D

.field private strikethrough:Z

.field private underline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    sput-object v0, Lcom/sun/javafx/sg/prism/NGText;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 118
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    sput-wide v0, Lcom/sun/javafx/sg/prism/NGText;->EPSILON:D

    .line 227
    const/4 v0, 0x2

    sput v0, Lcom/sun/javafx/sg/prism/NGText;->FILL:I

    .line 228
    const/4 v0, 0x4

    sput v0, Lcom/sun/javafx/sg/prism/NGText;->SHAPE_FILL:I

    .line 229
    const/16 v0, 0x8

    sput v0, Lcom/sun/javafx/sg/prism/NGText;->TEXT:I

    .line 230
    const/16 v0, 0x10

    sput v0, Lcom/sun/javafx/sg/prism/NGText;->DECORATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    .line 119
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGText;->fontStrike:Lcom/sun/javafx/font/FontStrike;

    .line 120
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGText;->identityStrike:Lcom/sun/javafx/font/FontStrike;

    .line 121
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [D

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    .line 194
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGText;->drawingEffect:Z

    .line 49
    return-void
.end method

.method private getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;
    .locals 8

    .prologue
    .line 123
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGText;
    move-object v2, p1

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGText;->fontSmoothingType:I

    move v3, v4

    .line 124
    .local v3, "smoothingType":I
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGText;->getMode()Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-result-object v4

    sget-object v5, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE_FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v4, v5, :cond_0

    .line 127
    const/4 v4, 0x0

    move v3, v4

    .line 129
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->identityStrike:Lcom/sun/javafx/font/FontStrike;

    if-eqz v4, :cond_1

    move v4, v3

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGText;->identityStrike:Lcom/sun/javafx/font/FontStrike;

    .line 131
    invoke-interface {v5}, Lcom/sun/javafx/font/FontStrike;->getAAMode()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 132
    :cond_1
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGText;->font:Lcom/sun/javafx/font/PGFont;

    sget-object v6, Lcom/sun/javafx/sg/prism/NGText;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    move v7, v3

    invoke-interface {v5, v6, v7}, Lcom/sun/javafx/font/PGFont;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGText;->identityStrike:Lcom/sun/javafx/font/FontStrike;

    .line 134
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->identityStrike:Lcom/sun/javafx/font/FontStrike;

    move-object v1, v4

    .line 153
    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGText;
    :goto_0
    return-object v1

    .line 137
    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/NGText;
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->fontStrike:Lcom/sun/javafx/font/FontStrike;

    if-eqz v4, :cond_6

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->fontStrike:Lcom/sun/javafx/font/FontStrike;

    .line 138
    invoke-interface {v4}, Lcom/sun/javafx/font/FontStrike;->getSize()F

    move-result v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGText;->font:Lcom/sun/javafx/font/PGFont;

    invoke-interface {v5}, Lcom/sun/javafx/font/PGFont;->getSize()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    move-object v4, v2

    .line 139
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_4

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_6

    :cond_4
    move-object v4, v2

    .line 140
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_5

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_6

    :cond_5
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object v6, v2

    .line 141
    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sget-wide v6, Lcom/sun/javafx/sg/prism/NGText;->EPSILON:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_6

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object v6, v2

    .line 142
    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sget-wide v6, Lcom/sun/javafx/sg/prism/NGText;->EPSILON:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_6

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    move-object v6, v2

    .line 143
    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sget-wide v6, Lcom/sun/javafx/sg/prism/NGText;->EPSILON:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_6

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    move-object v6, v2

    .line 144
    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sget-wide v6, Lcom/sun/javafx/sg/prism/NGText;->EPSILON:D

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_6

    move v4, v3

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGText;->fontStrike:Lcom/sun/javafx/font/FontStrike;

    .line 145
    invoke-interface {v5}, Lcom/sun/javafx/font/FontStrike;->getAAMode()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 147
    :cond_6
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGText;->font:Lcom/sun/javafx/font/PGFont;

    move-object v6, v2

    move v7, v3

    invoke-interface {v5, v6, v7}, Lcom/sun/javafx/font/PGFont;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGText;->fontStrike:Lcom/sun/javafx/font/FontStrike;

    .line 148
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 149
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    const/4 v5, 0x1

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 150
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    const/4 v5, 0x2

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 151
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->strikeMat:[D

    const/4 v5, 0x3

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 153
    :cond_7
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGText;->fontStrike:Lcom/sun/javafx/font/FontStrike;

    move-object v1, v4

    goto/16 :goto_0
.end method

.method private renderText(Lcom/sun/prism/Graphics;Lcom/sun/javafx/font/FontStrike;Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/prism/paint/Color;I)V
    .locals 27

    .prologue
    .line 295
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/NGText;
    move-object/from16 v3, p1

    .local v3, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v4, p2

    .local v4, "strike":Lcom/sun/javafx/font/FontStrike;
    move-object/from16 v5, p3

    .local v5, "clipBds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v6, p4

    .local v6, "selectionColor":Lcom/sun/prism/paint/Color;
    move/from16 v7, p5

    .local v7, "op":I
    const/16 v18, 0x0

    move/from16 v8, v18

    .local v8, "i":I
    :goto_0
    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGText;->runs:[Lcom/sun/javafx/scene/text/GlyphList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 296
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGText;->runs:[Lcom/sun/javafx/scene/text/GlyphList;

    move-object/from16 v18, v0

    move/from16 v19, v8

    aget-object v18, v18, v19

    check-cast v18, Lcom/sun/javafx/text/TextRun;

    move-object/from16 v9, v18

    .line 297
    .local v9, "run":Lcom/sun/javafx/text/TextRun;
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->getLineBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v18

    move-object/from16 v10, v18

    .line 298
    .local v10, "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v18

    move-object/from16 v11, v18

    .line 299
    .local v11, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGText;->layoutX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v12, v18

    .line 300
    .local v12, "x":F
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGText;->layoutY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v13, v18

    .line 301
    .local v13, "y":F
    move-object/from16 v18, v5

    if-eqz v18, :cond_5

    .line 302
    move/from16 v18, v13

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v19

    cmpl-float v18, v18, v19

    if-lez v18, :cond_1

    .line 356
    .end local v9    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v10    # "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v11    # "pt":Lcom/sun/javafx/geom/Point2D;
    .end local v12    # "x":F
    .end local v13    # "y":F
    :cond_0
    return-void

    .line 303
    .restart local v9    # "run":Lcom/sun/javafx/text/TextRun;
    .restart local v10    # "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    .restart local v11    # "pt":Lcom/sun/javafx/geom/Point2D;
    .restart local v12    # "x":F
    .restart local v13    # "y":F
    :cond_1
    move/from16 v18, v13

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v19

    cmpg-float v18, v18, v19

    if-gez v18, :cond_3

    .line 295
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 304
    :cond_3
    move/from16 v18, v12

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v19

    cmpl-float v18, v18, v19

    if-lez v18, :cond_4

    goto :goto_1

    .line 305
    :cond_4
    move/from16 v18, v12

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v19

    cmpg-float v18, v18, v19

    if-gez v18, :cond_5

    goto :goto_1

    .line 307
    :cond_5
    move/from16 v18, v13

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v19

    sub-float v18, v18, v19

    move/from16 v13, v18

    .line 309
    move/from16 v18, v7

    sget v19, Lcom/sun/javafx/sg/prism/NGText;->TEXT:I

    and-int v18, v18, v19

    if-eqz v18, :cond_6

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->getGlyphCount()I

    move-result v18

    if-lez v18, :cond_6

    .line 310
    move/from16 v18, v7

    sget v19, Lcom/sun/javafx/sg/prism/NGText;->FILL:I

    and-int v18, v18, v19

    if-eqz v18, :cond_a

    .line 311
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/text/TextRun;->getStart()I

    move-result v18

    move/from16 v14, v18

    .line 312
    .local v14, "start":I
    move-object/from16 v18, v3

    move-object/from16 v19, v9

    move-object/from16 v20, v4

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v23, v6

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGText;->selectionStart:I

    move/from16 v24, v0

    move/from16 v25, v14

    sub-int v24, v24, v25

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGText;->selectionEnd:I

    move/from16 v25, v0

    move/from16 v26, v14

    sub-int v25, v25, v26

    invoke-interface/range {v18 .. v25}, Lcom/sun/prism/Graphics;->drawString(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/font/FontStrike;FFLcom/sun/prism/paint/Color;II)V

    .line 316
    .line 326
    .end local v14    # "start":I
    :cond_6
    :goto_2
    move/from16 v18, v7

    sget v19, Lcom/sun/javafx/sg/prism/NGText;->DECORATION:I

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 327
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/FontStrike;->getMetrics()Lcom/sun/javafx/font/Metrics;

    move-result-object v18

    move-object/from16 v14, v18

    .line 328
    .local v14, "metrics":Lcom/sun/javafx/font/Metrics;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGText;->underline:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 329
    move/from16 v18, v13

    move-object/from16 v19, v14

    invoke-interface/range {v19 .. v19}, Lcom/sun/javafx/font/Metrics;->getUnderLineOffset()F

    move-result v19

    add-float v18, v18, v19

    move/from16 v15, v18

    .line 330
    .local v15, "offset":F
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/Metrics;->getUnderLineThickness()F

    move-result v18

    move/from16 v16, v18

    .line 331
    .local v16, "thickness":F
    move/from16 v18, v7

    sget v19, Lcom/sun/javafx/sg/prism/NGText;->SHAPE_FILL:I

    and-int v18, v18, v19

    if-eqz v18, :cond_c

    .line 332
    move/from16 v18, v16

    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_7

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 333
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 334
    .local v17, "myt":F
    move/from16 v18, v15

    move/from16 v19, v17

    add-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v17

    sub-float v18, v18, v19

    move/from16 v15, v18

    .line 336
    .end local v17    # "myt":F
    :cond_7
    move-object/from16 v18, v3

    move/from16 v19, v12

    move/from16 v20, v15

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v21

    move/from16 v22, v16

    invoke-interface/range {v18 .. v22}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    .line 341
    .end local v15    # "offset":F
    .end local v16    # "thickness":F
    :cond_8
    :goto_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGText;->strikethrough:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 342
    move/from16 v18, v13

    move-object/from16 v19, v14

    invoke-interface/range {v19 .. v19}, Lcom/sun/javafx/font/Metrics;->getStrikethroughOffset()F

    move-result v19

    add-float v18, v18, v19

    move/from16 v15, v18

    .line 343
    .restart local v15    # "offset":F
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/font/Metrics;->getStrikethroughThickness()F

    move-result v18

    move/from16 v16, v18

    .line 344
    .restart local v16    # "thickness":F
    move/from16 v18, v7

    sget v19, Lcom/sun/javafx/sg/prism/NGText;->SHAPE_FILL:I

    and-int v18, v18, v19

    if-eqz v18, :cond_d

    .line 345
    move/from16 v18, v16

    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_9

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 346
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 347
    .restart local v17    # "myt":F
    move/from16 v18, v15

    move/from16 v19, v17

    add-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v17

    sub-float v18, v18, v19

    move/from16 v15, v18

    .line 349
    .end local v17    # "myt":F
    :cond_9
    move-object/from16 v18, v3

    move/from16 v19, v12

    move/from16 v20, v15

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v21

    move/from16 v22, v16

    invoke-interface/range {v18 .. v22}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    goto/16 :goto_1

    .line 317
    .end local v14    # "metrics":Lcom/sun/javafx/font/Metrics;
    .end local v15    # "offset":F
    .end local v16    # "thickness":F
    :cond_a
    move/from16 v18, v12

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v13

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/geom/transform/BaseTransform;->getTranslateInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v18

    move-object/from16 v14, v18

    .line 318
    .local v14, "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v18, v7

    sget v19, Lcom/sun/javafx/sg/prism/NGText;->SHAPE_FILL:I

    and-int v18, v18, v19

    if-eqz v18, :cond_b

    .line 319
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v9

    move-object/from16 v21, v14

    invoke-interface/range {v19 .. v21}, Lcom/sun/javafx/font/FontStrike;->getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Shape;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/sun/prism/Graphics;->fill(Lcom/sun/javafx/geom/Shape;)V

    goto/16 :goto_2

    .line 321
    :cond_b
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v9

    move-object/from16 v21, v14

    invoke-interface/range {v19 .. v21}, Lcom/sun/javafx/font/FontStrike;->getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Shape;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    goto/16 :goto_2

    .line 338
    .local v14, "metrics":Lcom/sun/javafx/font/Metrics;
    .restart local v15    # "offset":F
    .restart local v16    # "thickness":F
    :cond_c
    move-object/from16 v18, v3

    move/from16 v19, v12

    move/from16 v20, v15

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v21

    move/from16 v22, v16

    invoke-interface/range {v18 .. v22}, Lcom/sun/prism/Graphics;->drawRect(FFFF)V

    goto/16 :goto_3

    .line 351
    :cond_d
    move-object/from16 v18, v3

    move/from16 v19, v12

    move/from16 v20, v15

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/text/TextRun;->getWidth()F

    move-result v21

    move/from16 v22, v16

    invoke-interface/range {v18 .. v22}, Lcom/sun/prism/Graphics;->drawRect(FFFF)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected computePadding(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move-object v1, p1

    .local v1, "region":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/NGText;->fontSmoothingType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    :goto_0
    move v2, v3

    .line 110
    .local v2, "pad":F
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v4

    move v5, v2

    sub-float/2addr v4, v5

    move-object v5, v1

    .line 111
    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v5

    move v6, v2

    sub-float/2addr v5, v6

    move-object v6, v1

    .line 112
    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v6

    move-object v7, v1

    .line 113
    invoke-virtual {v7}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v7

    move v8, v2

    add-float/2addr v7, v8

    move-object v8, v1

    .line 114
    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v8

    move v9, v2

    add-float/2addr v8, v9

    move-object v9, v1

    .line 115
    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v9

    .line 110
    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGText;
    return-object v0

    .line 109
    .end local v2    # "pad":F
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGText;
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getShape()Lcom/sun/javafx/geom/Shape;
    .locals 17

    .prologue
    .line 157
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGText;
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGText;->runs:[Lcom/sun/javafx/scene/text/GlyphList;

    if-nez v12, :cond_0

    .line 158
    new-instance v12, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v1, v12

    .line 191
    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGText;
    .local v2, "strike":Lcom/sun/javafx/font/FontStrike;
    .local v3, "outline":Lcom/sun/javafx/geom/Path2D;
    .local v4, "i":I
    :goto_0
    return-object v1

    .line 160
    .end local v2    # "strike":Lcom/sun/javafx/font/FontStrike;
    .end local v3    # "outline":Lcom/sun/javafx/geom/Path2D;
    .end local v4    # "i":I
    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/NGText;
    :cond_0
    move-object v12, v1

    sget-object v13, Lcom/sun/javafx/sg/prism/NGText;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-direct {v12, v13}, Lcom/sun/javafx/sg/prism/NGText;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;

    move-result-object v12

    move-object v2, v12

    .line 161
    .restart local v2    # "strike":Lcom/sun/javafx/font/FontStrike;
    new-instance v12, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v3, v12

    .line 162
    .restart local v3    # "outline":Lcom/sun/javafx/geom/Path2D;
    const/4 v12, 0x0

    move v4, v12

    .restart local v4    # "i":I
    :goto_1
    move v12, v4

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGText;->runs:[Lcom/sun/javafx/scene/text/GlyphList;

    array-length v13, v13

    if-ge v12, v13, :cond_4

    .line 163
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGText;->runs:[Lcom/sun/javafx/scene/text/GlyphList;

    move v13, v4

    aget-object v12, v12, v13

    move-object v5, v12

    .line 164
    .local v5, "run":Lcom/sun/javafx/scene/text/GlyphList;
    move-object v12, v5

    invoke-interface {v12}, Lcom/sun/javafx/scene/text/GlyphList;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v12

    move-object v6, v12

    .line 165
    .local v6, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v12, v6

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/sg/prism/NGText;->layoutX:F

    sub-float/2addr v12, v13

    move v7, v12

    .line 166
    .local v7, "x":F
    move-object v12, v6

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/sg/prism/NGText;->layoutY:F

    sub-float/2addr v12, v13

    move v8, v12

    .line 167
    .local v8, "y":F
    move v12, v7

    float-to-double v12, v12

    move v14, v8

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/BaseTransform;->getTranslateInstance(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v12

    move-object v9, v12

    .line 168
    .local v9, "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v12, v3

    move-object v13, v2

    move-object v14, v5

    move-object v15, v9

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/font/FontStrike;->getOutline(Lcom/sun/javafx/scene/text/GlyphList;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Shape;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/Shape;Z)V

    .line 169
    const/4 v12, 0x0

    move-object v10, v12

    .line 170
    .local v10, "metrics":Lcom/sun/javafx/font/Metrics;
    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/sg/prism/NGText;->underline:Z

    if-eqz v12, :cond_1

    .line 171
    move-object v12, v2

    invoke-interface {v12}, Lcom/sun/javafx/font/FontStrike;->getMetrics()Lcom/sun/javafx/font/Metrics;

    move-result-object v12

    move-object v10, v12

    .line 172
    new-instance v12, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>()V

    move-object v11, v12

    .line 173
    .local v11, "rect":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v12, v11

    move v13, v7

    iput v13, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    .line 174
    move-object v12, v11

    move v13, v8

    move-object v14, v10

    invoke-interface {v14}, Lcom/sun/javafx/font/Metrics;->getUnderLineOffset()F

    move-result v14

    add-float/2addr v13, v14

    iput v13, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    .line 175
    move-object v12, v11

    move-object v13, v5

    invoke-interface {v13}, Lcom/sun/javafx/scene/text/GlyphList;->getWidth()F

    move-result v13

    iput v13, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    .line 176
    move-object v12, v11

    move-object v13, v10

    invoke-interface {v13}, Lcom/sun/javafx/font/Metrics;->getUnderLineThickness()F

    move-result v13

    iput v13, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    .line 177
    move-object v12, v3

    move-object v13, v11

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/Shape;Z)V

    .line 179
    .end local v11    # "rect":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_1
    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/sg/prism/NGText;->strikethrough:Z

    if-eqz v12, :cond_3

    .line 180
    move-object v12, v10

    if-nez v12, :cond_2

    .line 181
    move-object v12, v2

    invoke-interface {v12}, Lcom/sun/javafx/font/FontStrike;->getMetrics()Lcom/sun/javafx/font/Metrics;

    move-result-object v12

    move-object v10, v12

    .line 183
    :cond_2
    new-instance v12, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>()V

    move-object v11, v12

    .line 184
    .restart local v11    # "rect":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v12, v11

    move v13, v7

    iput v13, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    .line 185
    move-object v12, v11

    move v13, v8

    move-object v14, v10

    invoke-interface {v14}, Lcom/sun/javafx/font/Metrics;->getStrikethroughOffset()F

    move-result v14

    add-float/2addr v13, v14

    iput v13, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    .line 186
    move-object v12, v11

    move-object v13, v5

    invoke-interface {v13}, Lcom/sun/javafx/scene/text/GlyphList;->getWidth()F

    move-result v13

    iput v13, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    .line 187
    move-object v12, v11

    move-object v13, v10

    invoke-interface {v13}, Lcom/sun/javafx/font/Metrics;->getStrikethroughThickness()F

    move-result v13

    iput v13, v12, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    .line 188
    move-object v12, v3

    move-object v13, v11

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/Shape;Z)V

    .line 162
    .end local v11    # "rect":Lcom/sun/javafx/geom/RoundRectangle2D;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 191
    .end local v5    # "run":Lcom/sun/javafx/scene/text/GlyphList;
    .end local v6    # "pt":Lcom/sun/javafx/geom/Point2D;
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "t":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v10    # "metrics":Lcom/sun/javafx/font/Metrics;
    :cond_4
    move-object v12, v3

    move-object v1, v12

    goto/16 :goto_0
.end method

.method protected renderContent2D(Lcom/sun/prism/Graphics;Z)V
    .locals 15

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move/from16 v2, p2

    .local v2, "printing":Z
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v9, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v8, v9, :cond_0

    .line 291
    :goto_0
    return-void

    .line 233
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->runs:[Lcom/sun/javafx/scene/text/GlyphList;

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->runs:[Lcom/sun/javafx/scene/text/GlyphList;

    array-length v8, v8

    if-nez v8, :cond_2

    :cond_1
    goto :goto_0

    .line 235
    :cond_2
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v8

    move-object v3, v8

    .line 236
    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/sg/prism/NGText;->getStrike(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;

    move-result-object v8

    move-object v4, v8

    .line 238
    .local v4, "strike":Lcom/sun/javafx/font/FontStrike;
    move-object v8, v4

    invoke-interface {v8}, Lcom/sun/javafx/font/FontStrike;->getAAMode()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->fillPaint:Lcom/sun/prism/paint/Paint;

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->fillPaint:Lcom/sun/prism/paint/Paint;

    .line 239
    invoke-virtual {v8}, Lcom/sun/prism/paint/Paint;->isProportional()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->drawPaint:Lcom/sun/prism/paint/Paint;

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->drawPaint:Lcom/sun/prism/paint/Paint;

    .line 240
    invoke-virtual {v8}, Lcom/sun/prism/paint/Paint;->isProportional()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 250
    :cond_4
    move-object v8, v0

    new-instance v9, Lcom/sun/javafx/geom/RectBounds;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    sget-object v10, Lcom/sun/javafx/sg/prism/NGText;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGText;->getContentBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v5, v8

    .line 251
    .local v5, "bds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v8, v1

    move-object v9, v5

    check-cast v9, Lcom/sun/javafx/geom/RectBounds;

    invoke-interface {v8, v9}, Lcom/sun/prism/Graphics;->setNodeBounds(Lcom/sun/javafx/geom/RectBounds;)V

    .line 254
    .end local v5    # "bds":Lcom/sun/javafx/geom/BaseBounds;
    :cond_5
    const/4 v8, 0x0

    move-object v5, v8

    .line 255
    .local v5, "selectionColor":Lcom/sun/prism/paint/Color;
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/sg/prism/NGText;->selectionStart:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/NGText;->selectionEnd:I

    if-eq v8, v9, :cond_6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->selectionPaint:Ljava/lang/Object;

    instance-of v8, v8, Lcom/sun/prism/paint/Color;

    if-eqz v8, :cond_6

    .line 256
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->selectionPaint:Ljava/lang/Object;

    check-cast v8, Lcom/sun/prism/paint/Color;

    move-object v5, v8

    .line 259
    :cond_6
    const/4 v8, 0x0

    move-object v6, v8

    .line 260
    .local v6, "clipBds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/sg/prism/NGText;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 262
    move-object v8, v0

    new-instance v9, Lcom/sun/javafx/geom/RectBounds;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    sget-object v10, Lcom/sun/javafx/sg/prism/NGText;->IDENT:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGText;->getClippedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v6, v8

    .line 266
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v9, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v8, v9, :cond_a

    .line 267
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGText;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-interface {v8, v9}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 268
    sget v8, Lcom/sun/javafx/sg/prism/NGText;->TEXT:I

    move v7, v8

    .line 269
    .local v7, "op":I
    move v8, v7

    move-object v9, v4

    invoke-interface {v9}, Lcom/sun/javafx/font/FontStrike;->drawAsShapes()Z

    move-result v9

    if-nez v9, :cond_8

    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/sg/prism/NGText;->drawingEffect:Z

    if-eqz v9, :cond_e

    :cond_8
    sget v9, Lcom/sun/javafx/sg/prism/NGText;->SHAPE_FILL:I

    :goto_1
    or-int/2addr v8, v9

    move v7, v8

    .line 270
    move-object v8, v0

    move-object v9, v1

    move-object v10, v4

    move-object v11, v6

    move-object v12, v5

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/sun/javafx/sg/prism/NGText;->renderText(Lcom/sun/prism/Graphics;Lcom/sun/javafx/font/FontStrike;Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/prism/paint/Color;I)V

    .line 274
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/sg/prism/NGText;->underline:Z

    if-nez v8, :cond_9

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/sg/prism/NGText;->strikethrough:Z

    if-eqz v8, :cond_a

    .line 275
    :cond_9
    sget v8, Lcom/sun/javafx/sg/prism/NGText;->DECORATION:I

    sget v9, Lcom/sun/javafx/sg/prism/NGText;->SHAPE_FILL:I

    or-int/2addr v8, v9

    move v7, v8

    .line 276
    move-object v8, v0

    move-object v9, v1

    move-object v10, v4

    move-object v11, v6

    move-object v12, v5

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/sun/javafx/sg/prism/NGText;->renderText(Lcom/sun/prism/Graphics;Lcom/sun/javafx/font/FontStrike;Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/prism/paint/Color;I)V

    .line 281
    .end local v7    # "op":I
    :cond_a
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGText;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v9, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v8, v9, :cond_d

    .line 282
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGText;->drawPaint:Lcom/sun/prism/paint/Paint;

    invoke-interface {v8, v9}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 283
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGText;->drawStroke:Lcom/sun/prism/BasicStroke;

    invoke-interface {v8, v9}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 284
    sget v8, Lcom/sun/javafx/sg/prism/NGText;->TEXT:I

    move v7, v8

    .line 285
    .restart local v7    # "op":I
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/sg/prism/NGText;->underline:Z

    if-nez v8, :cond_b

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/sg/prism/NGText;->strikethrough:Z

    if-eqz v8, :cond_c

    .line 286
    :cond_b
    move v8, v7

    sget v9, Lcom/sun/javafx/sg/prism/NGText;->DECORATION:I

    or-int/2addr v8, v9

    move v7, v8

    .line 288
    :cond_c
    move-object v8, v0

    move-object v9, v1

    move-object v10, v4

    move-object v11, v6

    move-object v12, v5

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/sun/javafx/sg/prism/NGText;->renderText(Lcom/sun/prism/Graphics;Lcom/sun/javafx/font/FontStrike;Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/prism/paint/Color;I)V

    .line 290
    .end local v7    # "op":I
    :cond_d
    move-object v8, v1

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/sun/prism/Graphics;->setNodeBounds(Lcom/sun/javafx/geom/RectBounds;)V

    .line 291
    goto/16 :goto_0

    .line 269
    .restart local v7    # "op":I
    :cond_e
    sget v9, Lcom/sun/javafx/sg/prism/NGText;->FILL:I

    goto :goto_1
.end method

.method protected renderEffect(Lcom/sun/prism/Graphics;)V
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGText;->drawingEffect:Z

    .line 221
    :cond_0
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-super {v3, v4}, Lcom/sun/javafx/sg/prism/NGShape;->renderEffect(Lcom/sun/prism/Graphics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGText;->drawingEffect:Z

    .line 224
    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGText;->drawingEffect:Z

    move-object v3, v2

    throw v3
.end method

.method public setFont(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move-object v1, p1

    .local v1, "font":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGText;->font:Lcom/sun/javafx/font/PGFont;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/font/PGFont;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGText;->font:Lcom/sun/javafx/font/PGFont;

    .line 70
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGText;->fontStrike:Lcom/sun/javafx/font/FontStrike;

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGText;->identityStrike:Lcom/sun/javafx/font/FontStrike;

    .line 72
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGText;->geometryChanged()V

    .line 73
    goto :goto_0
.end method

.method public setFontSmoothingType(I)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move v1, p1

    .local v1, "fontSmoothingType":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/sg/prism/NGText;->fontSmoothingType:I

    .line 78
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGText;->geometryChanged()V

    .line 79
    return-void
.end method

.method public setGlyphs([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move-object v1, p1

    .local v1, "glyphs":[Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Lcom/sun/javafx/scene/text/GlyphList;

    check-cast v3, [Lcom/sun/javafx/scene/text/GlyphList;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGText;->runs:[Lcom/sun/javafx/scene/text/GlyphList;

    .line 54
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGText;->geometryChanged()V

    .line 55
    return-void
.end method

.method public setLayoutLocation(FF)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGText;->layoutX:F

    .line 60
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGText;->layoutY:F

    .line 61
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGText;->geometryChanged()V

    .line 62
    return-void
.end method

.method public setSelection(IILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, p3

    .local v3, "color":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGText;->selectionPaint:Ljava/lang/Object;

    .line 98
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/javafx/sg/prism/NGText;->selectionStart:I

    .line 99
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/javafx/sg/prism/NGText;->selectionEnd:I

    .line 100
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGText;->geometryChanged()V

    .line 101
    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move v1, p1

    .local v1, "strikethrough":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGText;->strikethrough:Z

    .line 90
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGText;->geometryChanged()V

    .line 91
    return-void
.end method

.method public setUnderline(Z)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGText;
    move v1, p1

    .local v1, "underline":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGText;->underline:Z

    .line 84
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGText;->geometryChanged()V

    .line 85
    return-void
.end method
