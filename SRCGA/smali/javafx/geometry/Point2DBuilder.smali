.class public Ljavafx/geometry/Point2DBuilder;
.super Ljava/lang/Object;
.source "Point2DBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/geometry/Point2DBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/geometry/Point2D;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private x:D

.field private y:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2DBuilder;, "Ljavafx/geometry/Point2DBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/geometry/Point2DBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/geometry/Point2DBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/geometry/Point2DBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/geometry/Point2DBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2DBuilder;, "Ljavafx/geometry/Point2DBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/geometry/Point2DBuilder;->build()Ljavafx/geometry/Point2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/Point2DBuilder;, "Ljavafx/geometry/Point2DBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/geometry/Point2D;
    .locals 9

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2DBuilder;, "Ljavafx/geometry/Point2DBuilder<TB;>;"
    new-instance v2, Ljavafx/geometry/Point2D;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Point2DBuilder;->x:D

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/geometry/Point2DBuilder;->y:D

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v2

    .line 71
    .local v1, "x":Ljavafx/geometry/Point2D;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/geometry/Point2DBuilder;, "Ljavafx/geometry/Point2DBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/geometry/Point2DBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2DBuilder;, "Ljavafx/geometry/Point2DBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Point2DBuilder;->x:D

    .line 53
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/Point2DBuilder;, "Ljavafx/geometry/Point2DBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/geometry/Point2DBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point2DBuilder;, "Ljavafx/geometry/Point2DBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Point2DBuilder;->y:D

    .line 63
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/Point2DBuilder;, "Ljavafx/geometry/Point2DBuilder<TB;>;"
    return-object v0
.end method
