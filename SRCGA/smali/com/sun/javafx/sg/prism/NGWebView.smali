.class public final Lcom/sun/javafx/sg/prism/NGWebView;
.super Lcom/sun/javafx/sg/prism/NGGroup;
.source "NGWebView.java"


# static fields
.field private static final VERY_LIGHT_RED:Lcom/sun/prism/paint/Color;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final dest:[F

.field private final destBounds:Lcom/sun/javafx/geom/RectBounds;

.field private volatile height:F

.field private volatile page:Lcom/sun/webkit/WebPage;

.field private final src:[F

.field private volatile width:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 37
    const-class v0, Lcom/sun/javafx/sg/prism/NGWebView;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/sg/prism/NGWebView;->log:Ljava/util/logging/Logger;

    .line 41
    new-instance v0, Lcom/sun/prism/paint/Color;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGWebView;->VERY_LIGHT_RED:Lcom/sun/prism/paint/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGWebView;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGGroup;-><init>()V

    .line 62
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGWebView;->src:[F

    .line 63
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGWebView;->dest:[F

    .line 64
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGWebView;->destBounds:Lcom/sun/javafx/geom/RectBounds;

    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 63
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected doRender(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGWebView;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGWebView;->renderContent(Lcom/sun/prism/Graphics;)V

    .line 69
    return-void
.end method

.method public hasOverlappingContents()Z
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGWebView;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGWebView;
    return v0
.end method

.method protected hasVisuals()Z
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGWebView;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGWebView;
    return v0
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGWebView;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGWebView;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGWebView;->destBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 86
    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    .line 87
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGWebView;->page:Lcom/sun/webkit/WebPage;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGWebView;->destBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 88
    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGWebView;->destBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 89
    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGWebView;->destBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 90
    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGWebView;->destBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 91
    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v6

    .line 87
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/webkit/WebPage;->moveAndResize(FFFF)V

    .line 92
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGWebView;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGWebView;->visualsChanged()V

    .line 61
    return-void
.end method

.method public resize(FF)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGWebView;
    move v1, p1

    .local v1, "w":F
    move v2, p2

    .local v2, "h":F
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/NGWebView;->width:F

    move v4, v1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/NGWebView;->height:F

    move v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 49
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGWebView;->width:F

    .line 50
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGWebView;->height:F

    .line 51
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGWebView;->geometryChanged()V

    .line 53
    :cond_1
    return-void
.end method

.method public setPage(Lcom/sun/webkit/WebPage;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGWebView;
    move-object v1, p1

    .local v1, "page":Lcom/sun/webkit/WebPage;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGWebView;->page:Lcom/sun/webkit/WebPage;

    .line 45
    return-void
.end method

.method public setTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Z)V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGWebView;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move v2, p2

    .local v2, "byTransformChangeOnly":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGGroup;->setTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Z)V

    .line 74
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
