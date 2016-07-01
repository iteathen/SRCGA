.class final Lcom/sun/javafx/geom/TransformedShape$General;
.super Lcom/sun/javafx/geom/TransformedShape;
.source "TransformedShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/TransformedShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "General"
.end annotation


# instance fields
.field transform:Lcom/sun/javafx/geom/transform/BaseTransform;


# direct methods
.method constructor <init>(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 5

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape$General;
    move-object v1, p1

    .local v1, "delegate":Lcom/sun/javafx/geom/Shape;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/geom/TransformedShape;-><init>(Lcom/sun/javafx/geom/Shape;)V

    .line 187
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/geom/TransformedShape$General;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 188
    return-void
.end method


# virtual methods
.method public adjust(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape$General;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/TransformedShape$General;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v0, v2

    .line 198
    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape$General;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/TransformedShape$General;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/TransformedShape$General;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/TransformedShape$General;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/TransformedShape$General;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/TransformedShape$General;
    return-object v0
.end method
