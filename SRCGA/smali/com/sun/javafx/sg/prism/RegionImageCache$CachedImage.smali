.class Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;
.super Ljava/lang/Object;
.source "RegionImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/RegionImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedImage"
.end annotation


# instance fields
.field background:Ljavafx/scene/layout/Background;

.field height:I

.field shape:Lcom/sun/javafx/geom/Shape;

.field width:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/sun/javafx/geom/Rectangle;Ljavafx/scene/layout/Background;Lcom/sun/javafx/geom/Shape;)V
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;
    move-object v1, p1

    .local v1, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, p2

    .local v2, "background":Ljavafx/scene/layout/Background;
    move-object v3, p3

    .local v3, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 156
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->x:I

    iput v5, v4, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->x:I

    .line 157
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->y:I

    iput v5, v4, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->y:I

    .line 158
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    iput v5, v4, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->width:I

    .line 159
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    iput v5, v4, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->height:I

    .line 160
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->background:Ljavafx/scene/layout/Background;

    .line 161
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->shape:Lcom/sun/javafx/geom/Shape;

    .line 162
    return-void
.end method


# virtual methods
.method public equals(IILjavafx/scene/layout/Background;Lcom/sun/javafx/geom/Shape;)Z
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "background":Ljavafx/scene/layout/Background;
    move-object v4, p4

    .local v4, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->width:I

    move v6, v1

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->height:I

    move v6, v2

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->background:Ljavafx/scene/layout/Background;

    if-nez v5, :cond_1

    move-object v5, v3

    if-nez v5, :cond_2

    .line 167
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->shape:Lcom/sun/javafx/geom/Shape;

    if-nez v5, :cond_3

    move-object v5, v4

    if-nez v5, :cond_2

    .line 168
    :goto_0
    const/4 v5, 0x1

    :goto_1
    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;
    return v0

    .line 165
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->background:Ljavafx/scene/layout/Background;

    move-object v6, v3

    .line 167
    invoke-virtual {v5, v6}, Ljavafx/scene/layout/Background;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 168
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 167
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/RegionImageCache$CachedImage;->shape:Lcom/sun/javafx/geom/Shape;

    move-object v6, v4

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0
.end method
