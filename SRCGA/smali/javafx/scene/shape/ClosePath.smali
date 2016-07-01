.class public Ljavafx/scene/shape/ClosePath;
.super Ljavafx/scene/shape/PathElement;
.source "ClosePath.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ClosePath;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/PathElement;-><init>()V

    return-void
.end method


# virtual methods
.method addTo(Lcom/sun/javafx/sg/prism/NGPath;)V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ClosePath;
    move-object v1, p1

    .local v1, "pgPath":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGPath;->addClosePath()V

    .line 46
    return-void
.end method

.method public impl_addTo(Lcom/sun/javafx/geom/Path2D;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ClosePath;
    move-object v1, p1

    .local v1, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Path2D;->closePath()V

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ClosePath;
    const-string v1, "ClosePath"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ClosePath;
    return-object v0
.end method
