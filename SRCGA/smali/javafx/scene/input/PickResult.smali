.class public Ljavafx/scene/input/PickResult;
.super Ljava/lang/Object;
.source "PickResult.java"


# static fields
.field public static final FACE_UNDEFINED:I = -0x1


# instance fields
.field private distance:D

.field private face:I

.field private node:Ljavafx/scene/Node;

.field private normal:Ljavafx/geometry/Point3D;

.field private point:Ljavafx/geometry/Point3D;

.field private texCoord:Ljavafx/geometry/Point2D;


# direct methods
.method public constructor <init>(Ljavafx/event/EventTarget;DD)V
    .locals 18
    .param p1    # Ljavafx/event/EventTarget;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "target"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "sceneX"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "sceneY"
        .end annotation
    .end param

    .prologue
    .line 120
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/PickResult;
    move-object/from16 v1, p1

    .local v1, "target":Ljavafx/event/EventTarget;
    move-wide/from16 v2, p2

    .local v2, "sceneX":D
    move-wide/from16 v4, p4

    .local v4, "sceneY":D
    move-object v6, v0

    move-object v7, v1

    instance-of v7, v7, Ljavafx/scene/Node;

    if-eqz v7, :cond_0

    move-object v7, v1

    check-cast v7, Ljavafx/scene/Node;

    :goto_0
    move-object v8, v1

    instance-of v8, v8, Ljavafx/scene/Node;

    if-eqz v8, :cond_1

    move-object v8, v1

    check-cast v8, Ljavafx/scene/Node;

    move-wide v9, v2

    move-wide v11, v4

    const-wide/16 v13, 0x0

    .line 121
    invoke-virtual/range {v8 .. v14}, Ljavafx/scene/Node;->sceneToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v8

    :goto_1
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 120
    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/scene/Node;Ljavafx/geometry/Point3D;D)V

    .line 123
    return-void

    .line 120
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 121
    :cond_1
    new-instance v8, Ljavafx/geometry/Point3D;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-wide v10, v2

    move-wide v12, v4

    const-wide/16 v14, 0x0

    invoke-direct/range {v9 .. v15}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    goto :goto_1
.end method

.method public constructor <init>(Ljavafx/scene/Node;Ljavafx/geometry/Point3D;D)V
    .locals 9
    .param p1    # Ljavafx/scene/Node;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "node"
        .end annotation
    .end param
    .param p2    # Ljavafx/geometry/Point3D;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "point"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "distance"
        .end annotation
    .end param

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/PickResult;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-wide v3, p3

    .local v3, "distance":D
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v5, v0

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v6, v5, Ljavafx/scene/input/PickResult;->distance:D

    .line 49
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Ljavafx/scene/input/PickResult;->face:I

    .line 101
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/input/PickResult;->node:Ljavafx/scene/Node;

    .line 102
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/input/PickResult;->point:Ljavafx/geometry/Point3D;

    .line 103
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Ljavafx/scene/input/PickResult;->distance:D

    .line 104
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Ljavafx/scene/input/PickResult;->face:I

    .line 105
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/input/PickResult;->normal:Ljavafx/geometry/Point3D;

    .line 106
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/input/PickResult;->texCoord:Ljavafx/geometry/Point2D;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;Ljavafx/geometry/Point3D;DILjavafx/geometry/Point2D;)V
    .locals 11
    .param p1    # Ljavafx/scene/Node;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "node"
        .end annotation
    .end param
    .param p2    # Ljavafx/geometry/Point3D;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "point"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "distance"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "face"
        .end annotation
    .end param
    .param p6    # Ljavafx/geometry/Point2D;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "texCoord"
        .end annotation
    .end param

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/PickResult;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "point":Ljavafx/geometry/Point3D;
    move-wide v3, p3

    .local v3, "distance":D
    move/from16 v5, p5

    .local v5, "face":I
    move-object/from16 v6, p6

    .local v6, "texCoord":Ljavafx/geometry/Point2D;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v7, v0

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v8, v7, Ljavafx/scene/input/PickResult;->distance:D

    .line 49
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Ljavafx/scene/input/PickResult;->face:I

    .line 62
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Ljavafx/scene/input/PickResult;->node:Ljavafx/scene/Node;

    .line 63
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Ljavafx/scene/input/PickResult;->point:Ljavafx/geometry/Point3D;

    .line 64
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Ljavafx/scene/input/PickResult;->distance:D

    .line 65
    move-object v7, v0

    move v8, v5

    iput v8, v7, Ljavafx/scene/input/PickResult;->face:I

    .line 66
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/scene/input/PickResult;->normal:Ljavafx/geometry/Point3D;

    .line 67
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Ljavafx/scene/input/PickResult;->texCoord:Ljavafx/geometry/Point2D;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;Ljavafx/geometry/Point3D;DILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)V
    .locals 13
    .param p1    # Ljavafx/scene/Node;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "node"
        .end annotation
    .end param
    .param p2    # Ljavafx/geometry/Point3D;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "point"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "distance"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "face"
        .end annotation
    .end param
    .param p6    # Ljavafx/geometry/Point3D;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "normal"
        .end annotation
    .end param
    .param p7    # Ljavafx/geometry/Point2D;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "texCoord"
        .end annotation
    .end param

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/PickResult;
    move-object v2, p1

    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, p2

    .local v3, "point":Ljavafx/geometry/Point3D;
    move-wide/from16 v4, p3

    .local v4, "distance":D
    move/from16 v6, p5

    .local v6, "face":I
    move-object/from16 v7, p6

    .local v7, "normal":Ljavafx/geometry/Point3D;
    move-object/from16 v8, p7

    .local v8, "texCoord":Ljavafx/geometry/Point2D;
    move-object v9, v1

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v9, v1

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v10, v9, Ljavafx/scene/input/PickResult;->distance:D

    .line 49
    move-object v9, v1

    const/4 v10, -0x1

    iput v10, v9, Ljavafx/scene/input/PickResult;->face:I

    .line 85
    move-object v9, v1

    move-object v10, v2

    iput-object v10, v9, Ljavafx/scene/input/PickResult;->node:Ljavafx/scene/Node;

    .line 86
    move-object v9, v1

    move-object v10, v3

    iput-object v10, v9, Ljavafx/scene/input/PickResult;->point:Ljavafx/geometry/Point3D;

    .line 87
    move-object v9, v1

    move-wide v10, v4

    iput-wide v10, v9, Ljavafx/scene/input/PickResult;->distance:D

    .line 88
    move-object v9, v1

    move v10, v6

    iput v10, v9, Ljavafx/scene/input/PickResult;->face:I

    .line 89
    move-object v9, v1

    move-object v10, v7

    iput-object v10, v9, Ljavafx/scene/input/PickResult;->normal:Ljavafx/geometry/Point3D;

    .line 90
    move-object v9, v1

    move-object v10, v8

    iput-object v10, v9, Ljavafx/scene/input/PickResult;->texCoord:Ljavafx/geometry/Point2D;

    .line 91
    return-void
.end method


# virtual methods
.method public final getIntersectedDistance()D
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/PickResult;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/input/PickResult;->distance:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/PickResult;
    return-wide v0
.end method

.method public final getIntersectedFace()I
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/PickResult;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/input/PickResult;->face:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/PickResult;
    return v0
.end method

.method public final getIntersectedNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/PickResult;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/PickResult;->node:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/PickResult;
    return-object v0
.end method

.method public final getIntersectedNormal()Ljavafx/geometry/Point3D;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/PickResult;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/PickResult;->normal:Ljavafx/geometry/Point3D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/PickResult;
    return-object v0
.end method

.method public final getIntersectedPoint()Ljavafx/geometry/Point3D;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/PickResult;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/PickResult;->point:Ljavafx/geometry/Point3D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/PickResult;
    return-object v0
.end method

.method public final getIntersectedTexCoord()Ljavafx/geometry/Point2D;
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/PickResult;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/PickResult;->texCoord:Ljavafx/geometry/Point2D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/PickResult;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 193
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/input/PickResult;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "PickResult ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 194
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "node = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/PickResult;->getIntersectedNode()Ljavafx/scene/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", point = "

    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/PickResult;->getIntersectedPoint()Ljavafx/geometry/Point3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", distance = "

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/PickResult;->getIntersectedDistance()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/PickResult;->getIntersectedFace()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 198
    move-object v3, v2

    const-string v4, ", face = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/PickResult;->getIntersectedFace()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/PickResult;->getIntersectedNormal()Ljavafx/geometry/Point3D;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 201
    move-object v3, v2

    const-string v4, ", normal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/PickResult;->getIntersectedNormal()Ljavafx/geometry/Point3D;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 203
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/PickResult;->getIntersectedTexCoord()Ljavafx/geometry/Point2D;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 204
    move-object v3, v2

    const-string v4, ", texCoord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/PickResult;->getIntersectedTexCoord()Ljavafx/geometry/Point2D;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/input/PickResult;
    return-object v1
.end method
