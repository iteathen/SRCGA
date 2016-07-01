.class public Ljavafx/scene/shape/TriangleMesh;
.super Ljavafx/scene/shape/Mesh;
.source "TriangleMesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/shape/TriangleMesh$Listener;
    }
.end annotation


# instance fields
.field private cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

.field private final faceSmoothingGroups:Ljavafx/collections/ObservableIntegerArray;

.field private final faceSmoothingGroupsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

.field private final faces:Ljavafx/scene/shape/ObservableFaceArray;

.field private final facesSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

.field private isFaceSmoothingGroupValid:Z

.field private isFacesValid:Z

.field private isNormalsValid:Z

.field private isPointsValid:Z

.field private final isPredefinedShape:Z

.field private isTexCoordsValid:Z

.field private isValidDirty:Z

.field private final normals:Ljavafx/collections/ObservableFloatArray;

.field private final normalsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

.field private peer:Lcom/sun/javafx/sg/prism/NGTriangleMesh;

.field private final points:Ljavafx/collections/ObservableFloatArray;

.field private final pointsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

.field private refCount:I

.field private final texCoords:Ljavafx/collections/ObservableFloatArray;

.field private final texCoordsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

.field private vertexFormat:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/VertexFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/shape/TriangleMesh;-><init>(Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/shape/VertexFormat;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, p1

    .local v1, "vertexFormat":Ljavafx/scene/shape/VertexFormat;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/shape/TriangleMesh;-><init>(Z)V

    .line 160
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/TriangleMesh;->setVertexFormat(Ljavafx/scene/shape/VertexFormat;)V

    .line 161
    return-void
.end method

.method constructor <init>(Z)V
    .locals 8

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move v1, p1

    .local v1, "isPredefinedShape":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/Mesh;-><init>()V

    .line 124
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableFloatArray()Ljavafx/collections/ObservableFloatArray;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    .line 125
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableFloatArray()Ljavafx/collections/ObservableFloatArray;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/shape/TriangleMesh;->normals:Ljavafx/collections/ObservableFloatArray;

    .line 126
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableFloatArray()Ljavafx/collections/ObservableFloatArray;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    .line 127
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/shape/ObservableFaceArrayImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/sun/javafx/scene/shape/ObservableFaceArrayImpl;-><init>()V

    iput-object v3, v2, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    .line 128
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableIntegerArray()Ljavafx/collections/ObservableIntegerArray;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/shape/TriangleMesh;->faceSmoothingGroups:Ljavafx/collections/ObservableIntegerArray;

    .line 130
    move-object v2, v0

    new-instance v3, Ljavafx/scene/shape/TriangleMesh$Listener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    invoke-direct {v4, v5, v6}, Ljavafx/scene/shape/TriangleMesh$Listener;-><init>(Ljavafx/scene/shape/TriangleMesh;Ljavafx/collections/ObservableArray;)V

    iput-object v3, v2, Ljavafx/scene/shape/TriangleMesh;->pointsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    .line 131
    move-object v2, v0

    new-instance v3, Ljavafx/scene/shape/TriangleMesh$Listener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->normals:Ljavafx/collections/ObservableFloatArray;

    invoke-direct {v4, v5, v6}, Ljavafx/scene/shape/TriangleMesh$Listener;-><init>(Ljavafx/scene/shape/TriangleMesh;Ljavafx/collections/ObservableArray;)V

    iput-object v3, v2, Ljavafx/scene/shape/TriangleMesh;->normalsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    .line 132
    move-object v2, v0

    new-instance v3, Ljavafx/scene/shape/TriangleMesh$Listener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    invoke-direct {v4, v5, v6}, Ljavafx/scene/shape/TriangleMesh$Listener;-><init>(Ljavafx/scene/shape/TriangleMesh;Ljavafx/collections/ObservableArray;)V

    iput-object v3, v2, Ljavafx/scene/shape/TriangleMesh;->texCoordsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    .line 133
    move-object v2, v0

    new-instance v3, Ljavafx/scene/shape/TriangleMesh$Listener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    invoke-direct {v4, v5, v6}, Ljavafx/scene/shape/TriangleMesh$Listener;-><init>(Ljavafx/scene/shape/TriangleMesh;Ljavafx/collections/ObservableArray;)V

    iput-object v3, v2, Ljavafx/scene/shape/TriangleMesh;->facesSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    .line 134
    move-object v2, v0

    new-instance v3, Ljavafx/scene/shape/TriangleMesh$Listener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faceSmoothingGroups:Ljavafx/collections/ObservableIntegerArray;

    invoke-direct {v4, v5, v6}, Ljavafx/scene/shape/TriangleMesh$Listener;-><init>(Ljavafx/scene/shape/TriangleMesh;Ljavafx/collections/ObservableArray;)V

    iput-object v3, v2, Ljavafx/scene/shape/TriangleMesh;->faceSmoothingGroupsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    .line 136
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isValidDirty:Z

    .line 138
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Ljavafx/scene/shape/TriangleMesh;->refCount:I

    .line 164
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isPredefinedShape:Z

    .line 165
    move v2, v1

    if-eqz v2, :cond_0

    .line 166
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isPointsValid:Z

    .line 167
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isNormalsValid:Z

    .line 168
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isTexCoordsValid:Z

    .line 169
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isFacesValid:Z

    .line 170
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isFaceSmoothingGroupValid:Z

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isPointsValid:Z

    .line 173
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isNormalsValid:Z

    .line 174
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isTexCoordsValid:Z

    .line 175
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isFacesValid:Z

    .line 176
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/shape/TriangleMesh;->isFaceSmoothingGroupValid:Z

    goto :goto_0
.end method

.method static synthetic access$000(Ljavafx/scene/shape/TriangleMesh;)Ljavafx/scene/shape/TriangleMesh$Listener;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->facesSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/TriangleMesh;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/shape/TriangleMesh;)Ljavafx/scene/shape/TriangleMesh$Listener;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->faceSmoothingGroupsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/TriangleMesh;
    return-object v0
.end method

.method static synthetic access$202(Ljavafx/scene/shape/TriangleMesh;Z)Z
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/TriangleMesh;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/shape/TriangleMesh;->isValidDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/shape/TriangleMesh;
    return v0
.end method

.method private computeCentroid(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 17

    .prologue
    .line 593
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object/from16 v2, p1

    .local v2, "v0":Ljavafx/geometry/Point2D;
    move-object/from16 v3, p2

    .local v3, "v1":Ljavafx/geometry/Point2D;
    move-object/from16 v4, p3

    .local v4, "v2":Ljavafx/geometry/Point2D;
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljavafx/geometry/Point2D;->midpoint(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v5, v7

    .line 595
    .local v5, "center":Ljavafx/geometry/Point2D;
    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/geometry/Point2D;->subtract(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v6, v7

    .line 596
    .local v6, "vec":Ljavafx/geometry/Point2D;
    move-object v7, v2

    new-instance v8, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v12

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double/2addr v12, v14

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/geometry/Point2D;-><init>(DD)V

    invoke-virtual {v7, v8}, Ljavafx/geometry/Point2D;->add(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v1, v7

    .end local v1    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v1
.end method

.method private computeCentroid(DDDDDDDDD)Ljavafx/geometry/Point3D;
    .locals 35

    .prologue
    .line 579
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/shape/TriangleMesh;
    move-wide/from16 v2, p1

    .local v2, "v0x":D
    move-wide/from16 v4, p3

    .local v4, "v0y":D
    move-wide/from16 v6, p5

    .local v6, "v0z":D
    move-wide/from16 v8, p7

    .local v8, "v1x":D
    move-wide/from16 v10, p9

    .local v10, "v1y":D
    move-wide/from16 v12, p11

    .local v12, "v1z":D
    move-wide/from16 v14, p13

    .local v14, "v2x":D
    move-wide/from16 v16, p15

    .local v16, "v2y":D
    move-wide/from16 v18, p17

    .local v18, "v2z":D
    new-instance v20, Ljavafx/geometry/Point3D;

    move-object/from16 v34, v20

    move-object/from16 v20, v34

    move-object/from16 v21, v34

    move-wide/from16 v22, v2

    move-wide/from16 v24, v14

    move-wide/from16 v26, v8

    move-wide/from16 v28, v14

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v26, v2

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    div-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v24, v4

    move-wide/from16 v26, v16

    move-wide/from16 v28, v10

    move-wide/from16 v30, v16

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v28, v4

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    div-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v26, v6

    move-wide/from16 v28, v18

    move-wide/from16 v30, v12

    move-wide/from16 v32, v18

    sub-double v30, v30, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v30, v6

    sub-double v28, v28, v30

    const-wide/high16 v30, 0x4008000000000000L    # 3.0

    div-double v28, v28, v30

    add-double v26, v26, v28

    invoke-direct/range {v21 .. v27}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v1, v20

    .end local v1    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v1
.end method

.method private computeIntersectsFace(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;ILjavafx/scene/shape/CullFace;Ljavafx/scene/Node;ZLcom/sun/javafx/scene/input/PickResultChooser;)Z
    .locals 116

    .prologue
    .line 627
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object/from16 v4, p1

    .local v4, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v5, p2

    .local v5, "origin":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v6, p3

    .local v6, "dir":Lcom/sun/javafx/geom/Vec3d;
    move/from16 v7, p4

    .local v7, "faceIndex":I
    move-object/from16 v8, p5

    .local v8, "cullFace":Ljavafx/scene/shape/CullFace;
    move-object/from16 v9, p6

    .local v9, "candidate":Ljavafx/scene/Node;
    move/from16 v10, p7

    .local v10, "reportFace":Z
    move-object/from16 v11, p8

    .local v11, "result":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object/from16 v96, v3

    invoke-virtual/range {v96 .. v96}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljavafx/scene/shape/VertexFormat;->getVertexIndexSize()I

    move-result v96

    move/from16 v12, v96

    .line 628
    .local v12, "vertexIndexSize":I
    move-object/from16 v96, v3

    invoke-virtual/range {v96 .. v96}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljavafx/scene/shape/VertexFormat;->getPointElementSize()I

    move-result v96

    move/from16 v13, v96

    .line 629
    .local v13, "pointElementSize":I
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move-object/from16 v96, v0

    move/from16 v97, v7

    invoke-interface/range {v96 .. v97}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v96

    move/from16 v97, v13

    mul-int v96, v96, v97

    move/from16 v14, v96

    .line 630
    .local v14, "v0Idx":I
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move-object/from16 v96, v0

    move/from16 v97, v7

    move/from16 v98, v12

    add-int v97, v97, v98

    invoke-interface/range {v96 .. v97}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v96

    move/from16 v97, v13

    mul-int v96, v96, v97

    move/from16 v15, v96

    .line 631
    .local v15, "v1Idx":I
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move-object/from16 v96, v0

    move/from16 v97, v7

    const/16 v98, 0x2

    move/from16 v99, v12

    mul-int v98, v98, v99

    add-int v97, v97, v98

    invoke-interface/range {v96 .. v97}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v96

    move/from16 v97, v13

    mul-int v96, v96, v97

    move/from16 v16, v96

    .line 633
    .local v16, "v2Idx":I
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v96, v0

    move/from16 v97, v14

    invoke-interface/range {v96 .. v97}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v96

    move/from16 v17, v96

    .line 634
    .local v17, "v0x":F
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v96, v0

    move/from16 v97, v14

    const/16 v98, 0x1

    add-int/lit8 v97, v97, 0x1

    invoke-interface/range {v96 .. v97}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v96

    move/from16 v18, v96

    .line 635
    .local v18, "v0y":F
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v96, v0

    move/from16 v97, v14

    const/16 v98, 0x2

    add-int/lit8 v97, v97, 0x2

    invoke-interface/range {v96 .. v97}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v96

    move/from16 v19, v96

    .line 636
    .local v19, "v0z":F
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v96, v0

    move/from16 v97, v15

    invoke-interface/range {v96 .. v97}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v96

    move/from16 v20, v96

    .line 637
    .local v20, "v1x":F
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v96, v0

    move/from16 v97, v15

    const/16 v98, 0x1

    add-int/lit8 v97, v97, 0x1

    invoke-interface/range {v96 .. v97}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v96

    move/from16 v21, v96

    .line 638
    .local v21, "v1y":F
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v96, v0

    move/from16 v97, v15

    const/16 v98, 0x2

    add-int/lit8 v97, v97, 0x2

    invoke-interface/range {v96 .. v97}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v96

    move/from16 v22, v96

    .line 639
    .local v22, "v1z":F
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v96, v0

    move/from16 v97, v16

    invoke-interface/range {v96 .. v97}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v96

    move/from16 v23, v96

    .line 640
    .local v23, "v2x":F
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v96, v0

    move/from16 v97, v16

    const/16 v98, 0x1

    add-int/lit8 v97, v97, 0x1

    invoke-interface/range {v96 .. v97}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v96

    move/from16 v24, v96

    .line 641
    .local v24, "v2y":F
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v96, v0

    move/from16 v97, v16

    const/16 v98, 0x2

    add-int/lit8 v97, v97, 0x2

    invoke-interface/range {v96 .. v97}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v96

    move/from16 v25, v96

    .line 644
    .local v25, "v2z":F
    move/from16 v96, v20

    move/from16 v97, v17

    sub-float v96, v96, v97

    move/from16 v26, v96

    .line 645
    .local v26, "e1x":F
    move/from16 v96, v21

    move/from16 v97, v18

    sub-float v96, v96, v97

    move/from16 v27, v96

    .line 646
    .local v27, "e1y":F
    move/from16 v96, v22

    move/from16 v97, v19

    sub-float v96, v96, v97

    move/from16 v28, v96

    .line 648
    .local v28, "e1z":F
    move/from16 v96, v23

    move/from16 v97, v17

    sub-float v96, v96, v97

    move/from16 v29, v96

    .line 649
    .local v29, "e2x":F
    move/from16 v96, v24

    move/from16 v97, v18

    sub-float v96, v96, v97

    move/from16 v30, v96

    .line 650
    .local v30, "e2y":F
    move/from16 v96, v25

    move/from16 v97, v19

    sub-float v96, v96, v97

    move/from16 v31, v96

    .line 653
    .local v31, "e2z":F
    move-object/from16 v96, v6

    move-object/from16 v0, v96

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v96, v0

    move/from16 v98, v31

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    mul-double v96, v96, v98

    move-object/from16 v98, v6

    move-object/from16 v0, v98

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v98, v0

    move/from16 v100, v30

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    mul-double v98, v98, v100

    sub-double v96, v96, v98

    move-wide/from16 v32, v96

    .line 654
    .local v32, "hx":D
    move-object/from16 v96, v6

    move-object/from16 v0, v96

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v96, v0

    move/from16 v98, v29

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    mul-double v96, v96, v98

    move-object/from16 v98, v6

    move-object/from16 v0, v98

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v98, v0

    move/from16 v100, v31

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    mul-double v98, v98, v100

    sub-double v96, v96, v98

    move-wide/from16 v34, v96

    .line 655
    .local v34, "hy":D
    move-object/from16 v96, v6

    move-object/from16 v0, v96

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v96, v0

    move/from16 v98, v30

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    mul-double v96, v96, v98

    move-object/from16 v98, v6

    move-object/from16 v0, v98

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v98, v0

    move/from16 v100, v29

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    mul-double v98, v98, v100

    sub-double v96, v96, v98

    move-wide/from16 v36, v96

    .line 658
    .local v36, "hz":D
    move/from16 v96, v26

    move/from16 v0, v96

    float-to-double v0, v0

    move-wide/from16 v96, v0

    move-wide/from16 v98, v32

    mul-double v96, v96, v98

    move/from16 v98, v27

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    move-wide/from16 v100, v34

    mul-double v98, v98, v100

    add-double v96, v96, v98

    move/from16 v98, v28

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    move-wide/from16 v100, v36

    mul-double v98, v98, v100

    add-double v96, v96, v98

    move-wide/from16 v38, v96

    .line 659
    .local v38, "a":D
    move-wide/from16 v96, v38

    const-wide/16 v98, 0x0

    cmpl-double v96, v96, v98

    if-nez v96, :cond_0

    .line 660
    const/16 v96, 0x0

    move/from16 v3, v96

    .line 813
    .end local v3    # "this":Ljavafx/scene/shape/TriangleMesh;
    :goto_0
    return v3

    .line 662
    .restart local v3    # "this":Ljavafx/scene/shape/TriangleMesh;
    :cond_0
    const-wide/high16 v96, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v98, v38

    div-double v96, v96, v98

    move-wide/from16 v40, v96

    .line 665
    .local v40, "f":D
    move-object/from16 v96, v5

    move-object/from16 v0, v96

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v96, v0

    move/from16 v98, v17

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    sub-double v96, v96, v98

    move-wide/from16 v42, v96

    .line 666
    .local v42, "sx":D
    move-object/from16 v96, v5

    move-object/from16 v0, v96

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v96, v0

    move/from16 v98, v18

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    sub-double v96, v96, v98

    move-wide/from16 v44, v96

    .line 667
    .local v44, "sy":D
    move-object/from16 v96, v5

    move-object/from16 v0, v96

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v96, v0

    move/from16 v98, v19

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    sub-double v96, v96, v98

    move-wide/from16 v46, v96

    .line 670
    .local v46, "sz":D
    move-wide/from16 v96, v40

    move-wide/from16 v98, v42

    move-wide/from16 v100, v32

    mul-double v98, v98, v100

    move-wide/from16 v100, v44

    move-wide/from16 v102, v34

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-wide/from16 v100, v46

    move-wide/from16 v102, v36

    mul-double v100, v100, v102

    add-double v98, v98, v100

    mul-double v96, v96, v98

    move-wide/from16 v48, v96

    .line 672
    .local v48, "u":D
    move-wide/from16 v96, v48

    const-wide/16 v98, 0x0

    cmpg-double v96, v96, v98

    if-ltz v96, :cond_1

    move-wide/from16 v96, v48

    const-wide/high16 v98, 0x3ff0000000000000L    # 1.0

    cmpl-double v96, v96, v98

    if-lez v96, :cond_2

    .line 673
    :cond_1
    const/16 v96, 0x0

    move/from16 v3, v96

    goto :goto_0

    .line 677
    :cond_2
    move-wide/from16 v96, v44

    move/from16 v98, v28

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    mul-double v96, v96, v98

    move-wide/from16 v98, v46

    move/from16 v100, v27

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    mul-double v98, v98, v100

    sub-double v96, v96, v98

    move-wide/from16 v50, v96

    .line 678
    .local v50, "qx":D
    move-wide/from16 v96, v46

    move/from16 v98, v26

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    mul-double v96, v96, v98

    move-wide/from16 v98, v42

    move/from16 v100, v28

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    mul-double v98, v98, v100

    sub-double v96, v96, v98

    move-wide/from16 v52, v96

    .line 679
    .local v52, "qy":D
    move-wide/from16 v96, v42

    move/from16 v98, v27

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    mul-double v96, v96, v98

    move-wide/from16 v98, v44

    move/from16 v100, v26

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    mul-double v98, v98, v100

    sub-double v96, v96, v98

    move-wide/from16 v54, v96

    .line 682
    .local v54, "qz":D
    move-wide/from16 v96, v40

    move-object/from16 v98, v6

    move-object/from16 v0, v98

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v98, v0

    move-wide/from16 v100, v50

    mul-double v98, v98, v100

    move-object/from16 v100, v6

    move-object/from16 v0, v100

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v100, v0

    move-wide/from16 v102, v52

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move-object/from16 v100, v6

    move-object/from16 v0, v100

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v100, v0

    move-wide/from16 v102, v54

    mul-double v100, v100, v102

    add-double v98, v98, v100

    mul-double v96, v96, v98

    move-wide/from16 v56, v96

    .line 684
    .local v56, "v":D
    move-wide/from16 v96, v56

    const-wide/16 v98, 0x0

    cmpg-double v96, v96, v98

    if-ltz v96, :cond_3

    move-wide/from16 v96, v48

    move-wide/from16 v98, v56

    add-double v96, v96, v98

    const-wide/high16 v98, 0x3ff0000000000000L    # 1.0

    cmpl-double v96, v96, v98

    if-lez v96, :cond_4

    .line 685
    :cond_3
    const/16 v96, 0x0

    move/from16 v3, v96

    goto/16 :goto_0

    .line 689
    :cond_4
    move-wide/from16 v96, v40

    move/from16 v98, v29

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    move-wide/from16 v100, v50

    mul-double v98, v98, v100

    move/from16 v100, v30

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    move-wide/from16 v102, v52

    mul-double v100, v100, v102

    add-double v98, v98, v100

    move/from16 v100, v31

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    move-wide/from16 v102, v54

    mul-double v100, v100, v102

    add-double v98, v98, v100

    mul-double v96, v96, v98

    move-wide/from16 v58, v96

    .line 691
    .local v58, "t":D
    move-wide/from16 v96, v58

    move-object/from16 v98, v4

    invoke-virtual/range {v98 .. v98}, Lcom/sun/javafx/geom/PickRay;->getNearClip()D

    move-result-wide v98

    cmpl-double v96, v96, v98

    if-ltz v96, :cond_e

    move-wide/from16 v96, v58

    move-object/from16 v98, v4

    invoke-virtual/range {v98 .. v98}, Lcom/sun/javafx/geom/PickRay;->getFarClip()D

    move-result-wide v98

    cmpg-double v96, v96, v98

    if-gtz v96, :cond_e

    .line 695
    move-object/from16 v96, v8

    sget-object v97, Ljavafx/scene/shape/CullFace;->NONE:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v96

    move-object/from16 v1, v97

    if-eq v0, v1, :cond_7

    .line 697
    new-instance v96, Ljavafx/geometry/Point3D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move/from16 v98, v27

    move/from16 v99, v31

    mul-float v98, v98, v99

    move/from16 v99, v28

    move/from16 v100, v30

    mul-float v99, v99, v100

    sub-float v98, v98, v99

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    move/from16 v100, v28

    move/from16 v101, v29

    mul-float v100, v100, v101

    move/from16 v101, v26

    move/from16 v102, v31

    mul-float v101, v101, v102

    sub-float v100, v100, v101

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    move/from16 v102, v26

    move/from16 v103, v30

    mul-float v102, v102, v103

    move/from16 v103, v27

    move/from16 v104, v29

    mul-float v103, v103, v104

    sub-float v102, v102, v103

    move/from16 v0, v102

    float-to-double v0, v0

    move-wide/from16 v102, v0

    invoke-direct/range {v97 .. v103}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v60, v96

    .line 702
    .local v60, "normal":Ljavafx/geometry/Point3D;
    move-object/from16 v96, v60

    new-instance v97, Ljavafx/geometry/Point3D;

    move-object/from16 v115, v97

    move-object/from16 v97, v115

    move-object/from16 v98, v115

    move-object/from16 v99, v6

    move-object/from16 v0, v99

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v99, v0

    move-wide/from16 v0, v99

    neg-double v0, v0

    move-wide/from16 v99, v0

    move-object/from16 v101, v6

    move-object/from16 v0, v101

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v101, v0

    move-wide/from16 v0, v101

    neg-double v0, v0

    move-wide/from16 v101, v0

    move-object/from16 v103, v6

    move-object/from16 v0, v103

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v103, v0

    move-wide/from16 v0, v103

    neg-double v0, v0

    move-wide/from16 v103, v0

    invoke-direct/range {v98 .. v104}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    invoke-virtual/range {v96 .. v97}, Ljavafx/geometry/Point3D;->angle(Ljavafx/geometry/Point3D;)D

    move-result-wide v96

    move-wide/from16 v61, v96

    .line 704
    .local v61, "nangle":D
    move-wide/from16 v96, v61

    const-wide v98, 0x4056800000000000L    # 90.0

    cmpl-double v96, v96, v98

    if-gez v96, :cond_5

    move-object/from16 v96, v8

    sget-object v97, Ljavafx/scene/shape/CullFace;->BACK:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v96

    move-object/from16 v1, v97

    if-eq v0, v1, :cond_7

    :cond_5
    move-wide/from16 v96, v61

    const-wide v98, 0x4056800000000000L    # 90.0

    cmpg-double v96, v96, v98

    if-lez v96, :cond_6

    move-object/from16 v96, v8

    sget-object v97, Ljavafx/scene/shape/CullFace;->FRONT:Ljavafx/scene/shape/CullFace;

    move-object/from16 v0, v96

    move-object/from16 v1, v97

    if-eq v0, v1, :cond_7

    .line 707
    :cond_6
    const/16 v96, 0x0

    move/from16 v3, v96

    goto/16 :goto_0

    .line 711
    .end local v60    # "normal":Ljavafx/geometry/Point3D;
    .end local v61    # "nangle":D
    :cond_7
    move-wide/from16 v96, v58

    invoke-static/range {v96 .. v97}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v96

    if-nez v96, :cond_8

    move-wide/from16 v96, v58

    invoke-static/range {v96 .. v97}, Ljava/lang/Double;->isNaN(D)Z

    move-result v96

    if-eqz v96, :cond_9

    .line 713
    :cond_8
    const/16 v96, 0x0

    move/from16 v3, v96

    goto/16 :goto_0

    .line 716
    :cond_9
    move-object/from16 v96, v11

    if-eqz v96, :cond_a

    move-object/from16 v96, v11

    move-wide/from16 v97, v58

    invoke-virtual/range {v96 .. v98}, Lcom/sun/javafx/scene/input/PickResultChooser;->isCloser(D)Z

    move-result v96

    if-nez v96, :cond_b

    .line 720
    :cond_a
    const/16 v96, 0x1

    move/from16 v3, v96

    goto/16 :goto_0

    .line 723
    :cond_b
    move-object/from16 v96, v4

    move-wide/from16 v97, v58

    invoke-static/range {v96 .. v98}, Lcom/sun/javafx/scene/input/PickResultChooser;->computePoint(Lcom/sun/javafx/geom/PickRay;D)Ljavafx/geometry/Point3D;

    move-result-object v96

    move-object/from16 v60, v96

    .line 729
    .local v60, "point":Ljavafx/geometry/Point3D;
    move-object/from16 v96, v3

    move/from16 v97, v17

    move/from16 v0, v97

    float-to-double v0, v0

    move-wide/from16 v97, v0

    move/from16 v99, v18

    move/from16 v0, v99

    float-to-double v0, v0

    move-wide/from16 v99, v0

    move/from16 v101, v19

    move/from16 v0, v101

    float-to-double v0, v0

    move-wide/from16 v101, v0

    move/from16 v103, v20

    move/from16 v0, v103

    float-to-double v0, v0

    move-wide/from16 v103, v0

    move/from16 v105, v21

    move/from16 v0, v105

    float-to-double v0, v0

    move-wide/from16 v105, v0

    move/from16 v107, v22

    move/from16 v0, v107

    float-to-double v0, v0

    move-wide/from16 v107, v0

    move/from16 v109, v23

    move/from16 v0, v109

    float-to-double v0, v0

    move-wide/from16 v109, v0

    move/from16 v111, v24

    move/from16 v0, v111

    float-to-double v0, v0

    move-wide/from16 v111, v0

    move/from16 v113, v25

    move/from16 v0, v113

    float-to-double v0, v0

    move-wide/from16 v113, v0

    invoke-direct/range {v96 .. v114}, Ljavafx/scene/shape/TriangleMesh;->computeCentroid(DDDDDDDDD)Ljavafx/geometry/Point3D;

    move-result-object v96

    move-object/from16 v61, v96

    .line 735
    .local v61, "centroid":Ljavafx/geometry/Point3D;
    new-instance v96, Ljavafx/geometry/Point3D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move/from16 v98, v17

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    move-object/from16 v100, v61

    .line 736
    invoke-virtual/range {v100 .. v100}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v100

    sub-double v98, v98, v100

    move/from16 v100, v18

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    move-object/from16 v102, v61

    .line 737
    invoke-virtual/range {v102 .. v102}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v102

    sub-double v100, v100, v102

    move/from16 v102, v19

    move/from16 v0, v102

    float-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v104, v61

    .line 738
    invoke-virtual/range {v104 .. v104}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v104

    sub-double v102, v102, v104

    invoke-direct/range {v97 .. v103}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v62, v96

    .line 740
    .local v62, "cv0":Ljavafx/geometry/Point3D;
    new-instance v96, Ljavafx/geometry/Point3D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move/from16 v98, v20

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    move-object/from16 v100, v61

    .line 741
    invoke-virtual/range {v100 .. v100}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v100

    sub-double v98, v98, v100

    move/from16 v100, v21

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    move-object/from16 v102, v61

    .line 742
    invoke-virtual/range {v102 .. v102}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v102

    sub-double v100, v100, v102

    move/from16 v102, v22

    move/from16 v0, v102

    float-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v104, v61

    .line 743
    invoke-virtual/range {v104 .. v104}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v104

    sub-double v102, v102, v104

    invoke-direct/range {v97 .. v103}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v63, v96

    .line 745
    .local v63, "cv1":Ljavafx/geometry/Point3D;
    new-instance v96, Ljavafx/geometry/Point3D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move/from16 v98, v23

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    move-object/from16 v100, v61

    .line 746
    invoke-virtual/range {v100 .. v100}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v100

    sub-double v98, v98, v100

    move/from16 v100, v24

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    move-object/from16 v102, v61

    .line 747
    invoke-virtual/range {v102 .. v102}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v102

    sub-double v100, v100, v102

    move/from16 v102, v25

    move/from16 v0, v102

    float-to-double v0, v0

    move-wide/from16 v102, v0

    move-object/from16 v104, v61

    .line 748
    invoke-virtual/range {v104 .. v104}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v104

    sub-double v102, v102, v104

    invoke-direct/range {v97 .. v103}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v64, v96

    .line 750
    .local v64, "cv2":Ljavafx/geometry/Point3D;
    move-object/from16 v96, v63

    move-object/from16 v97, v62

    invoke-virtual/range {v96 .. v97}, Ljavafx/geometry/Point3D;->subtract(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v96

    move-object/from16 v65, v96

    .line 751
    .local v65, "ce1":Ljavafx/geometry/Point3D;
    move-object/from16 v96, v64

    move-object/from16 v97, v62

    invoke-virtual/range {v96 .. v97}, Ljavafx/geometry/Point3D;->subtract(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v96

    move-object/from16 v66, v96

    .line 752
    .local v66, "ce2":Ljavafx/geometry/Point3D;
    move-object/from16 v96, v65

    move-object/from16 v97, v66

    invoke-virtual/range {v96 .. v97}, Ljavafx/geometry/Point3D;->crossProduct(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v96

    move-object/from16 v67, v96

    .line 753
    .local v67, "n":Ljavafx/geometry/Point3D;
    move-object/from16 v96, v67

    invoke-virtual/range {v96 .. v96}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v96

    const-wide/16 v98, 0x0

    cmpg-double v96, v96, v98

    if-gez v96, :cond_c

    .line 754
    new-instance v96, Ljavafx/geometry/Point3D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-object/from16 v98, v67

    invoke-virtual/range {v98 .. v98}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v98

    move-wide/from16 v0, v98

    neg-double v0, v0

    move-wide/from16 v98, v0

    move-object/from16 v100, v67

    invoke-virtual/range {v100 .. v100}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v100

    move-wide/from16 v0, v100

    neg-double v0, v0

    move-wide/from16 v100, v0

    move-object/from16 v102, v67

    invoke-virtual/range {v102 .. v102}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v102

    move-wide/from16 v0, v102

    neg-double v0, v0

    move-wide/from16 v102, v0

    invoke-direct/range {v97 .. v103}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object/from16 v67, v96

    .line 756
    :cond_c
    move-object/from16 v96, v67

    sget-object v97, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    invoke-virtual/range {v96 .. v97}, Ljavafx/geometry/Point3D;->crossProduct(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v96

    move-object/from16 v68, v96

    .line 757
    .local v68, "ax":Ljavafx/geometry/Point3D;
    move-object/from16 v96, v68

    invoke-virtual/range {v96 .. v96}, Ljavafx/geometry/Point3D;->magnitude()D

    move-result-wide v96

    move-object/from16 v98, v67

    sget-object v99, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    invoke-virtual/range {v98 .. v99}, Ljavafx/geometry/Point3D;->dotProduct(Ljavafx/geometry/Point3D;)D

    move-result-wide v98

    invoke-static/range {v96 .. v99}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v96

    move-wide/from16 v69, v96

    .line 759
    .local v69, "angle":D
    new-instance v96, Ljavafx/scene/transform/Rotate;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-wide/from16 v98, v69

    invoke-static/range {v98 .. v99}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v98

    move-object/from16 v100, v68

    invoke-direct/range {v97 .. v100}, Ljavafx/scene/transform/Rotate;-><init>(DLjavafx/geometry/Point3D;)V

    move-object/from16 v71, v96

    .line 760
    .local v71, "r":Ljavafx/scene/transform/Rotate;
    move-object/from16 v96, v71

    move-object/from16 v97, v62

    invoke-virtual/range {v96 .. v97}, Ljavafx/scene/transform/Rotate;->transform(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v96

    move-object/from16 v72, v96

    .line 761
    .local v72, "crv0":Ljavafx/geometry/Point3D;
    move-object/from16 v96, v71

    move-object/from16 v97, v63

    invoke-virtual/range {v96 .. v97}, Ljavafx/scene/transform/Rotate;->transform(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v96

    move-object/from16 v73, v96

    .line 762
    .local v73, "crv1":Ljavafx/geometry/Point3D;
    move-object/from16 v96, v71

    move-object/from16 v97, v64

    invoke-virtual/range {v96 .. v97}, Ljavafx/scene/transform/Rotate;->transform(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v96

    move-object/from16 v74, v96

    .line 763
    .local v74, "crv2":Ljavafx/geometry/Point3D;
    move-object/from16 v96, v71

    move-object/from16 v97, v60

    move-object/from16 v98, v61

    invoke-virtual/range {v97 .. v98}, Ljavafx/geometry/Point3D;->subtract(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljavafx/scene/transform/Rotate;->transform(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v96

    move-object/from16 v75, v96

    .line 765
    .local v75, "rPoint":Ljavafx/geometry/Point3D;
    new-instance v96, Ljavafx/geometry/Point2D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-object/from16 v98, v72

    invoke-virtual/range {v98 .. v98}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v98

    move-object/from16 v100, v72

    invoke-virtual/range {v100 .. v100}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v100

    invoke-direct/range {v97 .. v101}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v76, v96

    .line 766
    .local v76, "flatV0":Ljavafx/geometry/Point2D;
    new-instance v96, Ljavafx/geometry/Point2D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-object/from16 v98, v73

    invoke-virtual/range {v98 .. v98}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v98

    move-object/from16 v100, v73

    invoke-virtual/range {v100 .. v100}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v100

    invoke-direct/range {v97 .. v101}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v77, v96

    .line 767
    .local v77, "flatV1":Ljavafx/geometry/Point2D;
    new-instance v96, Ljavafx/geometry/Point2D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-object/from16 v98, v74

    invoke-virtual/range {v98 .. v98}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v98

    move-object/from16 v100, v74

    invoke-virtual/range {v100 .. v100}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v100

    invoke-direct/range {v97 .. v101}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v78, v96

    .line 768
    .local v78, "flatV2":Ljavafx/geometry/Point2D;
    new-instance v96, Ljavafx/geometry/Point2D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-object/from16 v98, v75

    invoke-virtual/range {v98 .. v98}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v98

    move-object/from16 v100, v75

    invoke-virtual/range {v100 .. v100}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v100

    invoke-direct/range {v97 .. v101}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v79, v96

    .line 771
    .local v79, "flatPoint":Ljavafx/geometry/Point2D;
    move-object/from16 v96, v3

    invoke-virtual/range {v96 .. v96}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljavafx/scene/shape/VertexFormat;->getTexCoordElementSize()I

    move-result v96

    move/from16 v80, v96

    .line 772
    .local v80, "texCoordElementSize":I
    move-object/from16 v96, v3

    invoke-virtual/range {v96 .. v96}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljavafx/scene/shape/VertexFormat;->getTexCoordIndexOffset()I

    move-result v96

    move/from16 v81, v96

    .line 773
    .local v81, "texCoordOffset":I
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move-object/from16 v96, v0

    move/from16 v97, v7

    move/from16 v98, v81

    add-int v97, v97, v98

    invoke-interface/range {v96 .. v97}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v96

    move/from16 v97, v80

    mul-int v96, v96, v97

    move/from16 v82, v96

    .line 774
    .local v82, "t0Idx":I
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move-object/from16 v96, v0

    move/from16 v97, v7

    move/from16 v98, v12

    add-int v97, v97, v98

    move/from16 v98, v81

    add-int v97, v97, v98

    invoke-interface/range {v96 .. v97}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v96

    move/from16 v97, v80

    mul-int v96, v96, v97

    move/from16 v83, v96

    .line 775
    .local v83, "t1Idx":I
    move-object/from16 v96, v3

    move-object/from16 v0, v96

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move-object/from16 v96, v0

    move/from16 v97, v7

    move/from16 v98, v12

    const/16 v99, 0x2

    mul-int/lit8 v98, v98, 0x2

    add-int v97, v97, v98

    move/from16 v98, v81

    add-int v97, v97, v98

    invoke-interface/range {v96 .. v97}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v96

    move/from16 v97, v80

    mul-int v96, v96, v97

    move/from16 v84, v96

    .line 777
    .local v84, "t2Idx":I
    new-instance v96, Ljavafx/geometry/Point2D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-object/from16 v98, v3

    move-object/from16 v0, v98

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v98, v0

    move/from16 v99, v82

    invoke-interface/range {v98 .. v99}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v98

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    move-object/from16 v100, v3

    move-object/from16 v0, v100

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v100, v0

    move/from16 v101, v82

    const/16 v102, 0x1

    add-int/lit8 v101, v101, 0x1

    invoke-interface/range {v100 .. v101}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v100

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    invoke-direct/range {v97 .. v101}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v85, v96

    .line 778
    .local v85, "u0":Ljavafx/geometry/Point2D;
    new-instance v96, Ljavafx/geometry/Point2D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-object/from16 v98, v3

    move-object/from16 v0, v98

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v98, v0

    move/from16 v99, v83

    invoke-interface/range {v98 .. v99}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v98

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    move-object/from16 v100, v3

    move-object/from16 v0, v100

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v100, v0

    move/from16 v101, v83

    const/16 v102, 0x1

    add-int/lit8 v101, v101, 0x1

    invoke-interface/range {v100 .. v101}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v100

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    invoke-direct/range {v97 .. v101}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v86, v96

    .line 779
    .local v86, "u1":Ljavafx/geometry/Point2D;
    new-instance v96, Ljavafx/geometry/Point2D;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-object/from16 v98, v3

    move-object/from16 v0, v98

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v98, v0

    move/from16 v99, v84

    invoke-interface/range {v98 .. v99}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v98

    move/from16 v0, v98

    float-to-double v0, v0

    move-wide/from16 v98, v0

    move-object/from16 v100, v3

    move-object/from16 v0, v100

    iget-object v0, v0, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    move-object/from16 v100, v0

    move/from16 v101, v84

    const/16 v102, 0x1

    add-int/lit8 v101, v101, 0x1

    invoke-interface/range {v100 .. v101}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v100

    move/from16 v0, v100

    float-to-double v0, v0

    move-wide/from16 v100, v0

    invoke-direct/range {v97 .. v101}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v87, v96

    .line 781
    .local v87, "u2":Ljavafx/geometry/Point2D;
    move-object/from16 v96, v3

    move-object/from16 v97, v85

    move-object/from16 v98, v86

    move-object/from16 v99, v87

    invoke-direct/range {v96 .. v99}, Ljavafx/scene/shape/TriangleMesh;->computeCentroid(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v96

    move-object/from16 v88, v96

    .line 783
    .local v88, "txCentroid":Ljavafx/geometry/Point2D;
    move-object/from16 v96, v85

    move-object/from16 v97, v88

    invoke-virtual/range {v96 .. v97}, Ljavafx/geometry/Point2D;->subtract(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v96

    move-object/from16 v89, v96

    .line 784
    .local v89, "cu0":Ljavafx/geometry/Point2D;
    move-object/from16 v96, v86

    move-object/from16 v97, v88

    invoke-virtual/range {v96 .. v97}, Ljavafx/geometry/Point2D;->subtract(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v96

    move-object/from16 v90, v96

    .line 785
    .local v90, "cu1":Ljavafx/geometry/Point2D;
    move-object/from16 v96, v87

    move-object/from16 v97, v88

    invoke-virtual/range {v96 .. v97}, Ljavafx/geometry/Point2D;->subtract(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v96

    move-object/from16 v91, v96

    .line 789
    .local v91, "cu2":Ljavafx/geometry/Point2D;
    new-instance v96, Ljavafx/scene/transform/Affine;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-object/from16 v98, v76

    .line 790
    invoke-virtual/range {v98 .. v98}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v98

    move-object/from16 v100, v77

    invoke-virtual/range {v100 .. v100}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v100

    move-object/from16 v102, v78

    invoke-virtual/range {v102 .. v102}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v102

    move-object/from16 v104, v76

    .line 791
    invoke-virtual/range {v104 .. v104}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v104

    move-object/from16 v106, v77

    invoke-virtual/range {v106 .. v106}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v106

    move-object/from16 v108, v78

    invoke-virtual/range {v108 .. v108}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v108

    invoke-direct/range {v97 .. v109}, Ljavafx/scene/transform/Affine;-><init>(DDDDDD)V

    move-object/from16 v92, v96

    .line 792
    .local v92, "src":Ljavafx/scene/transform/Affine;
    new-instance v96, Ljavafx/scene/transform/Affine;

    move-object/from16 v115, v96

    move-object/from16 v96, v115

    move-object/from16 v97, v115

    move-object/from16 v98, v89

    .line 793
    invoke-virtual/range {v98 .. v98}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v98

    move-object/from16 v100, v90

    invoke-virtual/range {v100 .. v100}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v100

    move-object/from16 v102, v91

    invoke-virtual/range {v102 .. v102}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v102

    move-object/from16 v104, v89

    .line 794
    invoke-virtual/range {v104 .. v104}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v104

    move-object/from16 v106, v90

    invoke-virtual/range {v106 .. v106}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v106

    move-object/from16 v108, v91

    invoke-virtual/range {v108 .. v108}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v108

    invoke-direct/range {v97 .. v109}, Ljavafx/scene/transform/Affine;-><init>(DDDDDD)V

    move-object/from16 v93, v96

    .line 796
    .local v93, "trg":Ljavafx/scene/transform/Affine;
    const/16 v96, 0x0

    move-object/from16 v94, v96

    .line 799
    .local v94, "txCoords":Ljavafx/geometry/Point2D;
    move-object/from16 v96, v92

    :try_start_0
    invoke-virtual/range {v96 .. v96}, Ljavafx/scene/transform/Affine;->invert()V

    .line 800
    move-object/from16 v96, v93

    move-object/from16 v97, v92

    invoke-virtual/range {v96 .. v97}, Ljavafx/scene/transform/Affine;->append(Ljavafx/scene/transform/Transform;)V

    .line 801
    move-object/from16 v96, v88

    move-object/from16 v97, v93

    move-object/from16 v98, v79

    invoke-virtual/range {v97 .. v98}, Ljavafx/scene/transform/Affine;->transform(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljavafx/geometry/Point2D;->add(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    :try_end_0
    .catch Ljavafx/scene/transform/NonInvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v96

    move-object/from16 v94, v96

    .line 805
    .line 807
    :goto_1
    move-object/from16 v96, v11

    move-object/from16 v97, v9

    move-wide/from16 v98, v58

    move/from16 v100, v10

    if-eqz v100, :cond_d

    move/from16 v100, v7

    move-object/from16 v101, v3

    .line 808
    invoke-virtual/range {v101 .. v101}, Ljavafx/scene/shape/TriangleMesh;->getFaceElementSize()I

    move-result v101

    div-int v100, v100, v101

    :goto_2
    move-object/from16 v101, v60

    move-object/from16 v102, v94

    .line 807
    invoke-virtual/range {v96 .. v102}, Lcom/sun/javafx/scene/input/PickResultChooser;->offer(Ljavafx/scene/Node;DILjavafx/geometry/Point3D;Ljavafx/geometry/Point2D;)Z

    move-result v96

    .line 810
    const/16 v96, 0x1

    move/from16 v3, v96

    goto/16 :goto_0

    .line 802
    :catch_0
    move-exception v96

    move-object/from16 v95, v96

    goto :goto_1

    .line 808
    :cond_d
    const/16 v100, -0x1

    goto :goto_2

    .line 813
    .end local v60    # "point":Ljavafx/geometry/Point3D;
    .end local v61    # "centroid":Ljavafx/geometry/Point3D;
    .end local v62    # "cv0":Ljavafx/geometry/Point3D;
    .end local v63    # "cv1":Ljavafx/geometry/Point3D;
    .end local v64    # "cv2":Ljavafx/geometry/Point3D;
    .end local v65    # "ce1":Ljavafx/geometry/Point3D;
    .end local v66    # "ce2":Ljavafx/geometry/Point3D;
    .end local v67    # "n":Ljavafx/geometry/Point3D;
    .end local v68    # "ax":Ljavafx/geometry/Point3D;
    .end local v69    # "angle":D
    .end local v71    # "r":Ljavafx/scene/transform/Rotate;
    .end local v72    # "crv0":Ljavafx/geometry/Point3D;
    .end local v73    # "crv1":Ljavafx/geometry/Point3D;
    .end local v74    # "crv2":Ljavafx/geometry/Point3D;
    .end local v75    # "rPoint":Ljavafx/geometry/Point3D;
    .end local v76    # "flatV0":Ljavafx/geometry/Point2D;
    .end local v77    # "flatV1":Ljavafx/geometry/Point2D;
    .end local v78    # "flatV2":Ljavafx/geometry/Point2D;
    .end local v79    # "flatPoint":Ljavafx/geometry/Point2D;
    .end local v80    # "texCoordElementSize":I
    .end local v81    # "texCoordOffset":I
    .end local v82    # "t0Idx":I
    .end local v83    # "t1Idx":I
    .end local v84    # "t2Idx":I
    .end local v85    # "u0":Ljavafx/geometry/Point2D;
    .end local v86    # "u1":Ljavafx/geometry/Point2D;
    .end local v87    # "u2":Ljavafx/geometry/Point2D;
    .end local v88    # "txCentroid":Ljavafx/geometry/Point2D;
    .end local v89    # "cu0":Ljavafx/geometry/Point2D;
    .end local v90    # "cu1":Ljavafx/geometry/Point2D;
    .end local v91    # "cu2":Ljavafx/geometry/Point2D;
    .end local v92    # "src":Ljavafx/scene/transform/Affine;
    .end local v93    # "trg":Ljavafx/scene/transform/Affine;
    .end local v94    # "txCoords":Ljavafx/geometry/Point2D;
    :cond_e
    const/16 v96, 0x0

    move/from16 v3, v96

    goto/16 :goto_0
.end method

.method private validate()Z
    .locals 3

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh;->isPredefinedShape:Z

    if-eqz v1, :cond_0

    .line 486
    const/4 v1, 0x1

    move v0, v1

    .line 509
    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    :goto_0
    return v0

    .line 489
    .restart local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh;->isValidDirty:Z

    if-eqz v1, :cond_8

    .line 490
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->pointsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-eqz v1, :cond_1

    .line 491
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/TriangleMesh;->validatePoints()Z

    move-result v2

    iput-boolean v2, v1, Ljavafx/scene/shape/TriangleMesh;->isPointsValid:Z

    .line 493
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->normalsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-eqz v1, :cond_2

    .line 494
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/TriangleMesh;->validateNormals()Z

    move-result v2

    iput-boolean v2, v1, Ljavafx/scene/shape/TriangleMesh;->isNormalsValid:Z

    .line 496
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->texCoordsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-eqz v1, :cond_3

    .line 497
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/TriangleMesh;->validateTexCoords()Z

    move-result v2

    iput-boolean v2, v1, Ljavafx/scene/shape/TriangleMesh;->isTexCoordsValid:Z

    .line 499
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->facesSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->dirty:Z

    if-nez v1, :cond_4

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->pointsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-nez v1, :cond_4

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->normalsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-nez v1, :cond_4

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->texCoordsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-eqz v1, :cond_5

    .line 501
    :cond_4
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/shape/TriangleMesh;->isPointsValid:Z

    if-eqz v2, :cond_9

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/shape/TriangleMesh;->isNormalsValid:Z

    if-eqz v2, :cond_9

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/shape/TriangleMesh;->isTexCoordsValid:Z

    if-eqz v2, :cond_9

    move-object v2, v0

    .line 502
    invoke-direct {v2}, Ljavafx/scene/shape/TriangleMesh;->validateFaces()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Ljavafx/scene/shape/TriangleMesh;->isFacesValid:Z

    .line 504
    :cond_5
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->faceSmoothingGroupsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-nez v1, :cond_6

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->facesSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh$Listener;->dirtyInFull:Z

    if-eqz v1, :cond_7

    .line 505
    :cond_6
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/shape/TriangleMesh;->isFacesValid:Z

    if-eqz v2, :cond_a

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/TriangleMesh;->validateFaceSmoothingGroups()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v1, Ljavafx/scene/shape/TriangleMesh;->isFaceSmoothingGroupValid:Z

    .line 507
    :cond_7
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/shape/TriangleMesh;->isValidDirty:Z

    .line 509
    :cond_8
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh;->isPointsValid:Z

    if-eqz v1, :cond_b

    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh;->isNormalsValid:Z

    if-eqz v1, :cond_b

    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh;->isTexCoordsValid:Z

    if-eqz v1, :cond_b

    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh;->isFaceSmoothingGroupValid:Z

    if-eqz v1, :cond_b

    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/shape/TriangleMesh;->isFacesValid:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_3
    move v0, v1

    goto/16 :goto_0

    .line 502
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 505
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 509
    :cond_b
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private validateFaceSmoothingGroups()Z
    .locals 5

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->faceSmoothingGroups:Ljavafx/collections/ObservableIntegerArray;

    invoke-interface {v2}, Ljavafx/collections/ObservableIntegerArray;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->faceSmoothingGroups:Ljavafx/collections/ObservableIntegerArray;

    .line 475
    invoke-interface {v2}, Ljavafx/collections/ObservableIntegerArray;->size()I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    invoke-interface {v3}, Ljavafx/scene/shape/ObservableFaceArray;->size()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/TriangleMesh;->getFaceElementSize()I

    move-result v4

    div-int/2addr v3, v4

    if-eq v2, v3, :cond_0

    .line 476
    const-class v2, Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 477
    .local v1, "logname":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "faceSmoothingGroups.size() has to equal to number of faces."

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 479
    const/4 v2, 0x0

    move v0, v2

    .line 481
    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    :goto_0
    return v0

    .end local v1    # "logname":Ljava/lang/String;
    .restart local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method private validateFaces()Z
    .locals 10

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    invoke-interface {v6}, Ljavafx/scene/shape/ObservableFaceArray;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 422
    const/4 v6, 0x0

    move v0, v6

    .line 470
    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    .local v1, "logname":Ljava/lang/String;
    :goto_0
    return v0

    .line 425
    .end local v1    # "logname":Ljava/lang/String;
    .restart local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    :cond_0
    const-class v6, Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 426
    .restart local v1    # "logname":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    invoke-interface {v6}, Ljavafx/scene/shape/ObservableFaceArray;->size()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/TriangleMesh;->getFaceElementSize()I

    move-result v7

    rem-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 427
    move-object v6, v1

    invoke-static {v6}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v6

    const-string v7, "faces.size() has to be divisible by getFaceElementSize()."

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 429
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 432
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v6

    sget-object v7, Ljavafx/scene/shape/VertexFormat;->POINT_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    if-ne v6, v7, :cond_6

    .line 433
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v6}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/shape/VertexFormat;->getPointElementSize()I

    move-result v7

    div-int/2addr v6, v7

    move v2, v6

    .line 434
    .local v2, "nVerts":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v6}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/shape/VertexFormat;->getTexCoordElementSize()I

    move-result v7

    div-int/2addr v6, v7

    move v3, v6

    .line 435
    .local v3, "nTVerts":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    invoke-interface {v7}, Ljavafx/scene/shape/ObservableFaceArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 436
    move v6, v4

    const/4 v7, 0x2

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v6

    move v7, v2

    if-ge v6, v7, :cond_3

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v6

    if-ltz v6, :cond_3

    :cond_2
    move v6, v4

    const/4 v7, 0x2

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move v7, v4

    .line 437
    invoke-interface {v6, v7}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v6

    move v7, v3

    if-ge v6, v7, :cond_3

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v6

    if-gez v6, :cond_4

    .line 438
    :cond_3
    move-object v6, v1

    invoke-static {v6}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v6

    const-string v7, "The values in the faces array must be within the range of the number of vertices in the points array (0 to points.length / 3 - 1) for the point indices and within the range of the number of the vertices in the texCoords array (0 to texCoords.length / 2 - 1) for the texture coordinate indices."

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 444
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 435
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 447
    .line 470
    .end local v3    # "nTVerts":I
    .end local v4    # "i":I
    :cond_5
    :goto_2
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 447
    .end local v2    # "nVerts":I
    :cond_6
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v6

    sget-object v7, Ljavafx/scene/shape/VertexFormat;->POINT_NORMAL_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    if-ne v6, v7, :cond_a

    .line 448
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v6}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/shape/VertexFormat;->getPointElementSize()I

    move-result v7

    div-int/2addr v6, v7

    move v2, v6

    .line 449
    .restart local v2    # "nVerts":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->normals:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v6}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/shape/VertexFormat;->getNormalElementSize()I

    move-result v7

    div-int/2addr v6, v7

    move v3, v6

    .line 450
    .local v3, "nNVerts":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v6}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/shape/VertexFormat;->getTexCoordElementSize()I

    move-result v7

    div-int/2addr v6, v7

    move v4, v6

    .line 451
    .local v4, "nTVerts":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_3
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    invoke-interface {v7}, Ljavafx/scene/shape/ObservableFaceArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 452
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move v7, v5

    invoke-interface {v6, v7}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v6

    move v7, v2

    if-ge v6, v7, :cond_7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move v7, v5

    invoke-interface {v6, v7}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v6

    if-ltz v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 453
    invoke-interface {v6, v7}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v6

    move v7, v3

    if-ge v6, v7, :cond_7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v7}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v6

    if-ltz v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move v7, v5

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    .line 454
    invoke-interface {v6, v7}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v6

    move v7, v4

    if-ge v6, v7, :cond_7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move v7, v5

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-interface {v6, v7}, Ljavafx/scene/shape/ObservableFaceArray;->get(I)I

    move-result v6

    if-gez v6, :cond_8

    .line 455
    :cond_7
    move-object v6, v1

    invoke-static {v6}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v6

    const-string v7, "The values in the faces array must be within the range of the number of vertices in the points array (0 to points.length / 3 - 1) for the point indices, and within the range of the number of the vertices in the normals array (0 to normals.length / 3 - 1) for the normals indices, and number of the vertices in the texCoords array (0 to texCoords.length / 2 - 1) for the texture coordinate indices."

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 463
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 451
    :cond_8
    add-int/lit8 v5, v5, 0x3

    goto :goto_3

    .line 466
    :cond_9
    goto/16 :goto_2

    .line 467
    .end local v2    # "nVerts":I
    .end local v3    # "nNVerts":I
    .end local v4    # "nTVerts":I
    .end local v5    # "i":I
    :cond_a
    move-object v6, v1

    invoke-static {v6}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported VertexFormat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/shape/VertexFormat;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 468
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0
.end method

.method private validateNormals()Z
    .locals 4

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v2

    sget-object v3, Ljavafx/scene/shape/VertexFormat;->POINT_NORMAL_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 401
    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    .local v1, "logname":Ljava/lang/String;
    :goto_0
    return v0

    .line 390
    .end local v1    # "logname":Ljava/lang/String;
    .restart local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->normals:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v2}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 391
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 394
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->normals:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v2}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/shape/VertexFormat;->getNormalElementSize()I

    move-result v3

    rem-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 395
    const-class v2, Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 396
    .restart local v1    # "logname":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "normals.size() has to be divisible by getNormalElementSize(). It is to store multiple nx, ny, and nz coordinates of this mesh"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 399
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 401
    .end local v1    # "logname":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method private validatePoints()Z
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v2}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 373
    const/4 v2, 0x0

    move v0, v2

    .line 383
    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    .local v1, "logname":Ljava/lang/String;
    :goto_0
    return v0

    .line 376
    .end local v1    # "logname":Ljava/lang/String;
    .restart local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v2}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/shape/VertexFormat;->getPointElementSize()I

    move-result v3

    rem-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 377
    const-class v2, Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 378
    .restart local v1    # "logname":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "points.size() has to be divisible by getPointElementSize(). It is to store multiple x, y, and z coordinates of this mesh"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 381
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 383
    .end local v1    # "logname":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method private validateTexCoords()Z
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v2}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 406
    const/4 v2, 0x0

    move v0, v2

    .line 417
    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    .local v1, "logname":Ljava/lang/String;
    :goto_0
    return v0

    .line 409
    .end local v1    # "logname":Ljava/lang/String;
    .restart local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v2}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/shape/VertexFormat;->getTexCoordElementSize()I

    move-result v3

    rem-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 410
    const-class v2, Ljavafx/scene/shape/TriangleMesh;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 411
    .restart local v1    # "logname":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "texCoords.size() has to be divisible by getTexCoordElementSize(). It is to store multiple u and v texture coordinates of this mesh"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 415
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 417
    .end local v1    # "logname":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method computeBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 13

    .prologue
    .line 545
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v2, p1

    .local v2, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/TriangleMesh;->isDirty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    if-nez v6, :cond_1

    .line 546
    :cond_0
    move-object v6, v1

    new-instance v7, Lcom/sun/javafx/geom/BoxBounds;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lcom/sun/javafx/geom/BoxBounds;-><init>()V

    iput-object v7, v6, Ljavafx/scene/shape/TriangleMesh;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 547
    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/shape/TriangleMesh;->validate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 548
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    invoke-interface {v6}, Ljavafx/collections/ObservableFloatArray;->size()I

    move-result v6

    int-to-double v6, v6

    move-wide v3, v6

    .line 549
    .local v3, "len":D
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    int-to-double v6, v6

    move-wide v8, v3

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 550
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/shape/TriangleMesh;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v7

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v8

    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move v10, v5

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableFloatArray;->get(I)F

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/javafx/geom/BaseBounds;->add(FFF)V

    .line 549
    move v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/shape/VertexFormat;->getPointElementSize()I

    move-result v7

    add-int/2addr v6, v7

    move v5, v6

    goto :goto_0

    .line 554
    .end local v3    # "len":D
    .end local v5    # "i":I
    :cond_1
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/shape/TriangleMesh;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v1
.end method

.method declared-synchronized decRef()V
    .locals 6

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    :try_start_0
    iget v2, v2, Ljavafx/scene/shape/TriangleMesh;->refCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ljavafx/scene/shape/TriangleMesh;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit v4

    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    throw v0
.end method

.method public final getFaceElementSize()I
    .locals 3

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/VertexFormat;->getVertexIndexSize()I

    move-result v1

    const/4 v2, 0x3

    mul-int/lit8 v1, v1, 0x3

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return v0
.end method

.method public final getFaceSmoothingGroups()Ljavafx/collections/ObservableIntegerArray;
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->faceSmoothingGroups:Ljavafx/collections/ObservableIntegerArray;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v0
.end method

.method public final getFaces()Ljavafx/scene/shape/ObservableFaceArray;
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v0
.end method

.method public final getNormalElementSize()I
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/VertexFormat;->getNormalElementSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return v0
.end method

.method public final getNormals()Ljavafx/collections/ObservableFloatArray;
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->normals:Ljavafx/collections/ObservableFloatArray;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v0
.end method

.method getPGMesh()Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/TriangleMesh;->impl_getPGTriangleMesh()Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v0
.end method

.method public final getPointElementSize()I
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/VertexFormat;->getPointElementSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return v0
.end method

.method public final getPoints()Ljavafx/collections/ObservableFloatArray;
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->points:Ljavafx/collections/ObservableFloatArray;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v0
.end method

.method getRefCount()I
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/shape/TriangleMesh;->refCount:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return v0
.end method

.method public final getTexCoordElementSize()I
    .locals 2

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/VertexFormat;->getTexCoordElementSize()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return v0
.end method

.method public final getTexCoords()Ljavafx/collections/ObservableFloatArray;
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->texCoords:Ljavafx/collections/ObservableFloatArray;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v0
.end method

.method public final getVertexFormat()Ljavafx/scene/shape/VertexFormat;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->vertexFormat:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/shape/VertexFormat;->POINT_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->vertexFormat:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/VertexFormat;

    goto :goto_0
.end method

.method protected impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;Ljavafx/scene/Node;Ljavafx/scene/shape/CullFace;Z)Z
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 826
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object/from16 v1, p1

    .local v1, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v2, p2

    .local v2, "pickResult":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object/from16 v3, p3

    .local v3, "candidate":Ljavafx/scene/Node;
    move-object/from16 v4, p4

    .local v4, "cullFace":Ljavafx/scene/shape/CullFace;
    move/from16 v5, p5

    .local v5, "reportFace":Z
    const/4 v11, 0x0

    move v6, v11

    .line 827
    .local v6, "found":Z
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/shape/TriangleMesh;->validate()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 828
    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/shape/TriangleMesh;->faces:Ljavafx/scene/shape/ObservableFaceArray;

    invoke-interface {v11}, Ljavafx/scene/shape/ObservableFaceArray;->size()I

    move-result v11

    move v7, v11

    .line 830
    .local v7, "size":I
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v11

    move-object v8, v11

    .line 832
    .local v8, "o":Lcom/sun/javafx/geom/Vec3d;
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v11

    move-object v9, v11

    .line 834
    .local v9, "d":Lcom/sun/javafx/geom/Vec3d;
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_0
    move v11, v10

    move v12, v7

    if-ge v11, v12, :cond_1

    .line 835
    move-object v11, v0

    move-object v12, v1

    move-object v13, v8

    move-object v14, v9

    move v15, v10

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v19, v2

    invoke-direct/range {v11 .. v19}, Ljavafx/scene/shape/TriangleMesh;->computeIntersectsFace(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;ILjavafx/scene/shape/CullFace;Ljavafx/scene/Node;ZLcom/sun/javafx/scene/input/PickResultChooser;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 837
    const/4 v11, 0x1

    move v6, v11

    .line 834
    :cond_0
    move v11, v10

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/shape/TriangleMesh;->getFaceElementSize()I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    goto :goto_0

    .line 841
    .end local v7    # "size":I
    .end local v8    # "o":Lcom/sun/javafx/geom/Vec3d;
    .end local v9    # "d":Lcom/sun/javafx/geom/Vec3d;
    .end local v10    # "i":I
    :cond_1
    move v11, v6

    move v0, v11

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return v0
.end method

.method impl_getPGTriangleMesh()Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->peer:Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    if-nez v1, :cond_0

    .line 361
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;-><init>()V

    iput-object v2, v1, Ljavafx/scene/shape/TriangleMesh;->peer:Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    .line 363
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->peer:Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v0
.end method

.method impl_updatePG()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/TriangleMesh;->isDirty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    .line 541
    :goto_0
    return-void

    .line 524
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/TriangleMesh;->impl_getPGTriangleMesh()Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-result-object v2

    move-object v1, v2

    .line 525
    .local v1, "pgTriMesh":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/TriangleMesh;->validate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 526
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/TriangleMesh;->getVertexFormat()Ljavafx/scene/shape/VertexFormat;

    move-result-object v3

    sget-object v4, Ljavafx/scene/shape/VertexFormat;->POINT_NORMAL_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->setUserDefinedNormals(Z)V

    .line 527
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/TriangleMesh;->pointsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->syncPoints(Lcom/sun/javafx/collections/FloatArraySyncer;)V

    .line 528
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/TriangleMesh;->normalsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->syncNormals(Lcom/sun/javafx/collections/FloatArraySyncer;)V

    .line 529
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/TriangleMesh;->texCoordsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->syncTexCoords(Lcom/sun/javafx/collections/FloatArraySyncer;)V

    .line 530
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/TriangleMesh;->facesSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->syncFaces(Lcom/sun/javafx/collections/IntegerArraySyncer;)V

    .line 531
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/TriangleMesh;->faceSmoothingGroupsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->syncFaceSmoothingGroups(Lcom/sun/javafx/collections/IntegerArraySyncer;)V

    .line 540
    :goto_2
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/TriangleMesh;->setDirty(Z)V

    .line 541
    goto :goto_0

    .line 526
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 533
    :cond_2
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->setUserDefinedNormals(Z)V

    .line 534
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->syncPoints(Lcom/sun/javafx/collections/FloatArraySyncer;)V

    .line 535
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->syncNormals(Lcom/sun/javafx/collections/FloatArraySyncer;)V

    .line 536
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->syncTexCoords(Lcom/sun/javafx/collections/FloatArraySyncer;)V

    .line 537
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->syncFaces(Lcom/sun/javafx/collections/IntegerArraySyncer;)V

    .line 538
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->syncFaceSmoothingGroups(Lcom/sun/javafx/collections/IntegerArraySyncer;)V

    goto :goto_2
.end method

.method declared-synchronized incRef()V
    .locals 6

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    :try_start_0
    iget v2, v2, Ljavafx/scene/shape/TriangleMesh;->refCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljavafx/scene/shape/TriangleMesh;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit v4

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    throw v0
.end method

.method setDirty(Z)V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/shape/Mesh;->setDirty(Z)V

    .line 330
    move v2, v1

    if-nez v2, :cond_0

    .line 331
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->pointsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/TriangleMesh$Listener;->setDirty(Z)V

    .line 332
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->normalsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/TriangleMesh$Listener;->setDirty(Z)V

    .line 333
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->texCoordsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/TriangleMesh$Listener;->setDirty(Z)V

    .line 334
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->facesSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/TriangleMesh$Listener;->setDirty(Z)V

    .line 335
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/TriangleMesh;->faceSmoothingGroupsSyncer:Ljavafx/scene/shape/TriangleMesh$Listener;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/TriangleMesh$Listener;->setDirty(Z)V

    .line 337
    :cond_0
    return-void
.end method

.method public final setVertexFormat(Ljavafx/scene/shape/VertexFormat;)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/VertexFormat;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/TriangleMesh;->vertexFormatProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public final vertexFormatProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/VertexFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/TriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->vertexFormat:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 200
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/TriangleMesh$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "vertexFormat"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/shape/TriangleMesh$1;-><init>(Ljavafx/scene/shape/TriangleMesh;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/shape/TriangleMesh;->vertexFormat:Ljavafx/beans/property/ObjectProperty;

    .line 211
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/TriangleMesh;->vertexFormat:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/TriangleMesh;
    return-object v0
.end method
