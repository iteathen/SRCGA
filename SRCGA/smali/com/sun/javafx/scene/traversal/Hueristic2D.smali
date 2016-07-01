.class public Lcom/sun/javafx/scene/traversal/Hueristic2D;
.super Ljava/lang/Object;
.source "Hueristic2D.java"

# interfaces
.implements Lcom/sun/javafx/scene/traversal/Algorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    }
.end annotation


# static fields
.field private static final BOUNDS_BOTTOM_SIDE:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<",
            "Ljavafx/geometry/Bounds;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOUNDS_LEFT_SIDE:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<",
            "Ljavafx/geometry/Bounds;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOUNDS_RIGHT_SIDE:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<",
            "Ljavafx/geometry/Bounds;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOUNDS_TOP_SIDE:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<",
            "Ljavafx/geometry/Bounds;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected cacheLastTraversalNode:Ljavafx/scene/Node;

.field protected cacheStartTraversalDirection:Lcom/sun/javafx/scene/traversal/Direction;

.field protected cacheStartTraversalNode:Ljavafx/scene/Node;

.field protected reverseDirection:Z

.field protected traversalNodeStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$1;->lambdaFactory$()Ljava/util/function/Function;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_TOP_SIDE:Ljava/util/function/Function;

    .line 257
    invoke-static {}, Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$2;->lambdaFactory$()Ljava/util/function/Function;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_BOTTOM_SIDE:Ljava/util/function/Function;

    .line 549
    invoke-static {}, Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$3;->lambdaFactory$()Ljava/util/function/Function;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_LEFT_SIDE:Ljava/util/function/Function;

    .line 551
    invoke-static {}, Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$4;->lambdaFactory$()Ljava/util/function/Function;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_RIGHT_SIDE:Ljava/util/function/Function;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 206
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalNode:Ljavafx/scene/Node;

    .line 207
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalDirection:Lcom/sun/javafx/scene/traversal/Direction;

    .line 208
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D;->reverseDirection:Z

    .line 209
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheLastTraversalNode:Ljavafx/scene/Node;

    .line 210
    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    .line 42
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/geometry/Bounds;)Ljava/lang/Double;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->lambda$static$260(Ljavafx/geometry/Bounds;)Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/geometry/Bounds;)Ljava/lang/Double;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->lambda$static$261(Ljavafx/geometry/Bounds;)Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljavafx/geometry/Bounds;)Ljava/lang/Double;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->lambda$static$262(Ljavafx/geometry/Bounds;)Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljavafx/geometry/Bounds;)Ljava/lang/Double;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->lambda$static$263(Ljavafx/geometry/Bounds;)Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private cacheTraversal(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheLastTraversalNode:Ljavafx/scene/Node;

    if-eq v3, v4, :cond_0

    .line 218
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    .line 223
    :cond_0
    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v3, v4, :cond_1

    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v3, v4, :cond_2

    .line 224
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    .line 225
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->reverseDirection:Z

    .line 253
    :goto_0
    return-void

    .line 227
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalNode:Ljavafx/scene/Node;

    if-eqz v3, :cond_3

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalDirection:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v3, v4, :cond_9

    .line 229
    :cond_3
    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v3, v4, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalDirection:Lcom/sun/javafx/scene/traversal/Direction;

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v3, v4, :cond_7

    :cond_4
    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v3, v4, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalDirection:Lcom/sun/javafx/scene/traversal/Direction;

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v3, v4, :cond_7

    :cond_5
    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v3, v4, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalDirection:Lcom/sun/javafx/scene/traversal/Direction;

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v3, v4, :cond_7

    :cond_6
    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v3, v4, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalDirection:Lcom/sun/javafx/scene/traversal/Direction;

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v3, v4, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    .line 232
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 233
    :cond_7
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->reverseDirection:Z

    goto :goto_0

    .line 241
    :cond_8
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalNode:Ljavafx/scene/Node;

    .line 242
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalDirection:Lcom/sun/javafx/scene/traversal/Direction;

    .line 243
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->reverseDirection:Z

    .line 244
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    goto :goto_0

    .line 250
    :cond_9
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/traversal/Hueristic2D;->reverseDirection:Z

    goto :goto_0
.end method

.method private centerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D
    .locals 14

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object/from16 v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v8, v9, :cond_0

    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v8, v9, :cond_1

    .line 164
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 165
    .local v4, "cc":D
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 171
    .local v6, "tc":D
    :goto_0
    move-wide v8, v6

    move-wide v10, v4

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    return-wide v0

    .line 168
    .end local v4    # "cc":D
    .end local v6    # "tc":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 169
    .restart local v4    # "cc":D
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .restart local v6    # "tc":D
    goto :goto_0
.end method

.method private cornerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D
    .locals 10

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v6, v7, :cond_0

    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_2

    .line 183
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 185
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 203
    .local v4, "distance":D
    :goto_0
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    return-wide v0

    .line 189
    .end local v4    # "distance":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 194
    .end local v4    # "distance":D
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 196
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 200
    .end local v4    # "distance":D
    :cond_3
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0
.end method

.method public static varargs findMin([D)D
    .locals 8

    .prologue
    .line 886
    move-object v0, p0

    .local v0, "values":[D
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v1, v4

    .line 888
    .local v1, "minValue":D
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 889
    move-wide v4, v1

    move-object v6, v0

    move v7, v3

    aget-wide v6, v6, v7

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    move-wide v4, v1

    :goto_1
    move-wide v1, v4

    .line 888
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 889
    :cond_0
    move-object v4, v0

    move v5, v3

    aget-wide v4, v4, v5

    goto :goto_1

    .line 891
    :cond_1
    move-wide v4, v1

    move-wide v0, v4

    .end local v0    # "values":[D
    return-wide v0
.end method

.method private isOnAxis(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Z
    .locals 16

    .prologue
    .line 117
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object/from16 v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object/from16 v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v12, v1

    sget-object v13, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v12, v13, :cond_0

    move-object v12, v1

    sget-object v13, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v12, v13, :cond_1

    .line 118
    :cond_0
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v4, v12

    .line 119
    .local v4, "cmin":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-wide v6, v12

    .line 120
    .local v6, "cmax":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v8, v12

    .line 121
    .local v8, "tmin":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-wide v10, v12

    .line 130
    .local v10, "tmax":D
    :goto_0
    move-wide v12, v8

    move-wide v14, v6

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    move-wide v12, v10

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_2

    const/4 v12, 0x1

    :goto_1
    move v0, v12

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    return v0

    .line 124
    .end local v4    # "cmin":D
    .end local v6    # "cmax":D
    .end local v8    # "tmin":D
    .end local v10    # "tmax":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    :cond_1
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v4, v12

    .line 125
    .restart local v4    # "cmin":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v6, v12

    .line 126
    .restart local v6    # "cmax":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v8, v12

    .line 127
    .restart local v8    # "tmin":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v10, v12

    .restart local v10    # "tmax":D
    goto :goto_0

    .line 130
    :cond_2
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private static synthetic lambda$static$260(Ljavafx/geometry/Bounds;)Ljava/lang/Double;
    .locals 4

    .prologue
    .line 255
    move-object v1, p0

    .local v1, "t":Ljavafx/geometry/Bounds;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "t":Ljavafx/geometry/Bounds;
    return-object v1
.end method

.method private static synthetic lambda$static$261(Ljavafx/geometry/Bounds;)Ljava/lang/Double;
    .locals 4

    .prologue
    .line 257
    move-object v1, p0

    .local v1, "t":Ljavafx/geometry/Bounds;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "t":Ljavafx/geometry/Bounds;
    return-object v1
.end method

.method private static synthetic lambda$static$262(Ljavafx/geometry/Bounds;)Ljava/lang/Double;
    .locals 4

    .prologue
    .line 549
    move-object v1, p0

    .local v1, "t":Ljavafx/geometry/Bounds;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "t":Ljavafx/geometry/Bounds;
    return-object v1
.end method

.method private static synthetic lambda$static$263(Ljavafx/geometry/Bounds;)Ljava/lang/Double;
    .locals 4

    .prologue
    .line 551
    move-object v1, p0

    .local v1, "t":Ljavafx/geometry/Bounds;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "t":Ljavafx/geometry/Bounds;
    return-object v1
.end method

.method private outDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D
    .locals 10

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_0

    .line 141
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 152
    .local v4, "distance":D
    :goto_0
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    return-wide v0

    .line 143
    .end local v4    # "distance":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    :cond_0
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_1

    .line 144
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 146
    .end local v4    # "distance":D
    :cond_1
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_2

    .line 147
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 150
    .end local v4    # "distance":D
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0
.end method


# virtual methods
.method protected getNearestNodeLeftOrRight(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/TraversalContext;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;
    .locals 71

    .prologue
    .line 555
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object/from16 v4, p1

    .local v4, "currentB":Ljavafx/geometry/Bounds;
    move-object/from16 v5, p2

    .local v5, "originB":Ljavafx/geometry/Bounds;
    move-object/from16 v6, p3

    .local v6, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object/from16 v7, p4

    .local v7, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v60, v6

    invoke-interface/range {v60 .. v60}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getAllTargetNodes()Ljava/util/List;

    move-result-object v60

    move-object/from16 v8, v60

    .line 557
    .local v8, "nodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v60, v7

    sget-object v61, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_15

    sget-object v60, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_LEFT_SIDE:Ljava/util/function/Function;

    :goto_0
    move-object/from16 v9, v60

    .line 558
    .local v9, "xSideInDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    move-object/from16 v60, v7

    sget-object v61, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_16

    sget-object v60, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_RIGHT_SIDE:Ljava/util/function/Function;

    :goto_1
    move-object/from16 v10, v60

    .line 560
    .local v10, "xSideInOpositeDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    new-instance v60, Ljavafx/geometry/BoundingBox;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v5

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    move-object/from16 v66, v4

    invoke-virtual/range {v66 .. v66}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v66

    move-object/from16 v68, v5

    invoke-virtual/range {v68 .. v68}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v68

    invoke-direct/range {v61 .. v69}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object/from16 v11, v60

    .line 562
    .local v11, "biasedB":Ljavafx/geometry/Bounds;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v9

    move-object/from16 v63, v4

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v4

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    move-object/from16 v66, v4

    invoke-virtual/range {v66 .. v66}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v66

    const-wide/high16 v68, 0x4000000000000000L    # 2.0

    div-double v66, v66, v68

    add-double v64, v64, v66

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v12, v60

    .line 563
    .local v12, "currentMid2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v9

    move-object/from16 v63, v4

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v5

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    move-object/from16 v66, v5

    invoke-virtual/range {v66 .. v66}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v66

    const-wide/high16 v68, 0x4000000000000000L    # 2.0

    div-double v66, v66, v68

    add-double v64, v64, v66

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v13, v60

    .line 564
    .local v13, "biasedMid2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v9

    move-object/from16 v63, v4

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v4

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v14, v60

    .line 565
    .local v14, "currentTopCorner2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v9

    move-object/from16 v63, v4

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v5

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v15, v60

    .line 566
    .local v15, "biasedTopCorner2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v9

    move-object/from16 v63, v4

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v4

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v16, v60

    .line 567
    .local v16, "currentBottomCorner2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v9

    move-object/from16 v63, v4

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v5

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v17, v60

    .line 569
    .local v17, "biasedBottomCorner2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v9

    move-object/from16 v63, v5

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v5

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v18, v60

    .line 571
    .local v18, "originTopCorner2D":Ljavafx/geometry/Point2D;
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v19, v60

    .line 572
    .local v19, "targetNode":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v20, v60

    .line 573
    .local v20, "nearestNodeCurrentSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v21, v60

    .line 574
    .local v21, "nearestNodeOriginSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v22, v60

    .line 575
    .local v22, "nearestNodeAverage":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v23, v60

    .line 576
    .local v23, "nearestNodeOnOriginY":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v24, v60

    .line 577
    .local v24, "nearestNodeOnCurrentY":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v25, v60

    .line 578
    .local v25, "nearestNodeTopLeft":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v26, v60

    .line 580
    .local v26, "nearestNodeAnythingAnywhereLeft":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move/from16 v27, v60

    .local v27, "nodeIndex":I
    :goto_2
    move/from16 v60, v27

    move-object/from16 v61, v8

    invoke-interface/range {v61 .. v61}, Ljava/util/List;->size()I

    move-result v61

    move/from16 v0, v60

    move/from16 v1, v61

    if-ge v0, v1, :cond_1a

    .line 581
    move-object/from16 v60, v8

    move/from16 v61, v27

    invoke-interface/range {v60 .. v61}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljavafx/scene/Node;

    move-object/from16 v28, v60

    .line 583
    .local v28, "n":Ljavafx/scene/Node;
    move-object/from16 v60, v28

    move-object/from16 v61, v28

    invoke-virtual/range {v61 .. v61}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v60

    move-object/from16 v29, v60

    .line 588
    .local v29, "targetBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v60, v7

    sget-object v61, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_17

    move-object/from16 v60, v4

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v60

    move-object/from16 v62, v29

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-lez v60, :cond_14

    .line 591
    :goto_3
    move-object/from16 v60, v19

    move-object/from16 v61, v28

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    .line 592
    move-object/from16 v60, v19

    move-object/from16 v61, v29

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    .line 598
    const-wide/16 v60, 0x0

    move-object/from16 v62, v3

    move-object/from16 v63, v7

    move-object/from16 v64, v11

    move-object/from16 v65, v29

    invoke-direct/range {v62 .. v65}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->outDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v62

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    move-wide/from16 v30, v60

    .line 600
    .local v30, "outdB":D
    move-object/from16 v60, v3

    move-object/from16 v61, v7

    move-object/from16 v62, v11

    move-object/from16 v63, v29

    invoke-direct/range {v60 .. v63}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->isOnAxis(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Z

    move-result v60

    if-eqz v60, :cond_18

    .line 601
    move-object/from16 v60, v19

    move-wide/from16 v61, v30

    move-object/from16 v63, v3

    move-object/from16 v64, v7

    move-object/from16 v65, v11

    move-object/from16 v66, v29

    invoke-direct/range {v63 .. v66}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->centerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v63

    const-wide/high16 v65, 0x4059000000000000L    # 100.0

    div-double v63, v63, v65

    add-double v61, v61, v63

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    .line 610
    :goto_4
    const-wide/16 v60, 0x0

    move-object/from16 v62, v3

    move-object/from16 v63, v7

    move-object/from16 v64, v4

    move-object/from16 v65, v29

    invoke-direct/range {v62 .. v65}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->outDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v62

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    move-wide/from16 v32, v60

    .line 612
    .local v32, "outdC":D
    move-object/from16 v60, v3

    move-object/from16 v61, v7

    move-object/from16 v62, v4

    move-object/from16 v63, v29

    invoke-direct/range {v60 .. v63}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->isOnAxis(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Z

    move-result v60

    if-eqz v60, :cond_19

    .line 613
    move-object/from16 v60, v19

    move-wide/from16 v61, v32

    move-object/from16 v63, v3

    move-object/from16 v64, v7

    move-object/from16 v65, v4

    move-object/from16 v66, v29

    invoke-direct/range {v63 .. v66}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->centerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v63

    const-wide/high16 v65, 0x4059000000000000L    # 100.0

    div-double v63, v63, v65

    add-double v61, v61, v63

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    .line 619
    :goto_5
    move-object/from16 v60, v19

    move-object/from16 v61, v14

    move-object/from16 v62, v10

    move-object/from16 v63, v29

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v29

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    invoke-virtual/range {v61 .. v65}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    .line 620
    move-object/from16 v60, v19

    move-object/from16 v61, v16

    move-object/from16 v62, v10

    move-object/from16 v63, v29

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v29

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v64

    invoke-virtual/range {v61 .. v65}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bottomCornerDistance:D

    .line 622
    move-object/from16 v60, v12

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v63

    move-object/from16 v65, v29

    invoke-virtual/range {v65 .. v65}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v65

    const-wide/high16 v67, 0x4000000000000000L    # 2.0

    div-double v65, v65, v67

    add-double v63, v63, v65

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v34, v60

    .line 623
    .local v34, "midDistance":D
    move-object/from16 v60, v14

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v36, v60

    .line 624
    .local v36, "currentTopToTargetBottomDistance":D
    move-object/from16 v60, v14

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v63

    move-object/from16 v65, v29

    invoke-virtual/range {v65 .. v65}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v65

    const-wide/high16 v67, 0x4000000000000000L    # 2.0

    div-double v65, v65, v67

    add-double v63, v63, v65

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v38, v60

    .line 625
    .local v38, "currentTopToTargetMidDistance":D
    move-object/from16 v60, v16

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v40, v60

    .line 626
    .local v40, "currentBottomToTargetTopDistance":D
    move-object/from16 v60, v16

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v42, v60

    .line 627
    .local v42, "currentBottomToTargetBottomDistance":D
    move-object/from16 v60, v16

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v63

    move-object/from16 v65, v29

    invoke-virtual/range {v65 .. v65}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v65

    const-wide/high16 v67, 0x4000000000000000L    # 2.0

    div-double v65, v65, v67

    add-double v63, v63, v65

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v44, v60

    .line 628
    .local v44, "currentBottomToTargetMidDistance":D
    move-object/from16 v60, v12

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v46, v60

    .line 629
    .local v46, "currentMidToTargetTopDistance":D
    move-object/from16 v60, v12

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v48, v60

    .line 630
    .local v48, "currentMidToTargetBottomDistance":D
    move-object/from16 v60, v12

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v63

    move-object/from16 v65, v29

    invoke-virtual/range {v65 .. v65}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v65

    const-wide/high16 v67, 0x4000000000000000L    # 2.0

    div-double v65, v65, v67

    add-double v63, v63, v65

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v50, v60

    .line 632
    .local v50, "currentMidToTargetMidDistance":D
    move-object/from16 v60, v15

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v52, v60

    .line 633
    .local v52, "biasTopToTargetBottomDistance":D
    move-object/from16 v60, v15

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v63

    move-object/from16 v65, v29

    invoke-virtual/range {v65 .. v65}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v65

    const-wide/high16 v67, 0x4000000000000000L    # 2.0

    div-double v65, v65, v67

    add-double v63, v63, v65

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v54, v60

    .line 634
    .local v54, "biasTopToTargetMidDistance":D
    move-object/from16 v60, v17

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v63

    move-object/from16 v65, v29

    invoke-virtual/range {v65 .. v65}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v65

    const-wide/high16 v67, 0x4000000000000000L    # 2.0

    div-double v65, v65, v67

    add-double v63, v63, v65

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v56, v60

    .line 635
    .local v56, "biasBottomToTargetMidDistance":D
    move-object/from16 v60, v13

    move-object/from16 v61, v10

    move-object/from16 v62, v29

    invoke-interface/range {v61 .. v62}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Double;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v58, v60

    .line 637
    .local v58, "biasMidToTargetBottomDistance":D
    move-object/from16 v60, v19

    move-object/from16 v61, v19

    move-object/from16 v0, v61

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    move-wide/from16 v61, v0

    move-wide/from16 v63, v52

    add-double v61, v61, v63

    move-wide/from16 v63, v54

    add-double v61, v61, v63

    move-wide/from16 v63, v40

    add-double v61, v61, v63

    move-object/from16 v63, v19

    move-object/from16 v0, v63

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bottomCornerDistance:D

    move-wide/from16 v63, v0

    add-double v61, v61, v63

    move-wide/from16 v63, v56

    add-double v61, v61, v63

    move-wide/from16 v63, v34

    add-double v61, v61, v63

    const-wide/high16 v63, 0x401c000000000000L    # 7.0

    div-double v61, v61, v63

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    .line 641
    move-object/from16 v60, v19

    const/16 v61, 0x9

    move/from16 v0, v61

    new-array v0, v0, [D

    move-object/from16 v61, v0

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x0

    move-object/from16 v64, v19

    move-object/from16 v0, v64

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    move-wide/from16 v64, v0

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x1

    move-wide/from16 v64, v52

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x2

    move-wide/from16 v64, v54

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x3

    move-wide/from16 v64, v40

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x4

    move-object/from16 v64, v19

    move-object/from16 v0, v64

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bottomCornerDistance:D

    move-wide/from16 v64, v0

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x5

    move-wide/from16 v64, v56

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x6

    move-wide/from16 v64, v46

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x7

    move-wide/from16 v64, v58

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x8

    move-wide/from16 v64, v34

    aput-wide v64, v62, v63

    .line 642
    invoke-static/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->findMin([D)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    .line 646
    move-object/from16 v60, v19

    const/16 v61, 0x9

    move/from16 v0, v61

    new-array v0, v0, [D

    move-object/from16 v61, v0

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x0

    move-object/from16 v64, v19

    move-object/from16 v0, v64

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    move-wide/from16 v64, v0

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x1

    move-wide/from16 v64, v36

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x2

    move-wide/from16 v64, v38

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x3

    move-wide/from16 v64, v40

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x4

    move-wide/from16 v64, v42

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x5

    move-wide/from16 v64, v44

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x6

    move-wide/from16 v64, v46

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x7

    move-wide/from16 v64, v48

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x8

    move-wide/from16 v64, v50

    aput-wide v64, v62, v63

    .line 647
    invoke-static/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->findMin([D)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->shortestDistance:D

    .line 654
    move-wide/from16 v60, v30

    const-wide/16 v62, 0x0

    cmpl-double v60, v60, v62

    if-ltz v60, :cond_2

    .line 655
    move-object/from16 v60, v21

    if-eqz v60, :cond_0

    move-object/from16 v60, v19

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v21

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_2

    .line 657
    :cond_0
    move-object/from16 v60, v21

    if-nez v60, :cond_1

    .line 658
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v21, v60

    .line 660
    :cond_1
    move-object/from16 v60, v21

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 666
    :cond_2
    move-wide/from16 v60, v32

    const-wide/16 v62, 0x0

    cmpl-double v60, v60, v62

    if-ltz v60, :cond_5

    .line 667
    move-object/from16 v60, v20

    if-eqz v60, :cond_3

    move-object/from16 v60, v19

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v20

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_5

    .line 669
    :cond_3
    move-object/from16 v60, v20

    if-nez v60, :cond_4

    .line 670
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v20, v60

    .line 672
    :cond_4
    move-object/from16 v60, v20

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 678
    :cond_5
    move-object/from16 v60, v5

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v60

    move-object/from16 v62, v29

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-lez v60, :cond_8

    move-object/from16 v60, v29

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v60

    move-object/from16 v62, v5

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-lez v60, :cond_8

    .line 679
    move-object/from16 v60, v23

    if-eqz v60, :cond_6

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v19

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-lez v60, :cond_8

    .line 681
    :cond_6
    move-object/from16 v60, v23

    if-nez v60, :cond_7

    .line 682
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v23, v60

    .line 684
    :cond_7
    move-object/from16 v60, v23

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 690
    :cond_8
    move-object/from16 v60, v4

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v60

    move-object/from16 v62, v29

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-lez v60, :cond_b

    move-object/from16 v60, v29

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v60

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-lez v60, :cond_b

    .line 691
    move-object/from16 v60, v24

    if-eqz v60, :cond_9

    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v19

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-lez v60, :cond_b

    .line 693
    :cond_9
    move-object/from16 v60, v24

    if-nez v60, :cond_a

    .line 694
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v24, v60

    .line 696
    :cond_a
    move-object/from16 v60, v24

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 702
    :cond_b
    move-object/from16 v60, v25

    if-eqz v60, :cond_c

    move-object/from16 v60, v25

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v19

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->topCornerDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-lez v60, :cond_e

    .line 704
    :cond_c
    move-object/from16 v60, v25

    if-nez v60, :cond_d

    .line 705
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v25, v60

    .line 707
    :cond_d
    move-object/from16 v60, v25

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 710
    :cond_e
    move-object/from16 v60, v22

    if-eqz v60, :cond_f

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v19

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-lez v60, :cond_11

    .line 712
    :cond_f
    move-object/from16 v60, v22

    if-nez v60, :cond_10

    .line 713
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v22, v60

    .line 715
    :cond_10
    move-object/from16 v60, v22

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 718
    :cond_11
    move-object/from16 v60, v26

    if-eqz v60, :cond_12

    move-object/from16 v60, v26

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->shortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v19

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->shortestDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-lez v60, :cond_14

    .line 720
    :cond_12
    move-object/from16 v60, v26

    if-nez v60, :cond_13

    .line 721
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v26, v60

    .line 723
    :cond_13
    move-object/from16 v60, v26

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 580
    .end local v30    # "outdB":D
    .end local v32    # "outdC":D
    .end local v34    # "midDistance":D
    .end local v36    # "currentTopToTargetBottomDistance":D
    .end local v38    # "currentTopToTargetMidDistance":D
    .end local v40    # "currentBottomToTargetTopDistance":D
    .end local v42    # "currentBottomToTargetBottomDistance":D
    .end local v44    # "currentBottomToTargetMidDistance":D
    .end local v46    # "currentMidToTargetTopDistance":D
    .end local v48    # "currentMidToTargetBottomDistance":D
    .end local v50    # "currentMidToTargetMidDistance":D
    .end local v52    # "biasTopToTargetBottomDistance":D
    .end local v54    # "biasTopToTargetMidDistance":D
    .end local v56    # "biasBottomToTargetMidDistance":D
    .end local v58    # "biasMidToTargetBottomDistance":D
    :cond_14
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 557
    .end local v9    # "xSideInDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    .end local v10    # "xSideInOpositeDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    .end local v11    # "biasedB":Ljavafx/geometry/Bounds;
    .end local v12    # "currentMid2D":Ljavafx/geometry/Point2D;
    .end local v13    # "biasedMid2D":Ljavafx/geometry/Point2D;
    .end local v14    # "currentTopCorner2D":Ljavafx/geometry/Point2D;
    .end local v15    # "biasedTopCorner2D":Ljavafx/geometry/Point2D;
    .end local v16    # "currentBottomCorner2D":Ljavafx/geometry/Point2D;
    .end local v17    # "biasedBottomCorner2D":Ljavafx/geometry/Point2D;
    .end local v18    # "originTopCorner2D":Ljavafx/geometry/Point2D;
    .end local v19    # "targetNode":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v20    # "nearestNodeCurrentSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v21    # "nearestNodeOriginSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v22    # "nearestNodeAverage":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v23    # "nearestNodeOnOriginY":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v24    # "nearestNodeOnCurrentY":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v25    # "nearestNodeTopLeft":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v26    # "nearestNodeAnythingAnywhereLeft":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v27    # "nodeIndex":I
    .end local v28    # "n":Ljavafx/scene/Node;
    .end local v29    # "targetBounds":Ljavafx/geometry/Bounds;
    :cond_15
    sget-object v60, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_RIGHT_SIDE:Ljava/util/function/Function;

    goto/16 :goto_0

    .line 558
    .restart local v9    # "xSideInDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    :cond_16
    sget-object v60, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_LEFT_SIDE:Ljava/util/function/Function;

    goto/16 :goto_1

    .line 588
    .restart local v10    # "xSideInOpositeDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    .restart local v11    # "biasedB":Ljavafx/geometry/Bounds;
    .restart local v12    # "currentMid2D":Ljavafx/geometry/Point2D;
    .restart local v13    # "biasedMid2D":Ljavafx/geometry/Point2D;
    .restart local v14    # "currentTopCorner2D":Ljavafx/geometry/Point2D;
    .restart local v15    # "biasedTopCorner2D":Ljavafx/geometry/Point2D;
    .restart local v16    # "currentBottomCorner2D":Ljavafx/geometry/Point2D;
    .restart local v17    # "biasedBottomCorner2D":Ljavafx/geometry/Point2D;
    .restart local v18    # "originTopCorner2D":Ljavafx/geometry/Point2D;
    .restart local v19    # "targetNode":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v20    # "nearestNodeCurrentSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v21    # "nearestNodeOriginSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v22    # "nearestNodeAverage":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v23    # "nearestNodeOnOriginY":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v24    # "nearestNodeOnCurrentY":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v25    # "nearestNodeTopLeft":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v26    # "nearestNodeAnythingAnywhereLeft":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v27    # "nodeIndex":I
    .restart local v28    # "n":Ljavafx/scene/Node;
    .restart local v29    # "targetBounds":Ljavafx/geometry/Bounds;
    :cond_17
    move-object/from16 v60, v4

    .line 589
    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v60

    move-object/from16 v62, v29

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v62

    cmpg-double v60, v60, v62

    if-gez v60, :cond_14

    goto/16 :goto_3

    .line 603
    .restart local v30    # "outdB":D
    :cond_18
    move-object/from16 v60, v3

    move-object/from16 v61, v7

    move-object/from16 v62, v11

    move-object/from16 v63, v29

    invoke-direct/range {v60 .. v63}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cornerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v60

    move-wide/from16 v32, v60

    .line 604
    .local v32, "cosd":D
    move-object/from16 v60, v19

    const-wide v61, 0x40f86a0000000000L    # 100000.0

    move-wide/from16 v63, v30

    move-wide/from16 v65, v30

    mul-double v63, v63, v65

    add-double v61, v61, v63

    const-wide/high16 v63, 0x4022000000000000L    # 9.0

    move-wide/from16 v65, v32

    mul-double v63, v63, v65

    move-wide/from16 v65, v32

    mul-double v63, v63, v65

    add-double v61, v61, v63

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    goto/16 :goto_4

    .line 615
    .local v32, "outdC":D
    :cond_19
    move-object/from16 v60, v3

    move-object/from16 v61, v7

    move-object/from16 v62, v4

    move-object/from16 v63, v29

    invoke-direct/range {v60 .. v63}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cornerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v60

    move-wide/from16 v34, v60

    .line 616
    .local v34, "cosd":D
    move-object/from16 v60, v19

    const-wide v61, 0x40f86a0000000000L    # 100000.0

    move-wide/from16 v63, v32

    move-wide/from16 v65, v32

    mul-double v63, v63, v65

    add-double v61, v61, v63

    const-wide/high16 v63, 0x4022000000000000L    # 9.0

    move-wide/from16 v65, v34

    mul-double v63, v63, v65

    move-wide/from16 v65, v34

    mul-double v63, v63, v65

    add-double v61, v61, v63

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    goto/16 :goto_5

    .line 727
    .end local v28    # "n":Ljavafx/scene/Node;
    .end local v29    # "targetBounds":Ljavafx/geometry/Bounds;
    .end local v30    # "outdB":D
    .end local v32    # "outdC":D
    .end local v34    # "cosd":D
    :cond_1a
    move-object/from16 v60, v8

    invoke-interface/range {v60 .. v60}, Ljava/util/List;->clear()V

    .line 729
    move-object/from16 v60, v23

    if-eqz v60, :cond_1b

    .line 730
    move-object/from16 v60, v23

    move-object/from16 v61, v18

    move-object/from16 v62, v10

    move-object/from16 v63, v23

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v63, v0

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v23

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    invoke-virtual/range {v61 .. v65}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originTopCornerDistance:D

    .line 733
    :cond_1b
    move-object/from16 v60, v24

    if-eqz v60, :cond_1c

    .line 734
    move-object/from16 v60, v24

    move-object/from16 v61, v18

    move-object/from16 v62, v10

    move-object/from16 v63, v24

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v63, v0

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v24

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    invoke-virtual/range {v61 .. v65}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originTopCornerDistance:D

    .line 737
    :cond_1c
    move-object/from16 v60, v22

    if-eqz v60, :cond_1d

    .line 738
    move-object/from16 v60, v22

    move-object/from16 v61, v18

    move-object/from16 v62, v10

    move-object/from16 v63, v22

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v63, v0

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    move-object/from16 v64, v22

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    invoke-virtual/range {v61 .. v65}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originTopCornerDistance:D

    .line 741
    :cond_1d
    move-object/from16 v60, v24

    if-nez v60, :cond_1e

    move-object/from16 v60, v23

    if-nez v60, :cond_1e

    .line 742
    move-object/from16 v60, v3

    const/16 v61, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalNode:Ljavafx/scene/Node;

    .line 743
    move-object/from16 v60, v3

    const/16 v61, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalDirection:Lcom/sun/javafx/scene/traversal/Direction;

    .line 744
    move-object/from16 v60, v3

    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v60

    iput-boolean v0, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D;->reverseDirection:Z

    .line 745
    move-object/from16 v60, v3

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/Stack;->clear()V

    .line 748
    :cond_1e
    move-object/from16 v60, v23

    if-eqz v60, :cond_26

    .line 752
    move-object/from16 v60, v24

    if-eqz v60, :cond_22

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v24

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_22

    move-object/from16 v60, v22

    if-eqz v60, :cond_1f

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v22

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_21

    :cond_1f
    move-object/from16 v60, v25

    if-eqz v60, :cond_20

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v25

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_21

    :cond_20
    move-object/from16 v60, v26

    if-eqz v60, :cond_22

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v26

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_22

    .line 756
    :cond_21
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    .line 843
    .end local v3    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    :goto_6
    return-object v3

    .line 759
    .restart local v3    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    :cond_22
    move-object/from16 v60, v22

    if-eqz v60, :cond_23

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v22

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_23

    .line 760
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto :goto_6

    .line 763
    :cond_23
    move-object/from16 v60, v24

    if-eqz v60, :cond_29

    .line 764
    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bottomCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v23

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bottomCornerDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_24

    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originTopCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v23

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originTopCornerDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_24

    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v60, v0

    .line 766
    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v60

    move-object/from16 v62, v14

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v62

    sub-double v60, v60, v62

    move-object/from16 v62, v23

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v62

    move-object/from16 v64, v14

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v64

    sub-double v62, v62, v64

    cmpg-double v60, v60, v62

    if-gez v60, :cond_24

    .line 768
    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 769
    :cond_24
    move-object/from16 v60, v22

    if-eqz v60, :cond_25

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v22

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_29

    .line 770
    :cond_25
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 774
    :cond_26
    move-object/from16 v60, v24

    if-nez v60, :cond_28

    move-object/from16 v60, v20

    if-eqz v60, :cond_28

    .line 775
    move-object/from16 v60, v22

    if-eqz v60, :cond_27

    move-object/from16 v60, v25

    if-eqz v60, :cond_27

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v25

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_27

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v26

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_27

    .line 777
    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 779
    :cond_27
    move-object/from16 v60, v20

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 780
    :cond_28
    move-object/from16 v60, v22

    if-eqz v60, :cond_29

    move-object/from16 v60, v25

    if-eqz v60, :cond_29

    move-object/from16 v60, v26

    if-eqz v60, :cond_29

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v25

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-nez v60, :cond_29

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v26

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-nez v60, :cond_29

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v60, v60, v62

    if-gez v60, :cond_29

    .line 784
    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 791
    :cond_29
    move-object/from16 v60, v22

    if-eqz v60, :cond_2f

    move-object/from16 v60, v23

    if-eqz v60, :cond_2a

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v23

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_2f

    .line 795
    :cond_2a
    move-object/from16 v60, v23

    if-eqz v60, :cond_2b

    move-object/from16 v60, v10

    move-object/from16 v61, v23

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v61, v0

    invoke-interface/range {v60 .. v61}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Double;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v60

    move-object/from16 v62, v10

    move-object/from16 v63, v22

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v63, v0

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-ltz v60, :cond_2b

    .line 796
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 801
    :cond_2b
    move-object/from16 v60, v23

    if-eqz v60, :cond_2c

    move-object/from16 v60, v24

    if-eqz v60, :cond_2c

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v60, v60, v62

    if-gez v60, :cond_2c

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v24

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_2c

    .line 802
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 805
    :cond_2c
    move-object/from16 v60, v24

    if-eqz v60, :cond_2d

    move-object/from16 v60, v23

    if-eqz v60, :cond_2d

    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v60, v60, v62

    if-gez v60, :cond_2d

    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v23

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_2d

    .line 806
    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 809
    :cond_2d
    move-object/from16 v60, v23

    if-eqz v60, :cond_2e

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v60, v60, v62

    if-gez v60, :cond_2e

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originTopCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v22

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originTopCornerDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_2e

    .line 810
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 812
    :cond_2e
    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 816
    :cond_2f
    move-object/from16 v60, v23

    if-eqz v60, :cond_30

    move-object/from16 v60, v24

    if-eqz v60, :cond_30

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bottomCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v24

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bottomCornerDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_30

    .line 817
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 823
    :cond_30
    move-object/from16 v60, v24

    if-eqz v60, :cond_31

    move-object/from16 v60, v25

    if-eqz v60, :cond_31

    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v60, v60, v62

    if-gez v60, :cond_31

    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v25

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_31

    .line 824
    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 830
    :cond_31
    move-object/from16 v60, v23

    if-eqz v60, :cond_32

    .line 831
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 832
    :cond_32
    move-object/from16 v60, v21

    if-eqz v60, :cond_33

    .line 833
    move-object/from16 v60, v21

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 834
    :cond_33
    move-object/from16 v60, v24

    if-eqz v60, :cond_34

    .line 835
    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 836
    :cond_34
    move-object/from16 v60, v22

    if-eqz v60, :cond_35

    .line 837
    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 838
    :cond_35
    move-object/from16 v60, v25

    if-eqz v60, :cond_36

    .line 839
    move-object/from16 v60, v25

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 840
    :cond_36
    move-object/from16 v60, v26

    if-eqz v60, :cond_37

    .line 841
    move-object/from16 v60, v26

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 843
    :cond_37
    const/16 v60, 0x0

    move-object/from16 v3, v60

    goto/16 :goto_6
.end method

.method protected getNearestNodeUpOrDown(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/TraversalContext;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;
    .locals 71

    .prologue
    .line 261
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object/from16 v4, p1

    .local v4, "currentB":Ljavafx/geometry/Bounds;
    move-object/from16 v5, p2

    .local v5, "originB":Ljavafx/geometry/Bounds;
    move-object/from16 v6, p3

    .local v6, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object/from16 v7, p4

    .local v7, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v60, v6

    invoke-interface/range {v60 .. v60}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getAllTargetNodes()Ljava/util/List;

    move-result-object v60

    move-object/from16 v8, v60

    .line 263
    .local v8, "nodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v60, v7

    sget-object v61, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_19

    sget-object v60, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_BOTTOM_SIDE:Ljava/util/function/Function;

    :goto_0
    move-object/from16 v9, v60

    .line 264
    .local v9, "ySideInDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    move-object/from16 v60, v7

    sget-object v61, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_1a

    sget-object v60, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_TOP_SIDE:Ljava/util/function/Function;

    :goto_1
    move-object/from16 v10, v60

    .line 266
    .local v10, "ySideInOpositeDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    new-instance v60, Ljavafx/geometry/BoundingBox;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v5

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v4

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v64

    move-object/from16 v66, v5

    invoke-virtual/range {v66 .. v66}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v66

    move-object/from16 v68, v4

    invoke-virtual/range {v68 .. v68}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v68

    invoke-direct/range {v61 .. v69}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object/from16 v11, v60

    .line 268
    .local v11, "biasedB":Ljavafx/geometry/Bounds;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v4

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v64

    const-wide/high16 v66, 0x4000000000000000L    # 2.0

    div-double v64, v64, v66

    add-double v62, v62, v64

    move-object/from16 v64, v9

    move-object/from16 v65, v4

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v12, v60

    .line 269
    .local v12, "currentMid2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v5

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v5

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v64

    const-wide/high16 v66, 0x4000000000000000L    # 2.0

    div-double v64, v64, v66

    add-double v62, v62, v64

    move-object/from16 v64, v9

    move-object/from16 v65, v4

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v13, v60

    .line 270
    .local v13, "biasedMid2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v9

    move-object/from16 v65, v4

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v14, v60

    .line 271
    .local v14, "currentLeftCorner2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v5

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v9

    move-object/from16 v65, v4

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v15, v60

    .line 272
    .local v15, "biasedLeftCorner2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v62

    move-object/from16 v64, v9

    move-object/from16 v65, v4

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v16, v60

    .line 273
    .local v16, "currentRightCorner2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v5

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v62

    move-object/from16 v64, v9

    move-object/from16 v65, v4

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v17, v60

    .line 275
    .local v17, "biasedRightCorner2D":Ljavafx/geometry/Point2D;
    new-instance v60, Ljavafx/geometry/Point2D;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    move-object/from16 v62, v5

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v9

    move-object/from16 v65, v5

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-direct/range {v61 .. v65}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v18, v60

    .line 277
    .local v18, "originLeftCorner2D":Ljavafx/geometry/Point2D;
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v19, v60

    .line 278
    .local v19, "targetNode":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v20, v60

    .line 279
    .local v20, "nearestNodeCurrentSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v21, v60

    .line 280
    .local v21, "nearestNodeOriginSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v22, v60

    .line 281
    .local v22, "nearestNodeAverage":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v23, v60

    .line 282
    .local v23, "nearestNodeOnOriginX":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v24, v60

    .line 283
    .local v24, "nearestNodeOnCurrentX":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v25, v60

    .line 284
    .local v25, "nearestNodeLeft":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move-object/from16 v26, v60

    .line 286
    .local v26, "nearestNodeAnythingAnywhere":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    const/16 v60, 0x0

    move/from16 v27, v60

    .local v27, "nodeIndex":I
    :goto_2
    move/from16 v60, v27

    move-object/from16 v61, v8

    invoke-interface/range {v61 .. v61}, Ljava/util/List;->size()I

    move-result v61

    move/from16 v0, v60

    move/from16 v1, v61

    if-ge v0, v1, :cond_1e

    .line 287
    move-object/from16 v60, v8

    move/from16 v61, v27

    invoke-interface/range {v60 .. v61}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljavafx/scene/Node;

    move-object/from16 v28, v60

    .line 289
    .local v28, "n":Ljavafx/scene/Node;
    move-object/from16 v60, v28

    move-object/from16 v61, v28

    invoke-virtual/range {v61 .. v61}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v60

    move-object/from16 v29, v60

    .line 294
    .local v29, "targetBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v60, v7

    sget-object v61, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_1b

    move-object/from16 v60, v4

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v60

    move-object/from16 v62, v29

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-lez v60, :cond_18

    .line 297
    :goto_3
    move-object/from16 v60, v19

    move-object/from16 v61, v28

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    .line 298
    move-object/from16 v60, v19

    move-object/from16 v61, v29

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    .line 304
    const-wide/16 v60, 0x0

    move-object/from16 v62, v3

    move-object/from16 v63, v7

    move-object/from16 v64, v11

    move-object/from16 v65, v29

    invoke-direct/range {v62 .. v65}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->outDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v62

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    move-wide/from16 v30, v60

    .line 306
    .local v30, "outdB":D
    move-object/from16 v60, v3

    move-object/from16 v61, v7

    move-object/from16 v62, v11

    move-object/from16 v63, v29

    invoke-direct/range {v60 .. v63}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->isOnAxis(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Z

    move-result v60

    if-eqz v60, :cond_1c

    .line 307
    move-object/from16 v60, v19

    move-wide/from16 v61, v30

    move-object/from16 v63, v3

    move-object/from16 v64, v7

    move-object/from16 v65, v11

    move-object/from16 v66, v29

    invoke-direct/range {v63 .. v66}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->centerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v63

    const-wide/high16 v65, 0x4059000000000000L    # 100.0

    div-double v63, v63, v65

    add-double v61, v61, v63

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    .line 316
    :goto_4
    const-wide/16 v60, 0x0

    move-object/from16 v62, v3

    move-object/from16 v63, v7

    move-object/from16 v64, v4

    move-object/from16 v65, v29

    invoke-direct/range {v62 .. v65}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->outDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v62

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    move-wide/from16 v32, v60

    .line 318
    .local v32, "outdC":D
    move-object/from16 v60, v3

    move-object/from16 v61, v7

    move-object/from16 v62, v4

    move-object/from16 v63, v29

    invoke-direct/range {v60 .. v63}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->isOnAxis(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Z

    move-result v60

    if-eqz v60, :cond_1d

    .line 319
    move-object/from16 v60, v19

    move-wide/from16 v61, v32

    move-object/from16 v63, v3

    move-object/from16 v64, v7

    move-object/from16 v65, v4

    move-object/from16 v66, v29

    invoke-direct/range {v63 .. v66}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->centerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v63

    const-wide/high16 v65, 0x4059000000000000L    # 100.0

    div-double v63, v63, v65

    add-double v61, v61, v63

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    .line 325
    :goto_5
    move-object/from16 v60, v19

    move-object/from16 v61, v14

    move-object/from16 v62, v29

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v10

    move-object/from16 v65, v29

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-virtual/range {v61 .. v65}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    .line 326
    move-object/from16 v60, v19

    move-object/from16 v61, v16

    move-object/from16 v62, v29

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v62

    move-object/from16 v64, v10

    move-object/from16 v65, v29

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-virtual/range {v61 .. v65}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->rightCornerDistance:D

    .line 328
    move-object/from16 v60, v12

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v63

    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    div-double v63, v63, v65

    add-double v61, v61, v63

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v34, v60

    .line 329
    .local v34, "midDistance":D
    move-object/from16 v60, v14

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v63

    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    div-double v63, v63, v65

    add-double v61, v61, v63

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v36, v60

    .line 330
    .local v36, "currentLeftToTargetMidDistance":D
    move-object/from16 v60, v14

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v61

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v38, v60

    .line 331
    .local v38, "currentLeftToTargetRightDistance":D
    move-object/from16 v60, v16

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v61

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v40, v60

    .line 332
    .local v40, "currentRightToTargetLeftDistance":D
    move-object/from16 v60, v16

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v63

    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    div-double v63, v63, v65

    add-double v61, v61, v63

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v42, v60

    .line 333
    .local v42, "currentRightToTargetMidDistance":D
    move-object/from16 v60, v16

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v61

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v44, v60

    .line 334
    .local v44, "currentRightToTargetRightDistance":D
    move-object/from16 v60, v12

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v61

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v46, v60

    .line 335
    .local v46, "currentMidToTargetLeftDistance":D
    move-object/from16 v60, v12

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v63

    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    div-double v63, v63, v65

    add-double v61, v61, v63

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v48, v60

    .line 336
    .local v48, "currentMidToTargetMidDistance":D
    move-object/from16 v60, v12

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v61

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v50, v60

    .line 338
    .local v50, "currentMidToTargetRightDistance":D
    move-object/from16 v60, v15

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v63

    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    div-double v63, v63, v65

    add-double v61, v61, v63

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v52, v60

    .line 339
    .local v52, "biasLeftToTargetMidDistance":D
    move-object/from16 v60, v15

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v61

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v54, v60

    .line 340
    .local v54, "biasLeftToTargetRightDistance":D
    move-object/from16 v60, v17

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v61

    move-object/from16 v63, v29

    invoke-virtual/range {v63 .. v63}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v63

    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    div-double v63, v63, v65

    add-double v61, v61, v63

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v56, v60

    .line 341
    .local v56, "biasRightToTargetMidDistance":D
    move-object/from16 v60, v13

    move-object/from16 v61, v29

    invoke-virtual/range {v61 .. v61}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v61

    move-object/from16 v63, v10

    move-object/from16 v64, v29

    invoke-interface/range {v63 .. v64}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Double;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v63

    invoke-virtual/range {v60 .. v64}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v60

    move-wide/from16 v58, v60

    .line 343
    .local v58, "biasMidToTargetRightDistance":D
    move-object/from16 v60, v19

    move-object/from16 v61, v19

    move-object/from16 v0, v61

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    move-wide/from16 v61, v0

    move-wide/from16 v63, v52

    add-double v61, v61, v63

    move-wide/from16 v63, v54

    add-double v61, v61, v63

    move-wide/from16 v63, v40

    add-double v61, v61, v63

    move-object/from16 v63, v19

    move-object/from16 v0, v63

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->rightCornerDistance:D

    move-wide/from16 v63, v0

    add-double v61, v61, v63

    move-wide/from16 v63, v56

    add-double v61, v61, v63

    move-wide/from16 v63, v34

    add-double v61, v61, v63

    const-wide/high16 v63, 0x401c000000000000L    # 7.0

    div-double v61, v61, v63

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    .line 347
    move-object/from16 v60, v19

    const/16 v61, 0x9

    move/from16 v0, v61

    new-array v0, v0, [D

    move-object/from16 v61, v0

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x0

    move-object/from16 v64, v19

    move-object/from16 v0, v64

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    move-wide/from16 v64, v0

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x1

    move-wide/from16 v64, v52

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x2

    move-wide/from16 v64, v54

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x3

    move-wide/from16 v64, v40

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x4

    move-wide/from16 v64, v56

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x5

    move-object/from16 v64, v19

    move-object/from16 v0, v64

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->rightCornerDistance:D

    move-wide/from16 v64, v0

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x6

    move-wide/from16 v64, v46

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x7

    move-wide/from16 v64, v34

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x8

    move-wide/from16 v64, v58

    aput-wide v64, v62, v63

    .line 348
    invoke-static/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->findMin([D)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    .line 352
    move-object/from16 v60, v19

    const/16 v61, 0x9

    move/from16 v0, v61

    new-array v0, v0, [D

    move-object/from16 v61, v0

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x0

    move-object/from16 v64, v19

    move-object/from16 v0, v64

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    move-wide/from16 v64, v0

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x1

    move-wide/from16 v64, v36

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x2

    move-wide/from16 v64, v38

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x3

    move-wide/from16 v64, v40

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x4

    move-wide/from16 v64, v42

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x5

    move-wide/from16 v64, v44

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x6

    move-wide/from16 v64, v46

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x7

    move-wide/from16 v64, v48

    aput-wide v64, v62, v63

    move-object/from16 v70, v61

    move-object/from16 v61, v70

    move-object/from16 v62, v70

    const/16 v63, 0x8

    move-wide/from16 v64, v50

    aput-wide v64, v62, v63

    .line 353
    invoke-static/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->findMin([D)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->shortestDistance:D

    .line 360
    move-wide/from16 v60, v30

    const-wide/16 v62, 0x0

    cmpl-double v60, v60, v62

    if-ltz v60, :cond_2

    .line 361
    move-object/from16 v60, v21

    if-eqz v60, :cond_0

    move-object/from16 v60, v19

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v21

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_2

    .line 363
    :cond_0
    move-object/from16 v60, v21

    if-nez v60, :cond_1

    .line 364
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v21, v60

    .line 366
    :cond_1
    move-object/from16 v60, v21

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 372
    :cond_2
    move-wide/from16 v60, v32

    const-wide/16 v62, 0x0

    cmpl-double v60, v60, v62

    if-ltz v60, :cond_5

    .line 373
    move-object/from16 v60, v20

    if-eqz v60, :cond_3

    move-object/from16 v60, v19

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v20

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_5

    .line 375
    :cond_3
    move-object/from16 v60, v20

    if-nez v60, :cond_4

    .line 376
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v20, v60

    .line 378
    :cond_4
    move-object/from16 v60, v20

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 384
    :cond_5
    move-object/from16 v60, v5

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v60

    move-object/from16 v62, v29

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-lez v60, :cond_8

    move-object/from16 v60, v29

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v60

    move-object/from16 v62, v5

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-lez v60, :cond_8

    .line 385
    move-object/from16 v60, v23

    if-eqz v60, :cond_6

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v19

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-lez v60, :cond_8

    .line 387
    :cond_6
    move-object/from16 v60, v23

    if-nez v60, :cond_7

    .line 388
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v23, v60

    .line 390
    :cond_7
    move-object/from16 v60, v23

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 396
    :cond_8
    move-object/from16 v60, v4

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v60

    move-object/from16 v62, v29

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-lez v60, :cond_b

    move-object/from16 v60, v29

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v60

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-lez v60, :cond_b

    .line 397
    move-object/from16 v60, v24

    if-eqz v60, :cond_9

    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v19

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-lez v60, :cond_b

    .line 399
    :cond_9
    move-object/from16 v60, v24

    if-nez v60, :cond_a

    .line 400
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v24, v60

    .line 402
    :cond_a
    move-object/from16 v60, v24

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 408
    :cond_b
    move-object/from16 v60, v25

    if-eqz v60, :cond_c

    move-object/from16 v60, v25

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v19

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-lez v60, :cond_10

    .line 409
    :cond_c
    move-object/from16 v60, v5

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v60

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-ltz v60, :cond_d

    move-object/from16 v60, v29

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v60

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-gez v60, :cond_e

    :cond_d
    move-object/from16 v60, v5

    .line 410
    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v60

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpg-double v60, v60, v62

    if-gtz v60, :cond_10

    move-object/from16 v60, v29

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v60

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpg-double v60, v60, v62

    if-gtz v60, :cond_10

    .line 412
    :cond_e
    move-object/from16 v60, v25

    if-nez v60, :cond_f

    .line 413
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v25, v60

    .line 415
    :cond_f
    move-object/from16 v60, v25

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 419
    :cond_10
    move-object/from16 v60, v22

    if-eqz v60, :cond_11

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v19

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-lez v60, :cond_15

    .line 420
    :cond_11
    move-object/from16 v60, v5

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v60

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-ltz v60, :cond_12

    move-object/from16 v60, v29

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v60

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-gez v60, :cond_13

    :cond_12
    move-object/from16 v60, v5

    .line 421
    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v60

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpg-double v60, v60, v62

    if-gtz v60, :cond_15

    move-object/from16 v60, v29

    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v60

    move-object/from16 v62, v4

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    cmpg-double v60, v60, v62

    if-gtz v60, :cond_15

    .line 423
    :cond_13
    move-object/from16 v60, v22

    if-nez v60, :cond_14

    .line 424
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v22, v60

    .line 426
    :cond_14
    move-object/from16 v60, v22

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 430
    :cond_15
    move-object/from16 v60, v26

    if-eqz v60, :cond_16

    move-object/from16 v60, v26

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->shortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v19

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->shortestDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-lez v60, :cond_18

    .line 432
    :cond_16
    move-object/from16 v60, v26

    if-nez v60, :cond_17

    .line 433
    new-instance v60, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;

    move-object/from16 v70, v60

    move-object/from16 v60, v70

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;-><init>()V

    move-object/from16 v26, v60

    .line 435
    :cond_17
    move-object/from16 v60, v26

    move-object/from16 v61, v19

    invoke-virtual/range {v60 .. v61}, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->copy(Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;)V

    .line 286
    .end local v30    # "outdB":D
    .end local v32    # "outdC":D
    .end local v34    # "midDistance":D
    .end local v36    # "currentLeftToTargetMidDistance":D
    .end local v38    # "currentLeftToTargetRightDistance":D
    .end local v40    # "currentRightToTargetLeftDistance":D
    .end local v42    # "currentRightToTargetMidDistance":D
    .end local v44    # "currentRightToTargetRightDistance":D
    .end local v46    # "currentMidToTargetLeftDistance":D
    .end local v48    # "currentMidToTargetMidDistance":D
    .end local v50    # "currentMidToTargetRightDistance":D
    .end local v52    # "biasLeftToTargetMidDistance":D
    .end local v54    # "biasLeftToTargetRightDistance":D
    .end local v56    # "biasRightToTargetMidDistance":D
    .end local v58    # "biasMidToTargetRightDistance":D
    :cond_18
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 263
    .end local v9    # "ySideInDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    .end local v10    # "ySideInOpositeDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    .end local v11    # "biasedB":Ljavafx/geometry/Bounds;
    .end local v12    # "currentMid2D":Ljavafx/geometry/Point2D;
    .end local v13    # "biasedMid2D":Ljavafx/geometry/Point2D;
    .end local v14    # "currentLeftCorner2D":Ljavafx/geometry/Point2D;
    .end local v15    # "biasedLeftCorner2D":Ljavafx/geometry/Point2D;
    .end local v16    # "currentRightCorner2D":Ljavafx/geometry/Point2D;
    .end local v17    # "biasedRightCorner2D":Ljavafx/geometry/Point2D;
    .end local v18    # "originLeftCorner2D":Ljavafx/geometry/Point2D;
    .end local v19    # "targetNode":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v20    # "nearestNodeCurrentSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v21    # "nearestNodeOriginSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v22    # "nearestNodeAverage":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v23    # "nearestNodeOnOriginX":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v24    # "nearestNodeOnCurrentX":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v25    # "nearestNodeLeft":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v26    # "nearestNodeAnythingAnywhere":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .end local v27    # "nodeIndex":I
    .end local v28    # "n":Ljavafx/scene/Node;
    .end local v29    # "targetBounds":Ljavafx/geometry/Bounds;
    :cond_19
    sget-object v60, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_TOP_SIDE:Ljava/util/function/Function;

    goto/16 :goto_0

    .line 264
    .restart local v9    # "ySideInDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    :cond_1a
    sget-object v60, Lcom/sun/javafx/scene/traversal/Hueristic2D;->BOUNDS_BOTTOM_SIDE:Ljava/util/function/Function;

    goto/16 :goto_1

    .line 294
    .restart local v10    # "ySideInOpositeDirection":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljavafx/geometry/Bounds;Ljava/lang/Double;>;"
    .restart local v11    # "biasedB":Ljavafx/geometry/Bounds;
    .restart local v12    # "currentMid2D":Ljavafx/geometry/Point2D;
    .restart local v13    # "biasedMid2D":Ljavafx/geometry/Point2D;
    .restart local v14    # "currentLeftCorner2D":Ljavafx/geometry/Point2D;
    .restart local v15    # "biasedLeftCorner2D":Ljavafx/geometry/Point2D;
    .restart local v16    # "currentRightCorner2D":Ljavafx/geometry/Point2D;
    .restart local v17    # "biasedRightCorner2D":Ljavafx/geometry/Point2D;
    .restart local v18    # "originLeftCorner2D":Ljavafx/geometry/Point2D;
    .restart local v19    # "targetNode":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v20    # "nearestNodeCurrentSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v21    # "nearestNodeOriginSimple2D":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v22    # "nearestNodeAverage":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v23    # "nearestNodeOnOriginX":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v24    # "nearestNodeOnCurrentX":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v25    # "nearestNodeLeft":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v26    # "nearestNodeAnythingAnywhere":Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;
    .restart local v27    # "nodeIndex":I
    .restart local v28    # "n":Ljavafx/scene/Node;
    .restart local v29    # "targetBounds":Ljavafx/geometry/Bounds;
    :cond_1b
    move-object/from16 v60, v4

    .line 295
    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v60

    move-object/from16 v62, v29

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v62

    cmpg-double v60, v60, v62

    if-gez v60, :cond_18

    goto/16 :goto_3

    .line 309
    .restart local v30    # "outdB":D
    :cond_1c
    move-object/from16 v60, v3

    move-object/from16 v61, v7

    move-object/from16 v62, v11

    move-object/from16 v63, v29

    invoke-direct/range {v60 .. v63}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cornerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v60

    move-wide/from16 v32, v60

    .line 310
    .local v32, "cosd":D
    move-object/from16 v60, v19

    const-wide v61, 0x40f86a0000000000L    # 100000.0

    move-wide/from16 v63, v30

    move-wide/from16 v65, v30

    mul-double v63, v63, v65

    add-double v61, v61, v63

    const-wide/high16 v63, 0x4022000000000000L    # 9.0

    move-wide/from16 v65, v32

    mul-double v63, v63, v65

    move-wide/from16 v65, v32

    mul-double v63, v63, v65

    add-double v61, v61, v63

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biased2DMetric:D

    goto/16 :goto_4

    .line 321
    .local v32, "outdC":D
    :cond_1d
    move-object/from16 v60, v3

    move-object/from16 v61, v7

    move-object/from16 v62, v4

    move-object/from16 v63, v29

    invoke-direct/range {v60 .. v63}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cornerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v60

    move-wide/from16 v34, v60

    .line 322
    .local v34, "cosd":D
    move-object/from16 v60, v19

    const-wide v61, 0x40f86a0000000000L    # 100000.0

    move-wide/from16 v63, v32

    move-wide/from16 v65, v32

    mul-double v63, v63, v65

    add-double v61, v61, v63

    const-wide/high16 v63, 0x4022000000000000L    # 9.0

    move-wide/from16 v65, v34

    mul-double v63, v63, v65

    move-wide/from16 v65, v34

    mul-double v63, v63, v65

    add-double v61, v61, v63

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    goto/16 :goto_5

    .line 439
    .end local v28    # "n":Ljavafx/scene/Node;
    .end local v29    # "targetBounds":Ljavafx/geometry/Bounds;
    .end local v30    # "outdB":D
    .end local v32    # "outdC":D
    .end local v34    # "cosd":D
    :cond_1e
    move-object/from16 v60, v8

    invoke-interface/range {v60 .. v60}, Ljava/util/List;->clear()V

    .line 441
    move-object/from16 v60, v23

    if-eqz v60, :cond_1f

    .line 442
    move-object/from16 v60, v23

    move-object/from16 v61, v18

    move-object/from16 v62, v23

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v10

    move-object/from16 v65, v23

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v65, v0

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-virtual/range {v61 .. v65}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originLeftCornerDistance:D

    .line 445
    :cond_1f
    move-object/from16 v60, v24

    if-eqz v60, :cond_20

    .line 446
    move-object/from16 v60, v24

    move-object/from16 v61, v18

    move-object/from16 v62, v24

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v10

    move-object/from16 v65, v24

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v65, v0

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-virtual/range {v61 .. v65}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originLeftCornerDistance:D

    .line 449
    :cond_20
    move-object/from16 v60, v22

    if-eqz v60, :cond_21

    .line 450
    move-object/from16 v60, v22

    move-object/from16 v61, v18

    move-object/from16 v62, v22

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v10

    move-object/from16 v65, v22

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v65, v0

    invoke-interface/range {v64 .. v65}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Double;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    invoke-virtual/range {v61 .. v65}, Ljavafx/geometry/Point2D;->distance(DD)D

    move-result-wide v61

    move-wide/from16 v0, v61

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originLeftCornerDistance:D

    .line 453
    :cond_21
    move-object/from16 v60, v23

    if-eqz v60, :cond_2a

    .line 457
    move-object/from16 v60, v24

    if-eqz v60, :cond_26

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v24

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_26

    move-object/from16 v60, v22

    if-eqz v60, :cond_22

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v22

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_25

    :cond_22
    move-object/from16 v60, v21

    if-eqz v60, :cond_23

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v21

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_25

    :cond_23
    move-object/from16 v60, v25

    if-eqz v60, :cond_24

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v25

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-eq v0, v1, :cond_25

    :cond_24
    move-object/from16 v60, v26

    if-eqz v60, :cond_26

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v26

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_26

    .line 462
    :cond_25
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    .line 546
    .end local v3    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    :goto_6
    return-object v3

    .line 464
    .restart local v3    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    :cond_26
    move-object/from16 v60, v22

    if-eqz v60, :cond_27

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v22

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_27

    .line 465
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto :goto_6

    .line 468
    :cond_27
    move-object/from16 v60, v24

    if-eqz v60, :cond_2d

    .line 469
    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v23

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->leftCornerDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_28

    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originLeftCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v23

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->originLeftCornerDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_28

    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v60, v0

    .line 471
    invoke-virtual/range {v60 .. v60}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v60

    move-object/from16 v62, v14

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v62

    sub-double v60, v60, v62

    move-object/from16 v62, v23

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v62

    move-object/from16 v64, v14

    invoke-virtual/range {v64 .. v64}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v64

    sub-double v62, v62, v64

    cmpg-double v60, v60, v62

    if-gez v60, :cond_28

    .line 473
    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 474
    :cond_28
    move-object/from16 v60, v22

    if-eqz v60, :cond_29

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v22

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->averageDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_2d

    .line 475
    :cond_29
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 479
    :cond_2a
    move-object/from16 v60, v24

    if-nez v60, :cond_2c

    move-object/from16 v60, v20

    if-eqz v60, :cond_2c

    .line 480
    move-object/from16 v60, v22

    if-eqz v60, :cond_2b

    move-object/from16 v60, v25

    if-eqz v60, :cond_2b

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v25

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_2b

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v26

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_2b

    .line 481
    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 483
    :cond_2b
    move-object/from16 v60, v20

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 484
    :cond_2c
    move-object/from16 v60, v22

    if-eqz v60, :cond_2d

    move-object/from16 v60, v25

    if-eqz v60, :cond_2d

    move-object/from16 v60, v26

    if-eqz v60, :cond_2d

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v25

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-nez v60, :cond_2d

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v26

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v62, v0

    cmpl-double v60, v60, v62

    if-nez v60, :cond_2d

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v60, v60, v62

    if-gez v60, :cond_2d

    .line 489
    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 496
    :cond_2d
    move-object/from16 v60, v22

    if-eqz v60, :cond_32

    move-object/from16 v60, v23

    if-eqz v60, :cond_2e

    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v23

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->biasShortestDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_32

    .line 500
    :cond_2e
    move-object/from16 v60, v23

    if-eqz v60, :cond_2f

    move-object/from16 v60, v10

    move-object/from16 v61, v23

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v61, v0

    invoke-interface/range {v60 .. v61}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Double;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v60

    move-object/from16 v62, v10

    move-object/from16 v63, v22

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v63, v0

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-ltz v60, :cond_2f

    .line 501
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 503
    :cond_2f
    move-object/from16 v60, v21

    if-eqz v60, :cond_31

    .line 504
    move-object/from16 v60, v21

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v22

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->current2DMetric:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gtz v60, :cond_30

    .line 505
    move-object/from16 v60, v21

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 507
    :cond_30
    move-object/from16 v60, v10

    move-object/from16 v61, v21

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v61, v0

    invoke-interface/range {v60 .. v61}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Double;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v60

    move-object/from16 v62, v10

    move-object/from16 v63, v22

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->bounds:Ljavafx/geometry/Bounds;

    move-object/from16 v63, v0

    invoke-interface/range {v62 .. v63}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Double;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v62

    cmpl-double v60, v60, v62

    if-ltz v60, :cond_31

    .line 508
    move-object/from16 v60, v21

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 511
    :cond_31
    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 518
    :cond_32
    move-object/from16 v60, v20

    if-eqz v60, :cond_33

    move-object/from16 v60, v24

    if-eqz v60, :cond_33

    move-object/from16 v60, v22

    if-eqz v60, :cond_33

    move-object/from16 v60, v25

    if-eqz v60, :cond_33

    move-object/from16 v60, v26

    if-eqz v60, :cond_33

    move-object/from16 v60, v20

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v24

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_33

    move-object/from16 v60, v20

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v22

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_33

    move-object/from16 v60, v20

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v25

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_33

    move-object/from16 v60, v20

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v61, v26

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v61, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    if-ne v0, v1, :cond_33

    .line 523
    move-object/from16 v60, v20

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 526
    :cond_33
    move-object/from16 v60, v23

    if-eqz v60, :cond_35

    move-object/from16 v60, v24

    if-eqz v60, :cond_34

    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->rightCornerDistance:D

    move-wide/from16 v60, v0

    move-object/from16 v62, v24

    move-object/from16 v0, v62

    iget-wide v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->rightCornerDistance:D

    move-wide/from16 v62, v0

    cmpg-double v60, v60, v62

    if-gez v60, :cond_35

    .line 527
    :cond_34
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 533
    :cond_35
    move-object/from16 v60, v23

    if-eqz v60, :cond_36

    .line 534
    move-object/from16 v60, v23

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 535
    :cond_36
    move-object/from16 v60, v21

    if-eqz v60, :cond_37

    .line 536
    move-object/from16 v60, v21

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 537
    :cond_37
    move-object/from16 v60, v24

    if-eqz v60, :cond_38

    .line 538
    move-object/from16 v60, v24

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 539
    :cond_38
    move-object/from16 v60, v22

    if-eqz v60, :cond_39

    .line 540
    move-object/from16 v60, v22

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 541
    :cond_39
    move-object/from16 v60, v25

    if-eqz v60, :cond_3a

    .line 542
    move-object/from16 v60, v25

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 543
    :cond_3a
    move-object/from16 v60, v26

    if-eqz v60, :cond_3b

    .line 544
    move-object/from16 v60, v26

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$TargetNode;->node:Ljavafx/scene/Node;

    move-object/from16 v60, v0

    move-object/from16 v3, v60

    goto/16 :goto_6

    .line 546
    :cond_3b
    const/16 v60, 0x0

    move-object/from16 v3, v60

    goto/16 :goto_6
.end method

.method public select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 12

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, p3

    .local v3, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    const/4 v7, 0x0

    move-object v4, v7

    .line 48
    .local v4, "newNode":Ljavafx/scene/Node;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheTraversal(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 50
    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/traversal/Direction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->NEXT_IN_LINE:Lcom/sun/javafx/scene/traversal/Direction;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/traversal/Direction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 51
    :cond_0
    move-object v7, v1

    move-object v8, v3

    invoke-interface {v8}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getRoot()Ljavafx/scene/Parent;

    move-result-object v8

    move-object v9, v2

    sget-object v10, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_0
    invoke-static {v7, v8, v9}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findNextFocusablePeer(Ljavafx/scene/Node;Ljavafx/scene/Parent;Z)Ljavafx/scene/Node;

    move-result-object v7

    move-object v4, v7

    .line 94
    :cond_1
    :goto_1
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 95
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheLastTraversalNode:Ljavafx/scene/Node;

    .line 96
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/traversal/Hueristic2D;->reverseDirection:Z

    if-nez v7, :cond_2

    .line 97
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 100
    :cond_2
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    return-object v0

    .line 51
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 53
    :cond_4
    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/traversal/Direction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 54
    move-object v7, v1

    move-object v8, v3

    invoke-interface {v8}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getRoot()Ljavafx/scene/Parent;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findPreviousFocusablePeer(Ljavafx/scene/Node;Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v4, v7

    goto :goto_1

    .line 56
    :cond_5
    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/traversal/Direction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/traversal/Direction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/traversal/Direction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/traversal/Direction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 60
    :cond_6
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/traversal/Hueristic2D;->reverseDirection:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 61
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    invoke-virtual {v7}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v7

    if-nez v7, :cond_8

    .line 62
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->clear()V

    .line 69
    :cond_7
    :goto_2
    move-object v7, v4

    if-nez v7, :cond_1

    .line 70
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v5, v7

    .line 71
    .local v5, "currentB":Ljavafx/geometry/Bounds;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalNode:Ljavafx/scene/Node;

    if-eqz v7, :cond_1

    .line 72
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalNode:Ljavafx/scene/Node;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/traversal/Hueristic2D;->cacheStartTraversalNode:Ljavafx/scene/Node;

    invoke-virtual {v8}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v6, v7

    .line 73
    .local v6, "cachedB":Ljavafx/geometry/Bounds;
    sget-object v7, Lcom/sun/javafx/scene/traversal/Hueristic2D$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    .line 76
    :pswitch_0
    move-object v7, v0

    move-object v8, v5

    move-object v9, v6

    move-object v10, v3

    move-object v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->getNearestNodeUpOrDown(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/TraversalContext;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v4, v7

    .line 77
    goto/16 :goto_1

    .line 65
    .end local v5    # "currentB":Ljavafx/geometry/Bounds;
    .end local v6    # "cachedB":Ljavafx/geometry/Bounds;
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/traversal/Hueristic2D;->traversalNodeStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v4, v7

    goto :goto_2

    .line 80
    .restart local v5    # "currentB":Ljavafx/geometry/Bounds;
    .restart local v6    # "cachedB":Ljavafx/geometry/Bounds;
    :pswitch_1
    move-object v7, v0

    move-object v8, v5

    move-object v9, v6

    move-object v10, v3

    move-object v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->getNearestNodeLeftOrRight(Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/TraversalContext;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;

    move-result-object v7

    move-object v4, v7

    .line 81
    goto/16 :goto_1

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public selectFirst(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->getFirstTargetNode(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    return-object v0
.end method

.method public selectLast(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->getLastTargetNode(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/Hueristic2D;
    return-object v0
.end method
