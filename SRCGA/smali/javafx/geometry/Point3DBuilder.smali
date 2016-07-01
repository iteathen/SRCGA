.class public Ljavafx/geometry/Point3DBuilder;
.super Ljava/lang/Object;
.source "Point3DBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/geometry/Point3DBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/geometry/Point3D;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private x:D

.field private y:D

.field private z:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/geometry/Point3DBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/geometry/Point3DBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/geometry/Point3DBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/geometry/Point3DBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/geometry/Point3DBuilder;->build()Ljavafx/geometry/Point3D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/geometry/Point3D;
    .locals 11

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    new-instance v2, Ljavafx/geometry/Point3D;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Point3DBuilder;->x:D

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/geometry/Point3DBuilder;->y:D

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/geometry/Point3DBuilder;->z:D

    invoke-direct/range {v3 .. v9}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v2

    .line 81
    .local v1, "x":Ljavafx/geometry/Point3D;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    return-object v0
.end method

.method public x(D)Ljavafx/geometry/Point3DBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Point3DBuilder;->x:D

    .line 53
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    return-object v0
.end method

.method public y(D)Ljavafx/geometry/Point3DBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Point3DBuilder;->y:D

    .line 63
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    return-object v0
.end method

.method public z(D)Ljavafx/geometry/Point3DBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/geometry/Point3DBuilder;->z:D

    .line 73
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/geometry/Point3DBuilder;, "Ljavafx/geometry/Point3DBuilder<TB;>;"
    return-object v0
.end method
