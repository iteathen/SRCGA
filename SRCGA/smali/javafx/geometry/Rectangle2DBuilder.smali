.class public Ljavafx/geometry/Rectangle2DBuilder;
.super Ljava/lang/Object;
.source "Rectangle2DBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/geometry/Rectangle2DBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/geometry/Rectangle2D;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private height:D

.field private minX:D

.field private minY:D

.field private width:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/geometry/Rectangle2DBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/geometry/Rectangle2DBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/geometry/Rectangle2DBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/geometry/Rectangle2DBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/geometry/Rectangle2DBuilder;->build()Ljavafx/geometry/Rectangle2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/geometry/Rectangle2D;
    .locals 13

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    new-instance v2, Ljavafx/geometry/Rectangle2D;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2DBuilder;->minX:D

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/geometry/Rectangle2DBuilder;->minY:D

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/geometry/Rectangle2DBuilder;->width:D

    move-object v10, v0

    iget-wide v10, v10, Ljavafx/geometry/Rectangle2DBuilder;->height:D

    invoke-direct/range {v3 .. v11}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    move-object v1, v2

    .line 91
    .local v1, "x":Ljavafx/geometry/Rectangle2D;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    return-object v0
.end method

.method public height(D)Ljavafx/geometry/Rectangle2DBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Rectangle2DBuilder;->height:D

    .line 53
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    return-object v0
.end method

.method public minX(D)Ljavafx/geometry/Rectangle2DBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Rectangle2DBuilder;->minX:D

    .line 63
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    return-object v0
.end method

.method public minY(D)Ljavafx/geometry/Rectangle2DBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Rectangle2DBuilder;->minY:D

    .line 73
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    return-object v0
.end method

.method public width(D)Ljavafx/geometry/Rectangle2DBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Rectangle2DBuilder;->width:D

    .line 83
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/Rectangle2DBuilder;, "Ljavafx/geometry/Rectangle2DBuilder<TB;>;"
    return-object v0
.end method
