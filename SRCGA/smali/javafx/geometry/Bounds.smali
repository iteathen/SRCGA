.class public abstract Ljavafx/geometry/Bounds;
.super Ljava/lang/Object;
.source "Bounds.java"


# instance fields
.field private depth:D

.field private height:D

.field private maxX:D

.field private maxY:D

.field private maxZ:D

.field private minX:D

.field private minY:D

.field private minZ:D

.field private width:D


# direct methods
.method protected constructor <init>(DDDDDD)V
    .locals 19

    .prologue
    .line 247
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/geometry/Bounds;
    move-wide/from16 v1, p1

    .local v1, "minX":D
    move-wide/from16 v3, p3

    .local v3, "minY":D
    move-wide/from16 v5, p5

    .local v5, "minZ":D
    move-wide/from16 v7, p7

    .local v7, "width":D
    move-wide/from16 v9, p9

    .local v9, "height":D
    move-wide/from16 v11, p11

    .local v11, "depth":D
    move-object v13, v0

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 248
    move-object v13, v0

    move-wide v14, v1

    iput-wide v14, v13, Ljavafx/geometry/Bounds;->minX:D

    .line 249
    move-object v13, v0

    move-wide v14, v3

    iput-wide v14, v13, Ljavafx/geometry/Bounds;->minY:D

    .line 250
    move-object v13, v0

    move-wide v14, v5

    iput-wide v14, v13, Ljavafx/geometry/Bounds;->minZ:D

    .line 251
    move-object v13, v0

    move-wide v14, v7

    iput-wide v14, v13, Ljavafx/geometry/Bounds;->width:D

    .line 252
    move-object v13, v0

    move-wide v14, v9

    iput-wide v14, v13, Ljavafx/geometry/Bounds;->height:D

    .line 253
    move-object v13, v0

    move-wide v14, v11

    iput-wide v14, v13, Ljavafx/geometry/Bounds;->depth:D

    .line 254
    move-object v13, v0

    move-wide v14, v1

    move-wide/from16 v16, v7

    add-double v14, v14, v16

    iput-wide v14, v13, Ljavafx/geometry/Bounds;->maxX:D

    .line 255
    move-object v13, v0

    move-wide v14, v3

    move-wide/from16 v16, v9

    add-double v14, v14, v16

    iput-wide v14, v13, Ljavafx/geometry/Bounds;->maxY:D

    .line 256
    move-object v13, v0

    move-wide v14, v5

    move-wide/from16 v16, v11

    add-double v14, v14, v16

    iput-wide v14, v13, Ljavafx/geometry/Bounds;->maxZ:D

    .line 257
    return-void
.end method


# virtual methods
.method public abstract contains(DD)Z
.end method

.method public abstract contains(DDD)Z
.end method

.method public abstract contains(DDDD)Z
.end method

.method public abstract contains(DDDDDD)Z
.end method

.method public abstract contains(Ljavafx/geometry/Bounds;)Z
.end method

.method public abstract contains(Ljavafx/geometry/Point2D;)Z
.end method

.method public abstract contains(Ljavafx/geometry/Point3D;)Z
.end method

.method public final getDepth()D
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Bounds;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Bounds;->depth:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Bounds;
    return-wide v0
.end method

.method public final getHeight()D
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Bounds;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Bounds;->height:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Bounds;
    return-wide v0
.end method

.method public final getMaxX()D
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Bounds;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Bounds;->maxX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Bounds;
    return-wide v0
.end method

.method public final getMaxY()D
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Bounds;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Bounds;->maxY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Bounds;
    return-wide v0
.end method

.method public final getMaxZ()D
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Bounds;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Bounds;->maxZ:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Bounds;
    return-wide v0
.end method

.method public final getMinX()D
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Bounds;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Bounds;->minX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Bounds;
    return-wide v0
.end method

.method public final getMinY()D
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Bounds;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Bounds;->minY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Bounds;
    return-wide v0
.end method

.method public final getMinZ()D
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Bounds;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Bounds;->minZ:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Bounds;
    return-wide v0
.end method

.method public final getWidth()D
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Bounds;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Bounds;->width:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Bounds;
    return-wide v0
.end method

.method public abstract intersects(DDDD)Z
.end method

.method public abstract intersects(DDDDDD)Z
.end method

.method public abstract intersects(Ljavafx/geometry/Bounds;)Z
.end method

.method public abstract isEmpty()Z
.end method
