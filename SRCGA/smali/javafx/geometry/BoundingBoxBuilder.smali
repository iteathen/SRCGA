.class public Ljavafx/geometry/BoundingBoxBuilder;
.super Ljava/lang/Object;
.source "BoundingBoxBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/geometry/BoundingBoxBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/geometry/BoundingBox;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private depth:D

.field private height:D

.field private minX:D

.field private minY:D

.field private minZ:D

.field private width:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/geometry/BoundingBoxBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/geometry/BoundingBoxBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/geometry/BoundingBoxBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/geometry/BoundingBoxBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/geometry/BoundingBoxBuilder;->build()Ljavafx/geometry/BoundingBox;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/geometry/BoundingBox;
    .locals 17

    .prologue
    .line 110
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    new-instance v2, Ljavafx/geometry/BoundingBox;

    move-object/from16 v16, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v16

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/BoundingBoxBuilder;->minX:D

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/geometry/BoundingBoxBuilder;->minY:D

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/geometry/BoundingBoxBuilder;->minZ:D

    move-object v10, v0

    iget-wide v10, v10, Ljavafx/geometry/BoundingBoxBuilder;->width:D

    move-object v12, v0

    iget-wide v12, v12, Ljavafx/geometry/BoundingBoxBuilder;->height:D

    move-object v14, v0

    iget-wide v14, v14, Ljavafx/geometry/BoundingBoxBuilder;->depth:D

    invoke-direct/range {v3 .. v15}, Ljavafx/geometry/BoundingBox;-><init>(DDDDDD)V

    move-object v1, v2

    .line 111
    .local v1, "x":Ljavafx/geometry/BoundingBox;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    return-object v0
.end method

.method public depth(D)Ljavafx/geometry/BoundingBoxBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/BoundingBoxBuilder;->depth:D

    .line 53
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    return-object v0
.end method

.method public height(D)Ljavafx/geometry/BoundingBoxBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/BoundingBoxBuilder;->height:D

    .line 63
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    return-object v0
.end method

.method public minX(D)Ljavafx/geometry/BoundingBoxBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/BoundingBoxBuilder;->minX:D

    .line 73
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    return-object v0
.end method

.method public minY(D)Ljavafx/geometry/BoundingBoxBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/BoundingBoxBuilder;->minY:D

    .line 83
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    return-object v0
.end method

.method public minZ(D)Ljavafx/geometry/BoundingBoxBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/BoundingBoxBuilder;->minZ:D

    .line 93
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    return-object v0
.end method

.method public width(D)Ljavafx/geometry/BoundingBoxBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/BoundingBoxBuilder;->width:D

    .line 103
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/BoundingBoxBuilder;, "Ljavafx/geometry/BoundingBoxBuilder<TB;>;"
    return-object v0
.end method
