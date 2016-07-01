.class Lcom/sun/prism/impl/ps/CachingRoundRectRepState;
.super Lcom/sun/prism/impl/ps/CachingShapeRepState;
.source "CachingRoundRectRep.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingRoundRectRepState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/impl/ps/CachingShapeRepState;-><init>()V

    return-void
.end method


# virtual methods
.method drawNoCache(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingRoundRectRepState;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/geom/RoundRectangle2D;

    invoke-static {v3, v4}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->drawRoundRect(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RoundRectangle2D;)V

    .line 53
    return-void
.end method

.method fillNoCache(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingRoundRectRepState;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/geom/RoundRectangle2D;

    invoke-static {v3, v4}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->fillRoundRect(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RoundRectangle2D;)V

    .line 48
    return-void
.end method
