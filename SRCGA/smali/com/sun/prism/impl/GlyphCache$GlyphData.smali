.class Lcom/sun/prism/impl/GlyphCache$GlyphData;
.super Ljava/lang/Object;
.source "GlyphCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/GlyphCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlyphData"
.end annotation


# instance fields
.field private final blankBoundary:I

.field private final originX:I

.field private final originY:I

.field private final rect:Lcom/sun/javafx/geom/Rectangle;

.field private final xAdvance:F

.field private final yAdvance:F


# direct methods
.method constructor <init>(IIIFFLcom/sun/javafx/geom/Rectangle;)V
    .locals 9

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move v1, p1

    .local v1, "originX":I
    move v2, p2

    .local v2, "originY":I
    move v3, p3

    .local v3, "blankBoundary":I
    move v4, p4

    .local v4, "xAdvance":F
    move v5, p5

    .local v5, "yAdvance":F
    move-object v6, p6

    .local v6, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 360
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/prism/impl/GlyphCache$GlyphData;->originX:I

    .line 361
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/prism/impl/GlyphCache$GlyphData;->originY:I

    .line 362
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/prism/impl/GlyphCache$GlyphData;->blankBoundary:I

    .line 363
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/prism/impl/GlyphCache$GlyphData;->xAdvance:F

    .line 364
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/prism/impl/GlyphCache$GlyphData;->yAdvance:F

    .line 365
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/sun/prism/impl/GlyphCache$GlyphData;->rect:Lcom/sun/javafx/geom/Rectangle;

    .line 366
    return-void
.end method


# virtual methods
.method getBlankBoundary()I
    .locals 2

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/GlyphCache$GlyphData;->blankBoundary:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    return v0
.end method

.method getOriginX()I
    .locals 2

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/GlyphCache$GlyphData;->originX:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    return v0
.end method

.method getOriginY()I
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/GlyphCache$GlyphData;->originY:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    return v0
.end method

.method getRect()Lcom/sun/javafx/geom/Rectangle;
    .locals 2

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/GlyphCache$GlyphData;->rect:Lcom/sun/javafx/geom/Rectangle;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    return-object v0
.end method

.method getXAdvance()F
    .locals 2

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/GlyphCache$GlyphData;->xAdvance:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    return v0
.end method

.method getYAdvance()F
    .locals 2

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/GlyphCache$GlyphData;->yAdvance:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/GlyphCache$GlyphData;
    return v0
.end method
