.class public abstract Lcom/sun/prism/impl/BaseMesh;
.super Lcom/sun/prism/impl/BaseGraphicsResource;
.source "BaseMesh.java"

# interfaces
.implements Lcom/sun/prism/Mesh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;,
        Lcom/sun/prism/impl/BaseMesh$FaceMembers;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final FACE_MEMBERS_SIZE:I = 0x7

.field protected static final NORMAL_SIZE:I = 0x3

.field protected static final NORMAL_SIZE_VB:I = 0x4

.field protected static final POINT_SIZE:I = 0x3

.field protected static final POINT_SIZE_VB:I = 0x3

.field protected static final TEXCOORD_SIZE:I = 0x2

.field protected static final TEXCOORD_SIZE_VB:I = 0x2

.field protected static final VERTEX_SIZE_VB:I = 0x9


# instance fields
.field private allHardEdges:Z

.field private allSameSmoothing:Z

.field private cachedBitangents:[F

.field private cachedNormals:[F

.field private cachedTangents:[F

.field private dirtyVertices:[Z

.field private faces:[I

.field private indexBuffer:[I

.field private indexBufferShort:[S

.field private indexBufferSize:I

.field private nFaces:I

.field private nTVerts:I

.field private nVerts:I

.field private normal2vbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfVertices:I

.field private point2vbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;",
            ">;"
        }
    .end annotation
.end field

.field private pos:[F

.field private smoothing:[I

.field private texCoord2vbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;",
            ">;"
        }
    .end annotation
.end field

.field private uv:[F

.field private vertexBuffer:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sun/prism/impl/BaseMesh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/prism/impl/BaseMesh;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sun/prism/impl/Disposer$Record;)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object v1, p1

    .local v1, "disposerRecord":Lcom/sun/prism/impl/Disposer$Record;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/prism/impl/BaseGraphicsResource;-><init>(Lcom/sun/prism/impl/Disposer$Record;)V

    .line 73
    return-void
.end method

.method private buildIndexBuffer([Lcom/sun/prism/impl/MeshVertex;[I[S)V
    .locals 13

    .prologue
    .line 931
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object v1, p1

    .local v1, "pool":[Lcom/sun/prism/impl/MeshVertex;
    move-object v2, p2

    .local v2, "indexBuffer":[I
    move-object/from16 v3, p3

    .local v3, "indexBufferShort":[S
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    if-ge v7, v8, :cond_5

    .line 932
    move v7, v4

    const/4 v8, 0x3

    mul-int/lit8 v7, v7, 0x3

    move v5, v7

    .line 933
    .local v5, "index":I
    move-object v7, v2

    move v8, v5

    aget v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 934
    const/4 v7, 0x0

    move v6, v7

    .local v6, "j":I
    :goto_1
    move v7, v6

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 935
    sget-boolean v7, Lcom/sun/prism/impl/BaseMesh;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move-object v7, v1

    move v8, v5

    aget-object v7, v7, v8

    iget v7, v7, Lcom/sun/prism/impl/MeshVertex;->fIdx:I

    move v8, v4

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 936
    :cond_0
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 937
    move-object v7, v3

    move v8, v5

    move v9, v6

    add-int/2addr v8, v9

    move-object v9, v1

    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    aget-object v9, v9, v10

    iget v9, v9, Lcom/sun/prism/impl/MeshVertex;->index:I

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 941
    :goto_2
    move-object v7, v1

    move v8, v5

    move v9, v6

    add-int/2addr v8, v9

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    .line 934
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 939
    :cond_1
    move-object v7, v2

    move v8, v5

    move v9, v6

    add-int/2addr v8, v9

    move-object v9, v1

    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    aget-object v9, v9, v10

    iget v9, v9, Lcom/sun/prism/impl/MeshVertex;->index:I

    aput v9, v7, v8

    goto :goto_2

    .line 934
    .line 931
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 944
    .end local v6    # "j":I
    :cond_3
    const/4 v7, 0x0

    move v6, v7

    .restart local v6    # "j":I
    :goto_3
    move v7, v6

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    .line 945
    move-object v7, v3

    if-eqz v7, :cond_4

    .line 946
    move-object v7, v3

    move v8, v5

    move v9, v6

    add-int/2addr v8, v9

    const/4 v9, 0x0

    aput-short v9, v7, v8

    .line 944
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 948
    :cond_4
    move-object v7, v2

    move v8, v5

    move v9, v6

    add-int/2addr v8, v9

    const/4 v9, 0x0

    aput v9, v7, v8

    goto :goto_4

    .line 953
    .end local v5    # "index":I
    .end local v6    # "j":I
    :cond_5
    return-void
.end method

.method private buildPNTGeometry([F[I[F[I[F[I[I[I)Z
    .locals 21

    .prologue
    .line 708
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object/from16 v1, p1

    .local v1, "points":[F
    move-object/from16 v2, p2

    .local v2, "pointsFromAndLengthIndices":[I
    move-object/from16 v3, p3

    .local v3, "normals":[F
    move-object/from16 v4, p4

    .local v4, "normalsFromAndLengthIndices":[I
    move-object/from16 v5, p5

    .local v5, "texCoords":[F
    move-object/from16 v6, p6

    .local v6, "texCoordsFromAndLengthIndices":[I
    move-object/from16 v7, p7

    .local v7, "faces":[I
    move-object/from16 v8, p8

    .local v8, "facesFromAndLengthIndices":[I
    move-object v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    if-lez v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    move v9, v14

    .line 709
    .local v9, "updatePoints":Z
    move-object v14, v4

    const/4 v15, 0x1

    aget v14, v14, v15

    if-lez v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    move v10, v14

    .line 710
    .local v10, "updateNormals":Z
    move-object v14, v6

    const/4 v15, 0x1

    aget v14, v14, v15

    if-lez v14, :cond_4

    const/4 v14, 0x1

    :goto_2
    move v11, v14

    .line 711
    .local v11, "updateTexCoords":Z
    move-object v14, v8

    const/4 v15, 0x1

    aget v14, v14, v15

    if-lez v14, :cond_5

    const/4 v14, 0x1

    :goto_3
    move v12, v14

    .line 714
    .local v12, "updateFaces":Z
    move v14, v9

    if-nez v14, :cond_6

    move v14, v10

    if-nez v14, :cond_6

    move v14, v11

    if-nez v14, :cond_6

    move v14, v12

    if-nez v14, :cond_6

    const/4 v14, 0x1

    :goto_4
    move v13, v14

    .line 717
    .local v13, "buildGeom":Z
    move v14, v12

    if-eqz v14, :cond_0

    .line 718
    const/4 v14, 0x1

    move v13, v14

    .line 721
    :cond_0
    move v14, v13

    if-nez v14, :cond_7

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    if-eqz v14, :cond_7

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    if-nez v14, :cond_1

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    if-eqz v14, :cond_7

    .line 723
    :cond_1
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v14 .. v20}, Lcom/sun/prism/impl/BaseMesh;->updatePNTGeometry([F[I[F[I[F[I)Z

    move-result v14

    move v0, v14

    .line 727
    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    :goto_5
    return v0

    .line 708
    .end local v9    # "updatePoints":Z
    .end local v10    # "updateNormals":Z
    .end local v11    # "updateTexCoords":Z
    .end local v12    # "updateFaces":Z
    .end local v13    # "buildGeom":Z
    .restart local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 709
    .restart local v9    # "updatePoints":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 710
    .restart local v10    # "updateNormals":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 711
    .restart local v11    # "updateTexCoords":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 714
    .restart local v12    # "updateFaces":Z
    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 727
    .restart local v13    # "buildGeom":Z
    :cond_7
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v18}, Lcom/sun/prism/impl/BaseMesh;->doBuildPNTGeometry([F[F[F[I)Z

    move-result v14

    move v0, v14

    goto :goto_5
.end method

.method private buildPTGeometry([F[I[F[I[I[I[I[I)Z
    .locals 23

    .prologue
    .line 736
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object/from16 v3, p1

    .local v3, "pos":[F
    move-object/from16 v4, p2

    .local v4, "posFromAndLengthIndices":[I
    move-object/from16 v5, p3

    .local v5, "uv":[F
    move-object/from16 v6, p4

    .local v6, "uvFromAndLengthIndices":[I
    move-object/from16 v7, p5

    .local v7, "faces":[I
    move-object/from16 v8, p6

    .local v8, "facesFromAndLengthIndices":[I
    move-object/from16 v9, p7

    .local v9, "smoothing":[I
    move-object/from16 v10, p8

    .local v10, "smoothingFromAndLengthIndices":[I
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3

    div-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/prism/impl/BaseMesh;->nVerts:I

    .line 737
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/prism/impl/BaseMesh;->nTVerts:I

    .line 738
    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    sget-object v18, Ljavafx/scene/shape/VertexFormat;->POINT_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/VertexFormat;->getVertexIndexSize()I

    move-result v18

    const/16 v19, 0x3

    mul-int/lit8 v18, v18, 0x3

    div-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    .line 739
    sget-boolean v16, Lcom/sun/prism/impl/BaseMesh;->$assertionsDisabled:Z

    if-nez v16, :cond_1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nVerts:I

    move/from16 v16, v0

    if-lez v16, :cond_0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v16, v0

    if-lez v16, :cond_0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nTVerts:I

    move/from16 v16, v0

    if-gtz v16, :cond_1

    :cond_0
    new-instance v16, Ljava/lang/AssertionError;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 740
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    .line 741
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    .line 742
    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->faces:[I

    .line 743
    move-object/from16 v16, v2

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v17, v9

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->smoothing:[I

    .line 745
    sget-boolean v16, Lcom/sun/prism/impl/PrismSettings;->skipMeshNormalComputation:Z

    if-eqz v16, :cond_c

    .line 746
    move-object/from16 v16, v4

    const/16 v17, 0x1

    aget v16, v16, v17

    if-lez v16, :cond_6

    const/16 v16, 0x1

    :goto_1
    move/from16 v11, v16

    .line 747
    .local v11, "updatePoints":Z
    move-object/from16 v16, v6

    const/16 v17, 0x1

    aget v16, v16, v17

    if-lez v16, :cond_7

    const/16 v16, 0x1

    :goto_2
    move/from16 v12, v16

    .line 748
    .local v12, "updateTexCoords":Z
    move-object/from16 v16, v8

    const/16 v17, 0x1

    aget v16, v16, v17

    if-lez v16, :cond_8

    const/16 v16, 0x1

    :goto_3
    move/from16 v13, v16

    .line 749
    .local v13, "updateFaces":Z
    move-object/from16 v16, v10

    const/16 v17, 0x1

    aget v16, v16, v17

    if-lez v16, :cond_9

    const/16 v16, 0x1

    :goto_4
    move/from16 v14, v16

    .line 752
    .local v14, "updateSmoothing":Z
    move/from16 v16, v11

    if-nez v16, :cond_a

    move/from16 v16, v12

    if-nez v16, :cond_a

    move/from16 v16, v13

    if-nez v16, :cond_a

    move/from16 v16, v14

    if-nez v16, :cond_a

    const/16 v16, 0x1

    :goto_5
    move/from16 v15, v16

    .line 755
    .local v15, "buildGeom":Z
    move/from16 v16, v13

    if-nez v16, :cond_2

    move/from16 v16, v14

    if-eqz v16, :cond_3

    .line 756
    :cond_2
    const/16 v16, 0x1

    move/from16 v15, v16

    .line 759
    :cond_3
    move/from16 v16, v15

    if-nez v16, :cond_b

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    .line 761
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    invoke-direct/range {v16 .. v18}, Lcom/sun/prism/impl/BaseMesh;->updateSkipMeshNormalGeometry([I[I)Z

    move-result v16

    move/from16 v2, v16

    .line 808
    .end local v2    # "this":Lcom/sun/prism/impl/BaseMesh;
    .end local v11    # "updatePoints":Z
    .end local v12    # "updateTexCoords":Z
    .end local v13    # "updateFaces":Z
    .end local v14    # "updateSmoothing":Z
    .end local v15    # "buildGeom":Z
    :goto_6
    return v2

    .line 743
    .restart local v2    # "this":Lcom/sun/prism/impl/BaseMesh;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 746
    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    .line 747
    .restart local v11    # "updatePoints":Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    .line 748
    .restart local v12    # "updateTexCoords":Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_3

    .line 749
    .restart local v13    # "updateFaces":Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_4

    .line 752
    .restart local v14    # "updateSmoothing":Z
    :cond_a
    const/16 v16, 0x0

    goto :goto_5

    .line 764
    .restart local v15    # "buildGeom":Z
    :cond_b
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Lcom/sun/prism/impl/BaseMesh;->buildSkipMeshNormalGeometry()Z

    move-result v16

    move/from16 v2, v16

    goto :goto_6

    .line 767
    .end local v11    # "updatePoints":Z
    .end local v12    # "updateTexCoords":Z
    .end local v13    # "updateFaces":Z
    .end local v14    # "updateSmoothing":Z
    .end local v15    # "buildGeom":Z
    :cond_c
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v16

    move-object/from16 v11, v16

    .line 769
    .local v11, "instance":Lcom/sun/prism/impl/MeshTempState;
    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pool:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pool:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v17, v0

    const/16 v18, 0x3

    mul-int/lit8 v17, v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    .line 770
    :cond_d
    move-object/from16 v16, v11

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v17, v0

    const/16 v18, 0x3

    mul-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/impl/MeshTempState;->pool:[Lcom/sun/prism/impl/MeshVertex;

    .line 773
    :cond_e
    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->indexBuffer:[I

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->indexBuffer:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v17, v0

    const/16 v18, 0x3

    mul-int/lit8 v17, v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    .line 774
    :cond_f
    move-object/from16 v16, v11

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v17, v0

    const/16 v18, 0x3

    mul-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/impl/MeshTempState;->indexBuffer:[I

    .line 777
    :cond_10
    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pVertex:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pVertex:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nVerts:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_14

    .line 778
    :cond_11
    move-object/from16 v16, v11

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nVerts:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/impl/MeshTempState;->pVertex:[Lcom/sun/prism/impl/MeshVertex;

    .line 784
    :goto_7
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Lcom/sun/prism/impl/BaseMesh;->checkSmoothingGroup()V

    .line 787
    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pool:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pVertex:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->indexBuffer:[I

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Lcom/sun/prism/impl/BaseMesh;->computeTBNormal([Lcom/sun/prism/impl/MeshVertex;[Lcom/sun/prism/impl/MeshVertex;[I)V

    .line 790
    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pVertex:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nVerts:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseMesh;->allHardEdges:Z

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sun/prism/impl/BaseMesh;->allSameSmoothing:Z

    move/from16 v19, v0

    invoke-static/range {v16 .. v19}, Lcom/sun/prism/impl/MeshVertex;->processVertices([Lcom/sun/prism/impl/MeshVertex;IZZ)I

    move-result v16

    move/from16 v12, v16

    .line 793
    .local v12, "nNewVerts":I
    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vertexBuffer:[F

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vertexBuffer:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v17, v12

    const/16 v18, 0x9

    mul-int/lit8 v17, v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_13

    .line 795
    :cond_12
    move-object/from16 v16, v11

    move/from16 v17, v12

    const/16 v18, 0x9

    mul-int/lit8 v17, v17, 0x9

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/impl/MeshTempState;->vertexBuffer:[F

    .line 797
    :cond_13
    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pVertex:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vertexBuffer:[F

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lcom/sun/prism/impl/BaseMesh;->buildVertexBuffer([Lcom/sun/prism/impl/MeshVertex;[F)V

    .line 799
    move/from16 v16, v12

    const/high16 v17, 0x10000

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_15

    .line 800
    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pool:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->indexBuffer:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v19}, Lcom/sun/prism/impl/BaseMesh;->buildIndexBuffer([Lcom/sun/prism/impl/MeshVertex;[I[S)V

    .line 801
    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vertexBuffer:[F

    move-object/from16 v17, v0

    move/from16 v18, v12

    const/16 v19, 0x9

    mul-int/lit8 v18, v18, 0x9

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->indexBuffer:[I

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v20, v0

    const/16 v21, 0x3

    mul-int/lit8 v20, v20, 0x3

    invoke-virtual/range {v16 .. v20}, Lcom/sun/prism/impl/BaseMesh;->buildNativeGeometry([FI[II)Z

    move-result v16

    move/from16 v2, v16

    goto/16 :goto_6

    .line 780
    .end local v12    # "nNewVerts":I
    :cond_14
    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pVertex:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pVertex:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_7

    .line 804
    .restart local v12    # "nNewVerts":I
    :cond_15
    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->indexBufferShort:[S

    move-object/from16 v16, v0

    if-eqz v16, :cond_16

    move-object/from16 v16, v11

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->indexBufferShort:[S

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v17, v0

    const/16 v18, 0x3

    mul-int/lit8 v17, v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    .line 805
    :cond_16
    move-object/from16 v16, v11

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v17, v0

    const/16 v18, 0x3

    mul-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [S

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/prism/impl/MeshTempState;->indexBufferShort:[S

    .line 807
    :cond_17
    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->pool:[Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->indexBuffer:[I

    move-object/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->indexBufferShort:[S

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Lcom/sun/prism/impl/BaseMesh;->buildIndexBuffer([Lcom/sun/prism/impl/MeshVertex;[I[S)V

    .line 808
    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->vertexBuffer:[F

    move-object/from16 v17, v0

    move/from16 v18, v12

    const/16 v19, 0x9

    mul-int/lit8 v18, v18, 0x9

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->indexBufferShort:[S

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v20, v0

    const/16 v21, 0x3

    mul-int/lit8 v20, v20, 0x3

    invoke-virtual/range {v16 .. v20}, Lcom/sun/prism/impl/BaseMesh;->buildNativeGeometry([FI[SI)Z

    move-result v16

    move/from16 v2, v16

    goto/16 :goto_6
.end method

.method private buildSkipMeshNormalGeometry()Z
    .locals 27

    .prologue
    .line 176
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/prism/impl/BaseMesh;
    new-instance v20, Ljava/util/HashMap;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, v20

    .line 178
    .local v4, "face2vbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 179
    move-object/from16 v20, v3

    new-instance v21, Ljava/util/HashMap;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    .line 183
    :goto_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 184
    move-object/from16 v20, v3

    new-instance v21, Ljava/util/HashMap;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    .line 192
    :goto_1
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nVerts:I

    move/from16 v21, v0

    const/16 v22, 0x9

    mul-int/lit8 v21, v21, 0x9

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    .line 193
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v21, v0

    const/16 v22, 0x3

    mul-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    .line 194
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 195
    .local v8, "ibCount":I
    const/16 v20, 0x0

    move/from16 v9, v20

    .line 197
    .local v9, "vbCount":I
    const/16 v20, 0x0

    move/from16 v10, v20

    .local v10, "faceCount":I
    :goto_2
    move/from16 v20, v10

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 198
    move/from16 v20, v10

    const/16 v21, 0x6

    mul-int/lit8 v20, v20, 0x6

    move/from16 v11, v20

    .line 199
    .local v11, "faceIndex":I
    const/16 v20, 0x0

    move/from16 v12, v20

    .local v12, "i":I
    :goto_3
    move/from16 v20, v12

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 200
    move/from16 v20, v12

    const/16 v21, 0x2

    mul-int/lit8 v20, v20, 0x2

    move/from16 v13, v20

    .line 201
    .local v13, "vertexIndex":I
    move/from16 v20, v11

    move/from16 v21, v13

    add-int v20, v20, v21

    move/from16 v14, v20

    .line 202
    .local v14, "pointIndex":I
    move/from16 v20, v14

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v15, v20

    .line 203
    .local v15, "texCoordIndex":I
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->faces:[I

    move-object/from16 v20, v0

    move/from16 v21, v14

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v22, 0x20

    shl-long v20, v20, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->faces:[I

    move-object/from16 v22, v0

    move/from16 v23, v15

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    or-long v20, v20, v22

    move-wide/from16 v16, v20

    .line 204
    .local v16, "key":J
    move-object/from16 v20, v4

    move-wide/from16 v21, v16

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v5, v20

    .line 205
    .local v5, "mf2vb":Ljava/lang/Integer;
    move-object/from16 v20, v5

    if-nez v20, :cond_1

    .line 206
    move/from16 v20, v9

    const/16 v21, 0x9

    div-int/lit8 v20, v20, 0x9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v5, v20

    .line 208
    move-object/from16 v20, v4

    move-wide/from16 v21, v16

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v22, v5

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 209
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v21, v9

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 210
    move/from16 v20, v9

    const/16 v21, 0x5a

    add-int/lit8 v20, v20, 0x5a

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v18, v20

    .line 211
    .local v18, "temp":[F
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v22, v18

    const/16 v23, 0x0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    move-object/from16 v20, v3

    move-object/from16 v21, v18

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    .line 214
    .end local v18    # "temp":[F
    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->faces:[I

    move-object/from16 v20, v0

    move/from16 v21, v14

    aget v20, v20, v21

    const/16 v21, 0x3

    mul-int/lit8 v20, v20, 0x3

    move/from16 v18, v20

    .line 215
    .local v18, "pointOffset":I
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->faces:[I

    move-object/from16 v20, v0

    move/from16 v21, v15

    aget v20, v20, v21

    const/16 v21, 0x2

    mul-int/lit8 v20, v20, 0x2

    move/from16 v19, v20

    .line 216
    .local v19, "texCoordOffset":I
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    move/from16 v21, v9

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move-object/from16 v22, v0

    move/from16 v23, v18

    aget v22, v22, v23

    aput v22, v20, v21

    .line 217
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    move/from16 v21, v9

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move-object/from16 v22, v0

    move/from16 v23, v18

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    aput v22, v20, v21

    .line 218
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    move/from16 v21, v9

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move-object/from16 v22, v0

    move/from16 v23, v18

    const/16 v24, 0x2

    add-int/lit8 v23, v23, 0x2

    aget v22, v22, v23

    aput v22, v20, v21

    .line 219
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    move/from16 v21, v9

    const/16 v22, 0x3

    add-int/lit8 v21, v21, 0x3

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    move-object/from16 v22, v0

    move/from16 v23, v19

    aget v22, v22, v23

    aput v22, v20, v21

    .line 220
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    move/from16 v21, v9

    const/16 v22, 0x4

    add-int/lit8 v21, v21, 0x4

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    move-object/from16 v22, v0

    move/from16 v23, v19

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    aput v22, v20, v21

    .line 221
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    move/from16 v21, v9

    const/16 v22, 0x5

    add-int/lit8 v21, v21, 0x5

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 222
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    move/from16 v21, v9

    const/16 v22, 0x6

    add-int/lit8 v21, v21, 0x6

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 223
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    move/from16 v21, v9

    const/16 v22, 0x7

    add-int/lit8 v21, v21, 0x7

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 224
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v20, v0

    move/from16 v21, v9

    const/16 v22, 0x8

    add-int/lit8 v21, v21, 0x8

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 225
    add-int/lit8 v9, v9, 0x9

    .line 227
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move/from16 v21, v18

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v6, v20

    .line 228
    .local v6, "mp2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move-object/from16 v20, v6

    if-nez v20, :cond_4

    .line 230
    new-instance v20, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    move/from16 v23, v18

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-direct/range {v21 .. v24}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;-><init>(Lcom/sun/prism/impl/BaseMesh;II)V

    move-object/from16 v6, v20

    .line 231
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move/from16 v21, v18

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v22, v6

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 237
    :goto_4
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move/from16 v21, v19

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v7, v20

    .line 238
    .local v7, "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move-object/from16 v20, v7

    if-nez v20, :cond_5

    .line 240
    new-instance v20, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    move/from16 v23, v19

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-direct/range {v21 .. v24}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;-><init>(Lcom/sun/prism/impl/BaseMesh;II)V

    move-object/from16 v7, v20

    .line 241
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move/from16 v21, v19

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v22, v7

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 249
    .end local v6    # "mp2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v7    # "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v18    # "pointOffset":I
    .end local v19    # "texCoordOffset":I
    :cond_1
    :goto_5
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v20, v0

    move/from16 v21, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aput v22, v20, v21

    .line 199
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 181
    .end local v5    # "mf2vb":Ljava/lang/Integer;
    .end local v8    # "ibCount":I
    .end local v9    # "vbCount":I
    .end local v10    # "faceCount":I
    .end local v11    # "faceIndex":I
    .end local v12    # "i":I
    .end local v13    # "vertexIndex":I
    .end local v14    # "pointIndex":I
    .end local v15    # "texCoordIndex":I
    .end local v16    # "key":J
    :cond_2
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 186
    :cond_3
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    .line 234
    .restart local v5    # "mf2vb":Ljava/lang/Integer;
    .restart local v6    # "mp2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .restart local v8    # "ibCount":I
    .restart local v9    # "vbCount":I
    .restart local v10    # "faceCount":I
    .restart local v11    # "faceIndex":I
    .restart local v12    # "i":I
    .restart local v13    # "vertexIndex":I
    .restart local v14    # "pointIndex":I
    .restart local v15    # "texCoordIndex":I
    .restart local v16    # "key":J
    .restart local v18    # "pointOffset":I
    .restart local v19    # "texCoordOffset":I
    :cond_4
    move-object/from16 v20, v6

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->addLoc(I)V

    goto/16 :goto_4

    .line 244
    .restart local v7    # "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    :cond_5
    move-object/from16 v20, v7

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->addLoc(I)V

    goto :goto_5

    .line 197
    .end local v5    # "mf2vb":Ljava/lang/Integer;
    .end local v6    # "mp2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v7    # "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v13    # "vertexIndex":I
    .end local v14    # "pointIndex":I
    .end local v15    # "texCoordIndex":I
    .end local v16    # "key":J
    .end local v18    # "pointOffset":I
    .end local v19    # "texCoordOffset":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 253
    .end local v11    # "faceIndex":I
    .end local v12    # "i":I
    :cond_7
    move-object/from16 v20, v3

    move/from16 v21, v9

    const/16 v22, 0x9

    div-int/lit8 v21, v21, 0x9

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    .line 255
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v20, v0

    const/high16 v21, 0x10000

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 256
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v22, v0

    const/16 v23, 0x9

    mul-int/lit8 v22, v22, 0x9

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v24, v0

    const/16 v25, 0x3

    mul-int/lit8 v24, v24, 0x3

    invoke-virtual/range {v20 .. v24}, Lcom/sun/prism/impl/BaseMesh;->buildNativeGeometry([FI[II)Z

    move-result v20

    move/from16 v3, v20

    .line 270
    .end local v3    # "this":Lcom/sun/prism/impl/BaseMesh;
    .end local v10    # "faceCount":I
    :goto_6
    return v3

    .line 260
    .restart local v3    # "this":Lcom/sun/prism/impl/BaseMesh;
    .restart local v10    # "faceCount":I
    :cond_8
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v21, v0

    const/16 v22, 0x3

    mul-int/lit8 v21, v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 261
    :cond_9
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v21, v0

    const/16 v22, 0x3

    mul-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [S

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    .line 263
    :cond_a
    const/16 v20, 0x0

    move/from16 v10, v20

    .line 264
    .local v10, "ii":I
    const/16 v20, 0x0

    move/from16 v11, v20

    .local v11, "i":I
    :goto_7
    move/from16 v20, v11

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 265
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v20, v0

    move/from16 v21, v10

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v22, v0

    move/from16 v23, v10

    add-int/lit8 v10, v10, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v20, v21

    .line 266
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v20, v0

    move/from16 v21, v10

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v22, v0

    move/from16 v23, v10

    add-int/lit8 v10, v10, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v20, v21

    .line 267
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v20, v0

    move/from16 v21, v10

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v22, v0

    move/from16 v23, v10

    add-int/lit8 v10, v10, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v20, v21

    .line 264
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 269
    :cond_b
    move-object/from16 v20, v3

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    .line 270
    move-object/from16 v20, v3

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v22, v0

    const/16 v23, 0x9

    mul-int/lit8 v22, v22, 0x9

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v24, v0

    const/16 v25, 0x3

    mul-int/lit8 v24, v24, 0x3

    invoke-virtual/range {v20 .. v24}, Lcom/sun/prism/impl/BaseMesh;->buildNativeGeometry([FI[SI)Z

    move-result v20

    move/from16 v3, v20

    goto/16 :goto_6
.end method

.method private buildVSQuat([Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Quat4f;)V
    .locals 9

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object v1, p1

    .local v1, "tm":[Lcom/sun/javafx/geom/Vec3f;
    move-object v2, p2

    .local v2, "quat":Lcom/sun/javafx/geom/Quat4f;
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v5

    iget-object v5, v5, Lcom/sun/prism/impl/MeshTempState;->vec3f1:Lcom/sun/javafx/geom/Vec3f;

    move-object v3, v5

    .line 885
    .local v3, "v":Lcom/sun/javafx/geom/Vec3f;
    move-object v5, v3

    move-object v6, v1

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object v7, v1

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Vec3f;->cross(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;)V

    .line 886
    move-object v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Vec3f;->dot(Lcom/sun/javafx/geom/Vec3f;)F

    move-result v5

    move v4, v5

    .line 887
    .local v4, "d":F
    move v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 888
    move-object v5, v1

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Vec3f;->mul(F)V

    .line 891
    :cond_0
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/prism/impl/MeshUtil;->buildQuat([Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Quat4f;)V

    .line 896
    move v5, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 897
    move-object v5, v2

    iget v5, v5, Lcom/sun/javafx/geom/Quat4f;->w:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 898
    move-object v5, v2

    const v6, 0x2edbe6ff    # 1.0E-10f

    iput v6, v5, Lcom/sun/javafx/geom/Quat4f;->w:F

    .line 900
    :cond_1
    move-object v5, v2

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Quat4f;->scale(F)V

    .line 902
    :cond_2
    return-void
.end method

.method private buildVertexBuffer([Lcom/sun/prism/impl/MeshVertex;[F)V
    .locals 14

    .prologue
    .line 905
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object v1, p1

    .local v1, "pVerts":[Lcom/sun/prism/impl/MeshVertex;
    move-object/from16 v2, p2

    .local v2, "vertexBuffer":[F
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v9

    iget-object v9, v9, Lcom/sun/prism/impl/MeshTempState;->quat:Lcom/sun/javafx/geom/Quat4f;

    move-object v3, v9

    .line 906
    .local v3, "quat":Lcom/sun/javafx/geom/Quat4f;
    const/4 v9, 0x0

    move v4, v9

    .line 908
    .local v4, "idLast":I
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "index":I
    :goto_0
    move v9, v5

    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/impl/BaseMesh;->nVerts:I

    if-ge v9, v10, :cond_2

    .line 909
    move-object v9, v1

    move v10, v5

    aget-object v9, v9, v10

    move-object v7, v9

    .line 910
    .local v7, "v":Lcom/sun/prism/impl/MeshVertex;
    :goto_1
    move-object v9, v7

    if-eqz v9, :cond_1

    .line 911
    move-object v9, v7

    iget v9, v9, Lcom/sun/prism/impl/MeshVertex;->index:I

    move v10, v4

    if-ne v9, v10, :cond_0

    .line 912
    move-object v9, v7

    iget v9, v9, Lcom/sun/prism/impl/MeshVertex;->pVert:I

    const/4 v10, 0x3

    mul-int/lit8 v9, v9, 0x3

    move v8, v9

    .line 913
    .local v8, "ind":I
    move-object v9, v2

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move v12, v8

    aget v11, v11, v12

    aput v11, v9, v10

    .line 914
    move-object v9, v2

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 915
    move-object v9, v2

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move v12, v8

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    aget v11, v11, v12

    aput v11, v9, v10

    .line 916
    move-object v9, v7

    iget v9, v9, Lcom/sun/prism/impl/MeshVertex;->tVert:I

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    move v8, v9

    .line 917
    move-object v9, v2

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    move v12, v8

    aget v11, v11, v12

    aput v11, v9, v10

    .line 918
    move-object v9, v2

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 919
    move-object v9, v0

    move-object v10, v7

    iget-object v10, v10, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Lcom/sun/prism/impl/BaseMesh;->buildVSQuat([Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Quat4f;)V

    .line 920
    move-object v9, v2

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v3

    iget v11, v11, Lcom/sun/javafx/geom/Quat4f;->x:F

    aput v11, v9, v10

    .line 921
    move-object v9, v2

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v3

    iget v11, v11, Lcom/sun/javafx/geom/Quat4f;->y:F

    aput v11, v9, v10

    .line 922
    move-object v9, v2

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v3

    iget v11, v11, Lcom/sun/javafx/geom/Quat4f;->z:F

    aput v11, v9, v10

    .line 923
    move-object v9, v2

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v3

    iget v11, v11, Lcom/sun/javafx/geom/Quat4f;->w:F

    aput v11, v9, v10

    .line 924
    add-int/lit8 v4, v4, 0x1

    .line 910
    .end local v8    # "ind":I
    :cond_0
    move-object v9, v7

    iget-object v9, v9, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v7, v9

    goto/16 :goto_1

    .line 908
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 928
    .end local v7    # "v":Lcom/sun/prism/impl/MeshVertex;
    :cond_2
    return-void
.end method

.method private checkSmoothingGroup()V
    .locals 6

    .prologue
    .line 986
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseMesh;->smoothing:[I

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseMesh;->smoothing:[I

    array-length v2, v2

    if-nez v2, :cond_1

    .line 987
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseMesh;->allSameSmoothing:Z

    .line 988
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseMesh;->allHardEdges:Z

    .line 989
    .line 1008
    :goto_0
    return-void

    .line 992
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_1
    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseMesh;->smoothing:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 993
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseMesh;->smoothing:[I

    move v3, v1

    aget v2, v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseMesh;->smoothing:[I

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_2

    .line 995
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseMesh;->allSameSmoothing:Z

    .line 996
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseMesh;->allHardEdges:Z

    .line 997
    goto :goto_0

    .line 992
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1001
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseMesh;->smoothing:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_4

    .line 1002
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseMesh;->allSameSmoothing:Z

    .line 1003
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseMesh;->allHardEdges:Z

    .line 1008
    :goto_2
    goto :goto_0

    .line 1005
    :cond_4
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseMesh;->allSameSmoothing:Z

    .line 1006
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseMesh;->allHardEdges:Z

    goto :goto_2
.end method

.method private computeTBNormal([Lcom/sun/prism/impl/MeshVertex;[Lcom/sun/prism/impl/MeshVertex;[I)V
    .locals 28

    .prologue
    .line 814
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object/from16 v3, p1

    .local v3, "pool":[Lcom/sun/prism/impl/MeshVertex;
    move-object/from16 v4, p2

    .local v4, "pVertex":[Lcom/sun/prism/impl/MeshVertex;
    move-object/from16 v5, p3

    .local v5, "indexBuffer":[I
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v20

    move-object/from16 v6, v20

    .line 817
    .local v6, "instance":Lcom/sun/prism/impl/MeshTempState;
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->smFace:[I

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 818
    .local v7, "smFace":[I
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triVerts:[I

    move-object/from16 v20, v0

    move-object/from16 v8, v20

    .line 819
    .local v8, "triVerts":[I
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v20, v0

    move-object/from16 v9, v20

    .line 820
    .local v9, "triPoints":[Lcom/sun/javafx/geom/Vec3f;
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v20, v0

    move-object/from16 v10, v20

    .line 821
    .local v10, "triTexCoords":[Lcom/sun/javafx/geom/Vec2f;
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v20, v0

    move-object/from16 v11, v20

    .line 822
    .local v11, "triNormals":[Lcom/sun/javafx/geom/Vec3f;
    const-class v20, Lcom/sun/prism/impl/BaseMesh;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    .line 824
    .local v12, "logname":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v13, v20

    .local v13, "f":I
    const/16 v20, 0x0

    move/from16 v14, v20

    .local v14, "nDeadFaces":I
    const/16 v20, 0x0

    move/from16 v15, v20

    .local v15, "poolIndex":I
    :goto_0
    move/from16 v20, v13

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 825
    move/from16 v20, v13

    const/16 v21, 0x3

    mul-int/lit8 v20, v20, 0x3

    move/from16 v16, v20

    .line 827
    .local v16, "index":I
    move-object/from16 v20, v2

    move/from16 v21, v13

    move-object/from16 v22, v7

    invoke-virtual/range {v20 .. v22}, Lcom/sun/prism/impl/BaseMesh;->getFace(I[I)[I

    move-result-object v20

    move-object/from16 v7, v20

    .line 830
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v7

    sget-object v23, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT0:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->ordinal()I

    move-result v23

    aget v22, v22, v23

    aput v22, v20, v21

    .line 831
    move-object/from16 v20, v8

    const/16 v21, 0x1

    move-object/from16 v22, v7

    sget-object v23, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT1:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->ordinal()I

    move-result v23

    aget v22, v22, v23

    aput v22, v20, v21

    .line 832
    move-object/from16 v20, v8

    const/16 v21, 0x2

    move-object/from16 v22, v7

    sget-object v23, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT2:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->ordinal()I

    move-result v23

    aget v22, v22, v23

    aput v22, v20, v21

    .line 834
    move-object/from16 v20, v8

    invoke-static/range {v20 .. v20}, Lcom/sun/prism/impl/MeshUtil;->isDeadFace([I)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, v12

    .line 835
    invoke-static/range {v20 .. v20}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v20

    sget-object v21, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v20 .. v21}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 837
    add-int/lit8 v14, v14, 0x1

    .line 838
    move-object/from16 v20, v12

    invoke-static/range {v20 .. v20}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Dead face ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v8

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v8

    const/16 v23, 0x1

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v8

    const/16 v23, 0x2

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] @ face group "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "; nEmptyFaces = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 843
    :cond_0
    const/16 v20, 0x0

    move/from16 v17, v20

    .local v17, "i":I
    :goto_1
    move/from16 v20, v17

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 844
    move-object/from16 v20, v9

    move/from16 v21, v17

    move-object/from16 v22, v2

    move-object/from16 v23, v8

    move/from16 v24, v17

    aget v23, v23, v24

    move-object/from16 v24, v9

    move/from16 v25, v17

    aget-object v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/sun/prism/impl/BaseMesh;->getVertex(ILcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;

    move-result-object v22

    aput-object v22, v20, v21

    .line 843
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 848
    :cond_1
    move-object/from16 v20, v8

    const/16 v21, 0x0

    move-object/from16 v22, v7

    sget-object v23, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->TEXCOORD0:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->ordinal()I

    move-result v23

    aget v22, v22, v23

    aput v22, v20, v21

    .line 849
    move-object/from16 v20, v8

    const/16 v21, 0x1

    move-object/from16 v22, v7

    sget-object v23, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->TEXCOORD1:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->ordinal()I

    move-result v23

    aget v22, v22, v23

    aput v22, v20, v21

    .line 850
    move-object/from16 v20, v8

    const/16 v21, 0x2

    move-object/from16 v22, v7

    sget-object v23, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->TEXCOORD2:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->ordinal()I

    move-result v23

    aget v22, v22, v23

    aput v22, v20, v21

    .line 852
    const/16 v20, 0x0

    move/from16 v17, v20

    :goto_2
    move/from16 v20, v17

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 853
    move-object/from16 v20, v10

    move/from16 v21, v17

    move-object/from16 v22, v2

    move-object/from16 v23, v8

    move/from16 v24, v17

    aget v23, v23, v24

    move-object/from16 v24, v10

    move/from16 v25, v17

    aget-object v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/sun/prism/impl/BaseMesh;->getTVertex(ILcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;

    move-result-object v22

    aput-object v22, v20, v21

    .line 852
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 856
    :cond_2
    move-object/from16 v20, v9

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v21, v9

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v22, v9

    const/16 v23, 0x2

    aget-object v22, v22, v23

    move-object/from16 v23, v10

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v24, v10

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v25, v10

    const/16 v26, 0x2

    aget-object v25, v25, v26

    move-object/from16 v26, v11

    invoke-static/range {v20 .. v26}, Lcom/sun/prism/impl/MeshUtil;->computeTBNNormalized(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec2f;Lcom/sun/javafx/geom/Vec2f;Lcom/sun/javafx/geom/Vec2f;[Lcom/sun/javafx/geom/Vec3f;)V

    .line 860
    const/16 v20, 0x0

    move/from16 v17, v20

    .local v17, "j":I
    :goto_3
    move/from16 v20, v17

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 861
    move-object/from16 v20, v3

    move/from16 v21, v15

    move-object/from16 v22, v3

    move/from16 v23, v15

    aget-object v22, v22, v23

    if-nez v22, :cond_3

    new-instance v22, Lcom/sun/prism/impl/MeshVertex;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Lcom/sun/prism/impl/MeshVertex;-><init>()V

    :goto_4
    aput-object v22, v20, v21

    .line 863
    const/16 v20, 0x0

    move/from16 v18, v20

    .local v18, "i":I
    :goto_5
    move/from16 v20, v18

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 864
    move-object/from16 v20, v3

    move/from16 v21, v15

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v20, v0

    move/from16 v21, v18

    aget-object v20, v20, v21

    move-object/from16 v21, v11

    move/from16 v22, v18

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 863
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 861
    .end local v18    # "i":I
    :cond_3
    move-object/from16 v22, v3

    move/from16 v23, v15

    aget-object v22, v22, v23

    goto :goto_4

    .line 866
    .restart local v18    # "i":I
    :cond_4
    move-object/from16 v20, v3

    move/from16 v21, v15

    aget-object v20, v20, v21

    move-object/from16 v21, v7

    sget-object v22, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->SMOOTHING_GROUP:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->ordinal()I

    move-result v22

    aget v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    .line 867
    move-object/from16 v20, v3

    move/from16 v21, v15

    aget-object v20, v20, v21

    move/from16 v21, v13

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/prism/impl/MeshVertex;->fIdx:I

    .line 868
    move-object/from16 v20, v3

    move/from16 v21, v15

    aget-object v20, v20, v21

    move-object/from16 v21, v8

    move/from16 v22, v17

    aget v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/prism/impl/MeshVertex;->tVert:I

    .line 869
    move-object/from16 v20, v3

    move/from16 v21, v15

    aget-object v20, v20, v21

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/prism/impl/MeshVertex;->index:I

    .line 870
    move/from16 v20, v17

    if-nez v20, :cond_5

    sget-object v20, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT0:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->ordinal()I

    move-result v20

    .line 872
    :goto_6
    move/from16 v18, v20

    .line 873
    .local v18, "ii":I
    move-object/from16 v20, v7

    move/from16 v21, v18

    aget v20, v20, v21

    move/from16 v19, v20

    .line 874
    .local v19, "pIdx":I
    move-object/from16 v20, v3

    move/from16 v21, v15

    aget-object v20, v20, v21

    move/from16 v21, v19

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sun/prism/impl/MeshVertex;->pVert:I

    .line 875
    move-object/from16 v20, v5

    move/from16 v21, v16

    move/from16 v22, v17

    add-int v21, v21, v22

    move/from16 v22, v19

    aput v22, v20, v21

    .line 876
    move-object/from16 v20, v3

    move/from16 v21, v15

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    move/from16 v22, v19

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    .line 877
    move-object/from16 v20, v4

    move/from16 v21, v19

    move-object/from16 v22, v3

    move/from16 v23, v15

    aget-object v22, v22, v23

    aput-object v22, v20, v21

    .line 878
    add-int/lit8 v15, v15, 0x1

    .line 860
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 870
    .end local v19    # "pIdx":I
    .local v18, "i":I
    :cond_5
    move/from16 v20, v17

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    sget-object v20, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT1:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    .line 871
    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->ordinal()I

    move-result v20

    goto :goto_6

    :cond_6
    sget-object v20, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT2:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    .line 872
    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->ordinal()I

    move-result v20

    goto :goto_6

    .line 824
    .end local v18    # "i":I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 881
    .end local v16    # "index":I
    .end local v17    # "j":I
    :cond_8
    return-void
.end method

.method private convertNormalsToQuats(Lcom/sun/prism/impl/MeshTempState;I[F[F[F[F[Z)V
    .locals 19

    .prologue
    .line 279
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object/from16 v2, p1

    .local v2, "instance":Lcom/sun/prism/impl/MeshTempState;
    move/from16 v3, p2

    .local v3, "numberOfVertices":I
    move-object/from16 v4, p3

    .local v4, "normals":[F
    move-object/from16 v5, p4

    .local v5, "tangents":[F
    move-object/from16 v6, p5

    .local v6, "bitangents":[F
    move-object/from16 v7, p6

    .local v7, "vertexBuffer":[F
    move-object/from16 v8, p7

    .local v8, "dirtys":[Z
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/prism/impl/MeshTempState;->vec3f1:Lcom/sun/javafx/geom/Vec3f;

    move-object v9, v15

    .line 280
    .local v9, "normal":Lcom/sun/javafx/geom/Vec3f;
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/prism/impl/MeshTempState;->vec3f2:Lcom/sun/javafx/geom/Vec3f;

    move-object v10, v15

    .line 281
    .local v10, "tangent":Lcom/sun/javafx/geom/Vec3f;
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/prism/impl/MeshTempState;->vec3f3:Lcom/sun/javafx/geom/Vec3f;

    move-object v11, v15

    .line 282
    .local v11, "bitangent":Lcom/sun/javafx/geom/Vec3f;
    const/4 v15, 0x0

    move v12, v15

    .local v12, "i":I
    const/4 v15, 0x0

    move v13, v15

    .local v13, "vbIndex":I
    :goto_0
    move v15, v12

    move/from16 v16, v3

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 284
    move-object v15, v8

    if-eqz v15, :cond_0

    move-object v15, v8

    move/from16 v16, v12

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_1

    .line 285
    :cond_0
    move v15, v12

    const/16 v16, 0x3

    mul-int/lit8 v15, v15, 0x3

    move v14, v15

    .line 287
    .local v14, "index":I
    move-object v15, v9

    move-object/from16 v16, v4

    move/from16 v17, v14

    aget v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 288
    move-object v15, v9

    move-object/from16 v16, v4

    move/from16 v17, v14

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 289
    move-object v15, v9

    move-object/from16 v16, v4

    move/from16 v17, v14

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 290
    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 293
    move-object v15, v10

    move-object/from16 v16, v5

    move/from16 v17, v14

    aget v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 294
    move-object v15, v10

    move-object/from16 v16, v5

    move/from16 v17, v14

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 295
    move-object v15, v10

    move-object/from16 v16, v5

    move/from16 v17, v14

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 296
    move-object v15, v11

    move-object/from16 v16, v6

    move/from16 v17, v14

    aget v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 297
    move-object v15, v11

    move-object/from16 v16, v6

    move/from16 v17, v14

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 298
    move-object v15, v11

    move-object/from16 v16, v6

    move/from16 v17, v14

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 300
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 301
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 302
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    move-object/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 303
    move-object v15, v2

    iget-object v15, v15, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    invoke-static {v15}, Lcom/sun/prism/impl/MeshUtil;->fixTSpace([Lcom/sun/javafx/geom/Vec3f;)V

    .line 304
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->quat:Lcom/sun/javafx/geom/Quat4f;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/sun/prism/impl/BaseMesh;->buildVSQuat([Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Quat4f;)V

    .line 306
    move-object v15, v7

    move/from16 v16, v13

    const/16 v17, 0x5

    add-int/lit8 v16, v16, 0x5

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->quat:Lcom/sun/javafx/geom/Quat4f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Quat4f;->x:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 307
    move-object v15, v7

    move/from16 v16, v13

    const/16 v17, 0x6

    add-int/lit8 v16, v16, 0x6

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->quat:Lcom/sun/javafx/geom/Quat4f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Quat4f;->y:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 308
    move-object v15, v7

    move/from16 v16, v13

    const/16 v17, 0x7

    add-int/lit8 v16, v16, 0x7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->quat:Lcom/sun/javafx/geom/Quat4f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Quat4f;->z:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 309
    move-object v15, v7

    move/from16 v16, v13

    const/16 v17, 0x8

    add-int/lit8 v16, v16, 0x8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->quat:Lcom/sun/javafx/geom/Quat4f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Quat4f;->w:F

    move/from16 v17, v0

    aput v17, v15, v16

    .line 282
    .end local v14    # "index":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x9

    goto/16 :goto_0

    .line 312
    :cond_2
    return-void
.end method

.method private doBuildPNTGeometry([F[F[F[I)Z
    .locals 43

    .prologue
    .line 318
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object/from16 v3, p1

    .local v3, "points":[F
    move-object/from16 v4, p2

    .local v4, "normals":[F
    move-object/from16 v5, p3

    .local v5, "texCoords":[F
    move-object/from16 v6, p4

    .local v6, "faces":[I
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    if-nez v34, :cond_1

    .line 319
    move-object/from16 v34, v2

    new-instance v35, Ljava/util/HashMap;

    move-object/from16 v42, v35

    move-object/from16 v35, v42

    move-object/from16 v36, v42

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    .line 323
    :goto_0
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->normal2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    if-nez v34, :cond_2

    .line 324
    move-object/from16 v34, v2

    new-instance v35, Ljava/util/HashMap;

    move-object/from16 v42, v35

    move-object/from16 v35, v42

    move-object/from16 v36, v42

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->normal2vbMap:Ljava/util/HashMap;

    .line 328
    :goto_1
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    if-nez v34, :cond_3

    .line 329
    move-object/from16 v34, v2

    new-instance v35, Ljava/util/HashMap;

    move-object/from16 v42, v35

    move-object/from16 v35, v42

    move-object/from16 v36, v42

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    .line 334
    :goto_2
    sget-object v34, Ljavafx/scene/shape/VertexFormat;->POINT_NORMAL_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/shape/VertexFormat;->getVertexIndexSize()I

    move-result v34

    move/from16 v7, v34

    .line 335
    .local v7, "vertexIndexSize":I
    move/from16 v34, v7

    const/16 v35, 0x3

    mul-int/lit8 v34, v34, 0x3

    move/from16 v8, v34

    .line 336
    .local v8, "faceIndexSize":I
    sget-object v34, Ljavafx/scene/shape/VertexFormat;->POINT_NORMAL_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/shape/VertexFormat;->getPointIndexOffset()I

    move-result v34

    move/from16 v9, v34

    .line 337
    .local v9, "pointIndexOffset":I
    sget-object v34, Ljavafx/scene/shape/VertexFormat;->POINT_NORMAL_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/shape/VertexFormat;->getNormalIndexOffset()I

    move-result v34

    move/from16 v10, v34

    .line 338
    .local v10, "normalIndexOffset":I
    sget-object v34, Ljavafx/scene/shape/VertexFormat;->POINT_NORMAL_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/shape/VertexFormat;->getTexCoordIndexOffset()I

    move-result v34

    move/from16 v11, v34

    .line 340
    .local v11, "texCoordIndexOffset":I
    move-object/from16 v34, v3

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x3

    div-int/lit8 v34, v34, 0x3

    move/from16 v12, v34

    .line 341
    .local v12, "numPoints":I
    move-object/from16 v34, v4

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x3

    div-int/lit8 v34, v34, 0x3

    move/from16 v13, v34

    .line 342
    .local v13, "numNormals":I
    move-object/from16 v34, v5

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x2

    div-int/lit8 v34, v34, 0x2

    move/from16 v14, v34

    .line 343
    .local v14, "numTexCoords":I
    move-object/from16 v34, v6

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v35, v8

    div-int v34, v34, v35

    move/from16 v15, v34

    .line 344
    .local v15, "numFaces":I
    sget-boolean v34, Lcom/sun/prism/impl/BaseMesh;->$assertionsDisabled:Z

    if-nez v34, :cond_4

    move/from16 v34, v12

    if-lez v34, :cond_0

    move/from16 v34, v13

    if-lez v34, :cond_0

    move/from16 v34, v14

    if-lez v34, :cond_0

    move/from16 v34, v15

    if-gtz v34, :cond_4

    :cond_0
    new-instance v34, Ljava/lang/AssertionError;

    move-object/from16 v42, v34

    move-object/from16 v34, v42

    move-object/from16 v35, v42

    invoke-direct/range {v35 .. v35}, Ljava/lang/AssertionError;-><init>()V

    throw v34

    .line 321
    .end local v7    # "vertexIndexSize":I
    .end local v8    # "faceIndexSize":I
    .end local v9    # "pointIndexOffset":I
    .end local v10    # "normalIndexOffset":I
    .end local v11    # "texCoordIndexOffset":I
    .end local v12    # "numPoints":I
    .end local v13    # "numNormals":I
    .end local v14    # "numTexCoords":I
    .end local v15    # "numFaces":I
    :cond_1
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 326
    :cond_2
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->normal2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    .line 331
    :cond_3
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_2

    .line 351
    .restart local v7    # "vertexIndexSize":I
    .restart local v8    # "faceIndexSize":I
    .restart local v9    # "pointIndexOffset":I
    .restart local v10    # "normalIndexOffset":I
    .restart local v11    # "texCoordIndexOffset":I
    .restart local v12    # "numPoints":I
    .restart local v13    # "numNormals":I
    .restart local v14    # "numTexCoords":I
    .restart local v15    # "numFaces":I
    :cond_4
    move-object/from16 v34, v2

    move/from16 v35, v12

    const/16 v36, 0x3

    mul-int/lit8 v35, v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    .line 352
    move-object/from16 v34, v2

    move/from16 v35, v12

    const/16 v36, 0x3

    mul-int/lit8 v35, v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    .line 353
    move-object/from16 v34, v2

    move/from16 v35, v12

    const/16 v36, 0x3

    mul-int/lit8 v35, v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    .line 354
    move-object/from16 v34, v2

    move/from16 v35, v12

    const/16 v36, 0x9

    mul-int/lit8 v35, v35, 0x9

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    .line 355
    move-object/from16 v34, v2

    move/from16 v35, v15

    const/16 v36, 0x3

    mul-int/lit8 v35, v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    .line 356
    const/16 v34, 0x0

    move/from16 v20, v34

    .line 357
    .local v20, "ibCount":I
    const/16 v34, 0x0

    move/from16 v21, v34

    .line 359
    .local v21, "vbCount":I
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v34

    move-object/from16 v22, v34

    .line 360
    .local v22, "instance":Lcom/sun/prism/impl/MeshTempState;
    const/16 v34, 0x0

    move/from16 v23, v34

    .local v23, "i":I
    :goto_3
    move/from16 v34, v23

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    .line 361
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v34, v0

    move/from16 v35, v23

    aget-object v34, v34, v35

    if-nez v34, :cond_5

    .line 362
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v34, v0

    move/from16 v35, v23

    new-instance v36, Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    invoke-direct/range {v37 .. v37}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    aput-object v36, v34, v35

    .line 364
    :cond_5
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v34, v0

    move/from16 v35, v23

    aget-object v34, v34, v35

    if-nez v34, :cond_6

    .line 365
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v34, v0

    move/from16 v35, v23

    new-instance v36, Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    invoke-direct/range {v37 .. v37}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    aput-object v36, v34, v35

    .line 360
    :cond_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 369
    :cond_7
    const/16 v34, 0x0

    move/from16 v23, v34

    .local v23, "faceCount":I
    :goto_4
    move/from16 v34, v23

    move/from16 v35, v15

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_f

    .line 370
    move/from16 v34, v23

    move/from16 v35, v8

    mul-int v34, v34, v35

    move/from16 v24, v34

    .line 371
    .local v24, "faceIndex":I
    const/16 v34, 0x0

    move/from16 v25, v34

    .local v25, "i":I
    :goto_5
    move/from16 v34, v25

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_c

    .line 372
    move/from16 v34, v24

    move/from16 v35, v25

    move/from16 v36, v7

    mul-int v35, v35, v36

    add-int v34, v34, v35

    move/from16 v26, v34

    .line 373
    .local v26, "vertexIndex":I
    move/from16 v34, v26

    move/from16 v35, v9

    add-int v34, v34, v35

    move/from16 v27, v34

    .line 374
    .local v27, "pointIndex":I
    move/from16 v34, v26

    move/from16 v35, v10

    add-int v34, v34, v35

    move/from16 v28, v34

    .line 375
    .local v28, "normalIndex":I
    move/from16 v34, v26

    move/from16 v35, v11

    add-int v34, v34, v35

    move/from16 v29, v34

    .line 377
    .local v29, "texCoordIndex":I
    move/from16 v34, v21

    const/16 v35, 0x9

    div-int/lit8 v34, v34, 0x9

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v16, v34

    .line 379
    .local v16, "mf2vb":Ljava/lang/Integer;
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v35, v21

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_8

    .line 380
    move/from16 v34, v21

    const/16 v35, 0x14

    add-int/lit8 v34, v34, 0x14

    move/from16 v30, v34

    .line 381
    .local v30, "incrementedSize":I
    move/from16 v34, v30

    const/16 v35, 0x9

    mul-int/lit8 v34, v34, 0x9

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v31, v34

    .line 382
    .local v31, "temp":[F
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v36, v31

    const/16 v37, 0x0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    invoke-static/range {v34 .. v38}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    move-object/from16 v34, v2

    move-object/from16 v35, v31

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    .line 385
    move/from16 v34, v30

    const/16 v35, 0x3

    mul-int/lit8 v34, v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v31, v34

    .line 386
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v36, v31

    const/16 v37, 0x0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    invoke-static/range {v34 .. v38}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    move-object/from16 v34, v2

    move-object/from16 v35, v31

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    .line 388
    move/from16 v34, v30

    const/16 v35, 0x3

    mul-int/lit8 v34, v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v31, v34

    .line 389
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v36, v31

    const/16 v37, 0x0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    invoke-static/range {v34 .. v38}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    move-object/from16 v34, v2

    move-object/from16 v35, v31

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    .line 391
    move/from16 v34, v30

    const/16 v35, 0x3

    mul-int/lit8 v34, v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v31, v34

    .line 392
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v36, v31

    const/16 v37, 0x0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    invoke-static/range {v34 .. v38}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    move-object/from16 v34, v2

    move-object/from16 v35, v31

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    .line 395
    .end local v30    # "incrementedSize":I
    .end local v31    # "temp":[F
    :cond_8
    move-object/from16 v34, v6

    move/from16 v35, v27

    aget v34, v34, v35

    const/16 v35, 0x3

    mul-int/lit8 v34, v34, 0x3

    move/from16 v30, v34

    .line 396
    .local v30, "pointOffset":I
    move-object/from16 v34, v6

    move/from16 v35, v28

    aget v34, v34, v35

    const/16 v35, 0x3

    mul-int/lit8 v34, v34, 0x3

    move/from16 v31, v34

    .line 397
    .local v31, "normalOffset":I
    move-object/from16 v34, v6

    move/from16 v35, v29

    aget v34, v34, v35

    const/16 v35, 0x2

    mul-int/lit8 v34, v34, 0x2

    move/from16 v32, v34

    .line 400
    .local v32, "texCoordOffset":I
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPointIndex:[I

    move-object/from16 v34, v0

    move/from16 v35, v25

    move/from16 v36, v30

    aput v36, v34, v35

    .line 401
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoordIndex:[I

    move-object/from16 v34, v0

    move/from16 v35, v25

    move/from16 v36, v32

    aput v36, v34, v35

    .line 402
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triVerts:[I

    move-object/from16 v34, v0

    move/from16 v35, v25

    move/from16 v36, v21

    const/16 v37, 0x9

    div-int/lit8 v36, v36, 0x9

    aput v36, v34, v35

    .line 404
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v34, v0

    move/from16 v35, v21

    move-object/from16 v36, v3

    move/from16 v37, v30

    aget v36, v36, v37

    aput v36, v34, v35

    .line 405
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v34, v0

    move/from16 v35, v21

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move-object/from16 v36, v3

    move/from16 v37, v30

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget v36, v36, v37

    aput v36, v34, v35

    .line 406
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v34, v0

    move/from16 v35, v21

    const/16 v36, 0x2

    add-int/lit8 v35, v35, 0x2

    move-object/from16 v36, v3

    move/from16 v37, v30

    const/16 v38, 0x2

    add-int/lit8 v37, v37, 0x2

    aget v36, v36, v37

    aput v36, v34, v35

    .line 407
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v34, v0

    move/from16 v35, v21

    const/16 v36, 0x3

    add-int/lit8 v35, v35, 0x3

    move-object/from16 v36, v5

    move/from16 v37, v32

    aget v36, v36, v37

    aput v36, v34, v35

    .line 408
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v34, v0

    move/from16 v35, v21

    const/16 v36, 0x4

    add-int/lit8 v35, v35, 0x4

    move-object/from16 v36, v5

    move/from16 v37, v32

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget v36, v36, v37

    aput v36, v34, v35

    .line 410
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triVerts:[I

    move-object/from16 v34, v0

    move/from16 v35, v25

    aget v34, v34, v35

    const/16 v35, 0x3

    mul-int/lit8 v34, v34, 0x3

    move/from16 v33, v34

    .line 411
    .local v33, "index":I
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v34, v0

    move/from16 v35, v33

    move-object/from16 v36, v4

    move/from16 v37, v31

    aget v36, v36, v37

    aput v36, v34, v35

    .line 412
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v34, v0

    move/from16 v35, v33

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move-object/from16 v36, v4

    move/from16 v37, v31

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    aget v36, v36, v37

    aput v36, v34, v35

    .line 413
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v34, v0

    move/from16 v35, v33

    const/16 v36, 0x2

    add-int/lit8 v35, v35, 0x2

    move-object/from16 v36, v4

    move/from16 v37, v31

    const/16 v38, 0x2

    add-int/lit8 v37, v37, 0x2

    aget v36, v36, v37

    aput v36, v34, v35

    .line 415
    add-int/lit8 v21, v21, 0x9

    .line 417
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move/from16 v35, v30

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v17, v34

    .line 418
    .local v17, "mp2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move-object/from16 v34, v17

    if-nez v34, :cond_9

    .line 420
    new-instance v34, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v42, v34

    move-object/from16 v34, v42

    move-object/from16 v35, v42

    move-object/from16 v36, v2

    move/from16 v37, v30

    move-object/from16 v38, v16

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    invoke-direct/range {v35 .. v38}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;-><init>(Lcom/sun/prism/impl/BaseMesh;II)V

    move-object/from16 v17, v34

    .line 421
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move/from16 v35, v30

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v36, v17

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 427
    :goto_6
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->normal2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move/from16 v35, v31

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v18, v34

    .line 428
    .local v18, "mn2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move-object/from16 v34, v18

    if-nez v34, :cond_a

    .line 430
    new-instance v34, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v42, v34

    move-object/from16 v34, v42

    move-object/from16 v35, v42

    move-object/from16 v36, v2

    move/from16 v37, v31

    move-object/from16 v38, v16

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    invoke-direct/range {v35 .. v38}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;-><init>(Lcom/sun/prism/impl/BaseMesh;II)V

    move-object/from16 v18, v34

    .line 431
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->normal2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move/from16 v35, v31

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v36, v18

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 437
    :goto_7
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move/from16 v35, v32

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v19, v34

    .line 438
    .local v19, "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    move-object/from16 v34, v19

    if-nez v34, :cond_b

    .line 440
    new-instance v34, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v42, v34

    move-object/from16 v34, v42

    move-object/from16 v35, v42

    move-object/from16 v36, v2

    move/from16 v37, v32

    move-object/from16 v38, v16

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    invoke-direct/range {v35 .. v38}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;-><init>(Lcom/sun/prism/impl/BaseMesh;II)V

    move-object/from16 v19, v34

    .line 441
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move/from16 v35, v32

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v36, v19

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 448
    :goto_8
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v34, v0

    move/from16 v35, v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v36, v16

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    aput v36, v34, v35

    .line 371
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_5

    .line 424
    .end local v18    # "mn2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v19    # "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    :cond_9
    move-object/from16 v34, v17

    move-object/from16 v35, v16

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->addLoc(I)V

    goto/16 :goto_6

    .line 434
    .restart local v18    # "mn2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    :cond_a
    move-object/from16 v34, v18

    move-object/from16 v35, v16

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->addLoc(I)V

    goto :goto_7

    .line 444
    .restart local v19    # "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    :cond_b
    move-object/from16 v34, v19

    move-object/from16 v35, v16

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->addLoc(I)V

    goto :goto_8

    .line 453
    .end local v16    # "mf2vb":Ljava/lang/Integer;
    .end local v17    # "mp2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v18    # "mn2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v19    # "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v26    # "vertexIndex":I
    .end local v27    # "pointIndex":I
    .end local v28    # "normalIndex":I
    .end local v29    # "texCoordIndex":I
    .end local v30    # "pointOffset":I
    .end local v31    # "normalOffset":I
    .end local v32    # "texCoordOffset":I
    .end local v33    # "index":I
    :cond_c
    const/16 v34, 0x0

    move/from16 v25, v34

    :goto_9
    move/from16 v34, v25

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_d

    .line 454
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v34, v0

    move/from16 v35, v25

    aget-object v34, v34, v35

    move-object/from16 v35, v3

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPointIndex:[I

    move-object/from16 v36, v0

    move/from16 v37, v25

    aget v36, v36, v37

    aget v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 455
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v34, v0

    move/from16 v35, v25

    aget-object v34, v34, v35

    move-object/from16 v35, v3

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPointIndex:[I

    move-object/from16 v36, v0

    move/from16 v37, v25

    aget v36, v36, v37

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 456
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v34, v0

    move/from16 v35, v25

    aget-object v34, v34, v35

    move-object/from16 v35, v3

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPointIndex:[I

    move-object/from16 v36, v0

    move/from16 v37, v25

    aget v36, v36, v37

    const/16 v37, 0x2

    add-int/lit8 v36, v36, 0x2

    aget v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 457
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v34, v0

    move/from16 v35, v25

    aget-object v34, v34, v35

    move-object/from16 v35, v5

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoordIndex:[I

    move-object/from16 v36, v0

    move/from16 v37, v25

    aget v36, v36, v37

    aget v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 458
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v34, v0

    move/from16 v35, v25

    aget-object v34, v34, v35

    move-object/from16 v35, v5

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoordIndex:[I

    move-object/from16 v36, v0

    move/from16 v37, v25

    aget v36, v36, v37

    const/16 v37, 0x1

    add-int/lit8 v36, v36, 0x1

    aget v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/sun/javafx/geom/Vec2f;->y:F

    .line 453
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_9

    .line 461
    :cond_d
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-object v34, v34, v35

    move-object/from16 v35, v22

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    aget-object v36, v36, v37

    move-object/from16 v37, v22

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    move-object/from16 v38, v22

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget-object v38, v38, v39

    move-object/from16 v39, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    aget-object v39, v39, v40

    move-object/from16 v40, v22

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v40, v0

    invoke-static/range {v34 .. v40}, Lcom/sun/prism/impl/MeshUtil;->computeTBNNormalized(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec2f;Lcom/sun/javafx/geom/Vec2f;Lcom/sun/javafx/geom/Vec2f;[Lcom/sun/javafx/geom/Vec3f;)V

    .line 466
    const/16 v34, 0x0

    move/from16 v25, v34

    :goto_a
    move/from16 v34, v25

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_e

    .line 467
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triVerts:[I

    move-object/from16 v34, v0

    move/from16 v35, v25

    aget v34, v34, v35

    const/16 v35, 0x3

    mul-int/lit8 v34, v34, 0x3

    move/from16 v26, v34

    .line 468
    .local v26, "index":I
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    move-object/from16 v34, v0

    move/from16 v35, v26

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->x:F

    move/from16 v36, v0

    aput v36, v34, v35

    .line 469
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    move-object/from16 v34, v0

    move/from16 v35, v26

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->y:F

    move/from16 v36, v0

    aput v36, v34, v35

    .line 470
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    move-object/from16 v34, v0

    move/from16 v35, v26

    const/16 v36, 0x2

    add-int/lit8 v35, v35, 0x2

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->z:F

    move/from16 v36, v0

    aput v36, v34, v35

    .line 471
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    move-object/from16 v34, v0

    move/from16 v35, v26

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->x:F

    move/from16 v36, v0

    aput v36, v34, v35

    .line 472
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    move-object/from16 v34, v0

    move/from16 v35, v26

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->y:F

    move/from16 v36, v0

    aput v36, v34, v35

    .line 473
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    move-object/from16 v34, v0

    move/from16 v35, v26

    const/16 v36, 0x2

    add-int/lit8 v35, v35, 0x2

    move-object/from16 v36, v22

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    aget-object v36, v36, v37

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->z:F

    move/from16 v36, v0

    aput v36, v34, v35

    .line 466
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_a

    .line 369
    .end local v26    # "index":I
    :cond_e
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 478
    .end local v24    # "faceIndex":I
    .end local v25    # "i":I
    :cond_f
    move-object/from16 v34, v2

    move/from16 v35, v21

    const/16 v36, 0x9

    div-int/lit8 v35, v35, 0x9

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    .line 480
    move-object/from16 v34, v2

    move-object/from16 v35, v22

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v36, v0

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    move-object/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    move-object/from16 v39, v0

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-direct/range {v34 .. v41}, Lcom/sun/prism/impl/BaseMesh;->convertNormalsToQuats(Lcom/sun/prism/impl/MeshTempState;I[F[F[F[F[Z)V

    .line 483
    move-object/from16 v34, v2

    move/from16 v35, v15

    const/16 v36, 0x3

    mul-int/lit8 v35, v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/sun/prism/impl/BaseMesh;->indexBufferSize:I

    .line 485
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v34, v0

    const/high16 v35, 0x10000

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_10

    .line 486
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v36, v0

    const/16 v37, 0x9

    mul-int/lit8 v36, v36, 0x9

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferSize:I

    move/from16 v38, v0

    invoke-virtual/range {v34 .. v38}, Lcom/sun/prism/impl/BaseMesh;->buildNativeGeometry([FI[II)Z

    move-result v34

    move/from16 v2, v34

    .line 500
    .end local v2    # "this":Lcom/sun/prism/impl/BaseMesh;
    .end local v23    # "faceCount":I
    :goto_b
    return v2

    .line 490
    .restart local v2    # "this":Lcom/sun/prism/impl/BaseMesh;
    .restart local v23    # "faceCount":I
    :cond_10
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v34, v0

    if-eqz v34, :cond_11

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferSize:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_12

    .line 491
    :cond_11
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferSize:I

    move/from16 v35, v0

    move/from16 v0, v35

    new-array v0, v0, [S

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    .line 493
    :cond_12
    const/16 v34, 0x0

    move/from16 v23, v34

    .line 494
    .local v23, "ii":I
    const/16 v34, 0x0

    move/from16 v24, v34

    .local v24, "i":I
    :goto_c
    move/from16 v34, v24

    move/from16 v35, v15

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_13

    .line 495
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v34, v0

    move/from16 v35, v23

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v36, v0

    move/from16 v37, v23

    add-int/lit8 v23, v23, 0x1

    aget v36, v36, v37

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v36, v0

    aput-short v36, v34, v35

    .line 496
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v34, v0

    move/from16 v35, v23

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v36, v0

    move/from16 v37, v23

    add-int/lit8 v23, v23, 0x1

    aget v36, v36, v37

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v36, v0

    aput-short v36, v34, v35

    .line 497
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v34, v0

    move/from16 v35, v23

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v36, v0

    move/from16 v37, v23

    add-int/lit8 v23, v23, 0x1

    aget v36, v36, v37

    move/from16 v0, v36

    int-to-short v0, v0

    move/from16 v36, v0

    aput-short v36, v34, v35

    .line 494
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 499
    :cond_13
    move-object/from16 v34, v2

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    .line 500
    move-object/from16 v34, v2

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v36, v0

    const/16 v37, 0x9

    mul-int/lit8 v36, v36, 0x9

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferSize:I

    move/from16 v38, v0

    invoke-virtual/range {v34 .. v38}, Lcom/sun/prism/impl/BaseMesh;->buildNativeGeometry([FI[SI)Z

    move-result v34

    move/from16 v2, v34

    goto/16 :goto_b
.end method

.method private updatePNTGeometry([F[I[F[I[F[I)Z
    .locals 32

    .prologue
    .line 510
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object/from16 v3, p1

    .local v3, "points":[F
    move-object/from16 v4, p2

    .local v4, "pointsFromAndLengthIndices":[I
    move-object/from16 v5, p3

    .local v5, "normals":[F
    move-object/from16 v6, p4

    .local v6, "normalsFromAndLengthIndices":[I
    move-object/from16 v7, p5

    .local v7, "texCoords":[F
    move-object/from16 v8, p6

    .local v8, "texCoordsFromAndLengthIndices":[I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 512
    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [Z

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    .line 515
    :cond_0
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->fill([ZZ)V

    .line 518
    move-object/from16 v23, v4

    const/16 v24, 0x0

    aget v23, v23, v24

    const/16 v24, 0x3

    div-int/lit8 v23, v23, 0x3

    move/from16 v9, v23

    .line 519
    .local v9, "startPoint":I
    move-object/from16 v23, v4

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x3

    div-int/lit8 v23, v23, 0x3

    move/from16 v10, v23

    .line 520
    .local v10, "numPoints":I
    move-object/from16 v23, v4

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x3

    rem-int/lit8 v23, v23, 0x3

    if-lez v23, :cond_1

    .line 521
    add-int/lit8 v10, v10, 0x1

    .line 523
    :cond_1
    move/from16 v23, v10

    if-lez v23, :cond_5

    .line 524
    const/16 v23, 0x0

    move/from16 v11, v23

    .local v11, "i":I
    :goto_0
    move/from16 v23, v11

    move/from16 v24, v10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 525
    move/from16 v23, v9

    move/from16 v24, v11

    add-int v23, v23, v24

    const/16 v24, 0x3

    mul-int/lit8 v23, v23, 0x3

    move/from16 v12, v23

    .line 526
    .local v12, "pointOffset":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move/from16 v24, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v13, v23

    .line 527
    .local v13, "mp2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    sget-boolean v23, Lcom/sun/prism/impl/BaseMesh;->$assertionsDisabled:Z

    if-nez v23, :cond_2

    move-object/from16 v23, v13

    if-nez v23, :cond_2

    new-instance v23, Ljava/lang/AssertionError;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v23

    .line 530
    :cond_2
    move-object/from16 v23, v13

    if-eqz v23, :cond_3

    .line 531
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getLocs()[I

    move-result-object v23

    move-object/from16 v14, v23

    .line 532
    .local v14, "locs":[I
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getValidLocs()I

    move-result v23

    move/from16 v15, v23

    .line 533
    .local v15, "validLocs":I
    move-object/from16 v23, v14

    if-eqz v23, :cond_4

    .line 534
    const/16 v23, 0x0

    move/from16 v16, v23

    .local v16, "j":I
    :goto_1
    move/from16 v23, v16

    move/from16 v24, v15

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 535
    move-object/from16 v23, v14

    move/from16 v24, v16

    aget v23, v23, v24

    const/16 v24, 0x9

    mul-int/lit8 v23, v23, 0x9

    move/from16 v17, v23

    .line 536
    .local v17, "vbIndex":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v23, v0

    move/from16 v24, v17

    move-object/from16 v25, v3

    move/from16 v26, v12

    aget v25, v25, v26

    aput v25, v23, v24

    .line 537
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v23, v0

    move/from16 v24, v17

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v3

    move/from16 v26, v12

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget v25, v25, v26

    aput v25, v23, v24

    .line 538
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v23, v0

    move/from16 v24, v17

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move-object/from16 v25, v3

    move/from16 v26, v12

    const/16 v27, 0x2

    add-int/lit8 v26, v26, 0x2

    aget v25, v25, v26

    aput v25, v23, v24

    .line 539
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    move-object/from16 v24, v14

    move/from16 v25, v16

    aget v24, v24, v25

    const/16 v25, 0x1

    aput-boolean v25, v23, v24

    .line 534
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 524
    .end local v14    # "locs":[I
    .end local v15    # "validLocs":I
    .end local v16    # "j":I
    .end local v17    # "vbIndex":I
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 542
    .restart local v14    # "locs":[I
    .restart local v15    # "validLocs":I
    :cond_4
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getLoc()I

    move-result v23

    move/from16 v16, v23

    .line 543
    .local v16, "loc":I
    move/from16 v23, v16

    const/16 v24, 0x9

    mul-int/lit8 v23, v23, 0x9

    move/from16 v17, v23

    .line 544
    .restart local v17    # "vbIndex":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v23, v0

    move/from16 v24, v17

    move-object/from16 v25, v3

    move/from16 v26, v12

    aget v25, v25, v26

    aput v25, v23, v24

    .line 545
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v23, v0

    move/from16 v24, v17

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v3

    move/from16 v26, v12

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget v25, v25, v26

    aput v25, v23, v24

    .line 546
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v23, v0

    move/from16 v24, v17

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move-object/from16 v25, v3

    move/from16 v26, v12

    const/16 v27, 0x2

    add-int/lit8 v26, v26, 0x2

    aget v25, v25, v26

    aput v25, v23, v24

    .line 547
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    move/from16 v24, v16

    const/16 v25, 0x1

    aput-boolean v25, v23, v24

    goto :goto_2

    .line 554
    .end local v11    # "i":I
    .end local v12    # "pointOffset":I
    .end local v13    # "mp2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v14    # "locs":[I
    .end local v15    # "validLocs":I
    .end local v16    # "loc":I
    .end local v17    # "vbIndex":I
    :cond_5
    move-object/from16 v23, v8

    const/16 v24, 0x0

    aget v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    move/from16 v11, v23

    .line 555
    .local v11, "startTexCoord":I
    move-object/from16 v23, v8

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    move/from16 v12, v23

    .line 556
    .local v12, "numTexCoords":I
    move-object/from16 v23, v8

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x2

    rem-int/lit8 v23, v23, 0x2

    if-lez v23, :cond_6

    .line 557
    add-int/lit8 v12, v12, 0x1

    .line 559
    :cond_6
    move/from16 v23, v12

    if-lez v23, :cond_a

    .line 560
    const/16 v23, 0x0

    move/from16 v13, v23

    .local v13, "i":I
    :goto_3
    move/from16 v23, v13

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 561
    move/from16 v23, v11

    move/from16 v24, v13

    add-int v23, v23, v24

    const/16 v24, 0x2

    mul-int/lit8 v23, v23, 0x2

    move/from16 v14, v23

    .line 562
    .local v14, "texCoordOffset":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v15, v23

    .line 563
    .local v15, "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    sget-boolean v23, Lcom/sun/prism/impl/BaseMesh;->$assertionsDisabled:Z

    if-nez v23, :cond_7

    move-object/from16 v23, v15

    if-nez v23, :cond_7

    new-instance v23, Ljava/lang/AssertionError;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v23

    .line 566
    :cond_7
    move-object/from16 v23, v15

    if-eqz v23, :cond_8

    .line 567
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getLocs()[I

    move-result-object v23

    move-object/from16 v16, v23

    .line 568
    .local v16, "locs":[I
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getValidLocs()I

    move-result v23

    move/from16 v17, v23

    .line 569
    .local v17, "validLocs":I
    move-object/from16 v23, v16

    if-eqz v23, :cond_9

    .line 570
    const/16 v23, 0x0

    move/from16 v18, v23

    .local v18, "j":I
    :goto_4
    move/from16 v23, v18

    move/from16 v24, v17

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 571
    move-object/from16 v23, v16

    move/from16 v24, v18

    aget v23, v23, v24

    const/16 v24, 0x9

    mul-int/lit8 v23, v23, 0x9

    const/16 v24, 0x3

    add-int/lit8 v23, v23, 0x3

    move/from16 v19, v23

    .line 572
    .local v19, "vbIndex":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v23, v0

    move/from16 v24, v19

    move-object/from16 v25, v7

    move/from16 v26, v14

    aget v25, v25, v26

    aput v25, v23, v24

    .line 573
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v23, v0

    move/from16 v24, v19

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v7

    move/from16 v26, v14

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget v25, v25, v26

    aput v25, v23, v24

    .line 574
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    move-object/from16 v24, v16

    move/from16 v25, v18

    aget v24, v24, v25

    const/16 v25, 0x1

    aput-boolean v25, v23, v24

    .line 570
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 560
    .end local v16    # "locs":[I
    .end local v17    # "validLocs":I
    .end local v18    # "j":I
    .end local v19    # "vbIndex":I
    :cond_8
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 577
    .restart local v16    # "locs":[I
    .restart local v17    # "validLocs":I
    :cond_9
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getLoc()I

    move-result v23

    move/from16 v18, v23

    .line 578
    .local v18, "loc":I
    move/from16 v23, v18

    const/16 v24, 0x9

    mul-int/lit8 v23, v23, 0x9

    const/16 v24, 0x3

    add-int/lit8 v23, v23, 0x3

    move/from16 v19, v23

    .line 579
    .restart local v19    # "vbIndex":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v23, v0

    move/from16 v24, v19

    move-object/from16 v25, v7

    move/from16 v26, v14

    aget v25, v25, v26

    aput v25, v23, v24

    .line 580
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v23, v0

    move/from16 v24, v19

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v7

    move/from16 v26, v14

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget v25, v25, v26

    aput v25, v23, v24

    .line 581
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    move/from16 v24, v18

    const/16 v25, 0x1

    aput-boolean v25, v23, v24

    goto :goto_5

    .line 588
    .end local v13    # "i":I
    .end local v14    # "texCoordOffset":I
    .end local v15    # "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v16    # "locs":[I
    .end local v17    # "validLocs":I
    .end local v18    # "loc":I
    .end local v19    # "vbIndex":I
    :cond_a
    move-object/from16 v23, v6

    const/16 v24, 0x0

    aget v23, v23, v24

    const/16 v24, 0x3

    div-int/lit8 v23, v23, 0x3

    move/from16 v13, v23

    .line 589
    .local v13, "startNormal":I
    move-object/from16 v23, v6

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x3

    div-int/lit8 v23, v23, 0x3

    move/from16 v14, v23

    .line 590
    .local v14, "numNormals":I
    move-object/from16 v23, v6

    const/16 v24, 0x1

    aget v23, v23, v24

    const/16 v24, 0x3

    rem-int/lit8 v23, v23, 0x3

    if-lez v23, :cond_b

    .line 591
    add-int/lit8 v14, v14, 0x1

    .line 593
    :cond_b
    move/from16 v23, v14

    if-lez v23, :cond_f

    .line 594
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v23

    move-object/from16 v15, v23

    .line 595
    .local v15, "instance":Lcom/sun/prism/impl/MeshTempState;
    const/16 v23, 0x0

    move/from16 v16, v23

    .local v16, "i":I
    :goto_6
    move/from16 v23, v16

    move/from16 v24, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    .line 596
    move/from16 v23, v13

    move/from16 v24, v16

    add-int v23, v23, v24

    const/16 v24, 0x3

    mul-int/lit8 v23, v23, 0x3

    move/from16 v17, v23

    .line 597
    .local v17, "normalOffset":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->normal2vbMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move/from16 v24, v17

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object/from16 v18, v23

    .line 598
    .local v18, "mn2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    sget-boolean v23, Lcom/sun/prism/impl/BaseMesh;->$assertionsDisabled:Z

    if-nez v23, :cond_c

    move-object/from16 v23, v18

    if-nez v23, :cond_c

    new-instance v23, Ljava/lang/AssertionError;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v23

    .line 601
    :cond_c
    move-object/from16 v23, v18

    if-eqz v23, :cond_d

    .line 602
    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getLocs()[I

    move-result-object v23

    move-object/from16 v19, v23

    .line 603
    .local v19, "locs":[I
    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getValidLocs()I

    move-result v23

    move/from16 v20, v23

    .line 604
    .local v20, "validLocs":I
    move-object/from16 v23, v19

    if-eqz v23, :cond_e

    .line 605
    const/16 v23, 0x0

    move/from16 v21, v23

    .local v21, "j":I
    :goto_7
    move/from16 v23, v21

    move/from16 v24, v20

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 606
    move-object/from16 v23, v19

    move/from16 v24, v21

    aget v23, v23, v24

    const/16 v24, 0x3

    mul-int/lit8 v23, v23, 0x3

    move/from16 v22, v23

    .line 607
    .local v22, "index":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v23, v0

    move/from16 v24, v22

    move-object/from16 v25, v5

    move/from16 v26, v17

    aget v25, v25, v26

    aput v25, v23, v24

    .line 608
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v23, v0

    move/from16 v24, v22

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v5

    move/from16 v26, v17

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget v25, v25, v26

    aput v25, v23, v24

    .line 609
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v23, v0

    move/from16 v24, v22

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move-object/from16 v25, v5

    move/from16 v26, v17

    const/16 v27, 0x2

    add-int/lit8 v26, v26, 0x2

    aget v25, v25, v26

    aput v25, v23, v24

    .line 610
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    move-object/from16 v24, v19

    move/from16 v25, v21

    aget v24, v24, v25

    const/16 v25, 0x1

    aput-boolean v25, v23, v24

    .line 605
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 595
    .end local v19    # "locs":[I
    .end local v20    # "validLocs":I
    .end local v21    # "j":I
    .end local v22    # "index":I
    :cond_d
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 613
    .restart local v19    # "locs":[I
    .restart local v20    # "validLocs":I
    :cond_e
    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getLoc()I

    move-result v23

    move/from16 v21, v23

    .line 614
    .local v21, "loc":I
    move/from16 v23, v21

    const/16 v24, 0x3

    mul-int/lit8 v23, v23, 0x3

    move/from16 v22, v23

    .line 615
    .restart local v22    # "index":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v23, v0

    move/from16 v24, v22

    move-object/from16 v25, v5

    move/from16 v26, v17

    aget v25, v25, v26

    aput v25, v23, v24

    .line 616
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v23, v0

    move/from16 v24, v22

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v5

    move/from16 v26, v17

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    aget v25, v25, v26

    aput v25, v23, v24

    .line 617
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v23, v0

    move/from16 v24, v22

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move-object/from16 v25, v5

    move/from16 v26, v17

    const/16 v27, 0x2

    add-int/lit8 v26, v26, 0x2

    aget v25, v25, v26

    aput v25, v23, v24

    .line 618
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    move/from16 v24, v21

    const/16 v25, 0x1

    aput-boolean v25, v23, v24

    goto :goto_8

    .line 625
    .end local v15    # "instance":Lcom/sun/prism/impl/MeshTempState;
    .end local v16    # "i":I
    .end local v17    # "normalOffset":I
    .end local v18    # "mn2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v19    # "locs":[I
    .end local v20    # "validLocs":I
    .end local v21    # "loc":I
    .end local v22    # "index":I
    :cond_f
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v23

    move-object/from16 v15, v23

    .line 626
    .restart local v15    # "instance":Lcom/sun/prism/impl/MeshTempState;
    const/16 v23, 0x0

    move/from16 v16, v23

    .restart local v16    # "i":I
    :goto_9
    move/from16 v23, v16

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 627
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v23, v0

    move/from16 v24, v16

    aget-object v23, v23, v24

    if-nez v23, :cond_10

    .line 628
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v23, v0

    move/from16 v24, v16

    new-instance v25, Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    aput-object v25, v23, v24

    .line 630
    :cond_10
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v23, v0

    move/from16 v24, v16

    aget-object v23, v23, v24

    if-nez v23, :cond_11

    .line 631
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v23, v0

    move/from16 v24, v16

    new-instance v25, Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    invoke-direct/range {v26 .. v26}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    aput-object v25, v23, v24

    .line 626
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 635
    :cond_12
    const/16 v23, 0x0

    move/from16 v16, v23

    .local v16, "j":I
    :goto_a
    move/from16 v23, v16

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    .line 637
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    move/from16 v24, v16

    aget-boolean v23, v23, v24

    if-nez v23, :cond_13

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    move/from16 v24, v16

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    aget-boolean v23, v23, v24

    if-nez v23, :cond_13

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v23, v0

    move/from16 v24, v16

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    aget-boolean v23, v23, v24

    if-eqz v23, :cond_15

    .line 638
    :cond_13
    move/from16 v23, v16

    const/16 v24, 0x9

    mul-int/lit8 v23, v23, 0x9

    move/from16 v17, v23

    .line 640
    .local v17, "vbIndex":I
    const/16 v23, 0x0

    move/from16 v18, v23

    .local v18, "i":I
    :goto_b
    move/from16 v23, v18

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    .line 641
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v23, v0

    move/from16 v24, v18

    aget-object v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v24, v0

    move/from16 v25, v17

    aget v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/geom/Vec3f;->x:F

    .line 642
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v23, v0

    move/from16 v24, v18

    aget-object v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v24, v0

    move/from16 v25, v17

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/geom/Vec3f;->y:F

    .line 643
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v23, v0

    move/from16 v24, v18

    aget-object v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v24, v0

    move/from16 v25, v17

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    aget v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/geom/Vec3f;->z:F

    .line 644
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v23, v0

    move/from16 v24, v18

    aget-object v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v24, v0

    move/from16 v25, v17

    const/16 v26, 0x3

    add-int/lit8 v25, v25, 0x3

    aget v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/geom/Vec2f;->x:F

    .line 645
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v23, v0

    move/from16 v24, v18

    aget-object v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v24, v0

    move/from16 v25, v17

    const/16 v26, 0x3

    add-int/lit8 v25, v25, 0x3

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    aget v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/geom/Vec2f;->y:F

    .line 646
    add-int/lit8 v17, v17, 0x9

    .line 640
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b

    .line 649
    :cond_14
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v24, v15

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v25, v15

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v25, v25, v26

    move-object/from16 v26, v15

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v27, v15

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget-object v27, v27, v28

    move-object/from16 v28, v15

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    aget-object v28, v28, v29

    move-object/from16 v29, v15

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v29, v0

    invoke-static/range {v23 .. v29}, Lcom/sun/prism/impl/MeshUtil;->computeTBNNormalized(Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec3f;Lcom/sun/javafx/geom/Vec2f;Lcom/sun/javafx/geom/Vec2f;Lcom/sun/javafx/geom/Vec2f;[Lcom/sun/javafx/geom/Vec3f;)V

    .line 654
    move/from16 v23, v16

    const/16 v24, 0x3

    mul-int/lit8 v23, v23, 0x3

    move/from16 v18, v23

    .line 655
    .local v18, "index":I
    const/16 v23, 0x0

    move/from16 v19, v23

    .local v19, "i":I
    :goto_c
    move/from16 v23, v19

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_15

    .line 656
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    move-object/from16 v23, v0

    move/from16 v24, v18

    move-object/from16 v25, v15

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->x:F

    move/from16 v25, v0

    aput v25, v23, v24

    .line 657
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    move-object/from16 v23, v0

    move/from16 v24, v18

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v15

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->y:F

    move/from16 v25, v0

    aput v25, v23, v24

    .line 658
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    move-object/from16 v23, v0

    move/from16 v24, v18

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move-object/from16 v25, v15

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->z:F

    move/from16 v25, v0

    aput v25, v23, v24

    .line 659
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    move-object/from16 v23, v0

    move/from16 v24, v18

    move-object/from16 v25, v15

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->x:F

    move/from16 v25, v0

    aput v25, v23, v24

    .line 660
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    move-object/from16 v23, v0

    move/from16 v24, v18

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v15

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->y:F

    move/from16 v25, v0

    aput v25, v23, v24

    .line 661
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    move-object/from16 v23, v0

    move/from16 v24, v18

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move-object/from16 v25, v15

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Vec3f;->z:F

    move/from16 v25, v0

    aput v25, v23, v24

    .line 662
    add-int/lit8 v18, v18, 0x3

    .line 655
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_c

    .line 635
    .end local v17    # "vbIndex":I
    .end local v18    # "index":I
    .end local v19    # "i":I
    :cond_15
    add-int/lit8 v16, v16, 0x3

    goto/16 :goto_a

    .line 668
    :cond_16
    move-object/from16 v23, v2

    move-object/from16 v24, v15

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedNormals:[F

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedTangents:[F

    move-object/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->cachedBitangents:[F

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->dirtyVertices:[Z

    move-object/from16 v30, v0

    invoke-direct/range {v23 .. v30}, Lcom/sun/prism/impl/BaseMesh;->convertNormalsToQuats(Lcom/sun/prism/impl/MeshTempState;I[F[F[F[F[Z)V

    .line 671
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    .line 672
    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v25, v0

    const/16 v26, 0x9

    mul-int/lit8 v25, v25, 0x9

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferSize:I

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Lcom/sun/prism/impl/BaseMesh;->buildNativeGeometry([FI[II)Z

    move-result v23

    move/from16 v2, v23

    .line 675
    .end local v2    # "this":Lcom/sun/prism/impl/BaseMesh;
    :goto_d
    return v2

    .restart local v2    # "this":Lcom/sun/prism/impl/BaseMesh;
    :cond_17
    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v25, v0

    const/16 v26, 0x9

    mul-int/lit8 v25, v25, 0x9

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferSize:I

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Lcom/sun/prism/impl/BaseMesh;->buildNativeGeometry([FI[SI)Z

    move-result v23

    move/from16 v2, v23

    goto :goto_d
.end method

.method private updateSkipMeshNormalGeometry([I[I)Z
    .locals 22

    .prologue
    .line 84
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object/from16 v2, p1

    .local v2, "posFromAndLengthIndices":[I
    move-object/from16 v3, p2

    .local v3, "uvFromAndLengthIndices":[I
    move-object v15, v3

    const/16 v16, 0x0

    aget v15, v15, v16

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    move v4, v15

    .line 85
    .local v4, "startTexCoord":I
    move-object v15, v3

    const/16 v16, 0x1

    aget v15, v15, v16

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    move v5, v15

    .line 86
    .local v5, "numTexCoords":I
    move-object v15, v3

    const/16 v16, 0x1

    aget v15, v15, v16

    const/16 v16, 0x2

    rem-int/lit8 v15, v15, 0x2

    if-lez v15, :cond_0

    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 90
    :cond_0
    move v15, v5

    if-lez v15, :cond_4

    .line 91
    const/4 v15, 0x0

    move v6, v15

    .local v6, "i":I
    :goto_0
    move v15, v6

    move/from16 v16, v5

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 92
    move v15, v4

    move/from16 v16, v6

    add-int v15, v15, v16

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    move v7, v15

    .line 93
    .local v7, "texCoordOffset":I
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->texCoord2vbMap:Ljava/util/HashMap;

    move/from16 v16, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object v8, v15

    .line 94
    .local v8, "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    sget-boolean v15, Lcom/sun/prism/impl/BaseMesh;->$assertionsDisabled:Z

    if-nez v15, :cond_1

    move-object v15, v8

    if-nez v15, :cond_1

    new-instance v15, Ljava/lang/AssertionError;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 97
    :cond_1
    move-object v15, v8

    if-eqz v15, :cond_2

    .line 98
    move-object v15, v8

    invoke-virtual {v15}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getLocs()[I

    move-result-object v15

    move-object v9, v15

    .line 99
    .local v9, "locs":[I
    move-object v15, v8

    invoke-virtual {v15}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getValidLocs()I

    move-result v15

    move v10, v15

    .line 100
    .local v10, "validLocs":I
    move-object v15, v9

    if-eqz v15, :cond_3

    .line 101
    const/4 v15, 0x0

    move v11, v15

    .local v11, "j":I
    :goto_1
    move v15, v11

    move/from16 v16, v10

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 102
    move-object v15, v9

    move/from16 v16, v11

    aget v15, v15, v16

    const/16 v16, 0x9

    mul-int/lit8 v15, v15, 0x9

    const/16 v16, 0x3

    add-int/lit8 v15, v15, 0x3

    move v12, v15

    .line 103
    .local v12, "vbIndex":I
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move/from16 v16, v12

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    move-object/from16 v17, v0

    move/from16 v18, v7

    aget v17, v17, v18

    aput v17, v15, v16

    .line 104
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move/from16 v16, v12

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    move-object/from16 v17, v0

    move/from16 v18, v7

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    aput v17, v15, v16

    .line 101
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 91
    .end local v9    # "locs":[I
    .end local v10    # "validLocs":I
    .end local v11    # "j":I
    .end local v12    # "vbIndex":I
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 107
    .restart local v9    # "locs":[I
    .restart local v10    # "validLocs":I
    :cond_3
    move-object v15, v8

    invoke-virtual {v15}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getLoc()I

    move-result v15

    move v11, v15

    .line 108
    .local v11, "loc":I
    move v15, v11

    const/16 v16, 0x9

    mul-int/lit8 v15, v15, 0x9

    const/16 v16, 0x3

    add-int/lit8 v15, v15, 0x3

    move v12, v15

    .line 109
    .restart local v12    # "vbIndex":I
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move/from16 v16, v12

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    move-object/from16 v17, v0

    move/from16 v18, v7

    aget v17, v17, v18

    aput v17, v15, v16

    .line 110
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move/from16 v16, v12

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    move-object/from16 v17, v0

    move/from16 v18, v7

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    aput v17, v15, v16

    goto :goto_2

    .line 117
    .end local v6    # "i":I
    .end local v7    # "texCoordOffset":I
    .end local v8    # "mt2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v9    # "locs":[I
    .end local v10    # "validLocs":I
    .end local v11    # "loc":I
    .end local v12    # "vbIndex":I
    :cond_4
    move-object v15, v2

    const/16 v16, 0x0

    aget v15, v15, v16

    const/16 v16, 0x3

    div-int/lit8 v15, v15, 0x3

    move v6, v15

    .line 118
    .local v6, "startPoint":I
    move-object v15, v2

    const/16 v16, 0x1

    aget v15, v15, v16

    const/16 v16, 0x3

    div-int/lit8 v15, v15, 0x3

    move v7, v15

    .line 119
    .local v7, "numPoints":I
    move-object v15, v2

    const/16 v16, 0x1

    aget v15, v15, v16

    const/16 v16, 0x3

    rem-int/lit8 v15, v15, 0x3

    if-lez v15, :cond_5

    .line 120
    add-int/lit8 v7, v7, 0x1

    .line 123
    :cond_5
    move v15, v7

    if-lez v15, :cond_9

    .line 124
    const/4 v15, 0x0

    move v8, v15

    .local v8, "i":I
    :goto_3
    move v15, v8

    move/from16 v16, v7

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    .line 125
    move v15, v6

    move/from16 v16, v8

    add-int v15, v15, v16

    const/16 v16, 0x3

    mul-int/lit8 v15, v15, 0x3

    move v9, v15

    .line 126
    .local v9, "pointOffset":I
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->point2vbMap:Ljava/util/HashMap;

    move/from16 v16, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;

    move-object v10, v15

    .line 127
    .local v10, "mp2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    sget-boolean v15, Lcom/sun/prism/impl/BaseMesh;->$assertionsDisabled:Z

    if-nez v15, :cond_6

    move-object v15, v10

    if-nez v15, :cond_6

    new-instance v15, Ljava/lang/AssertionError;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 130
    :cond_6
    move-object v15, v10

    if-eqz v15, :cond_7

    .line 131
    move-object v15, v10

    invoke-virtual {v15}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getLocs()[I

    move-result-object v15

    move-object v11, v15

    .line 132
    .local v11, "locs":[I
    move-object v15, v10

    invoke-virtual {v15}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getValidLocs()I

    move-result v15

    move v12, v15

    .line 133
    .local v12, "validLocs":I
    move-object v15, v11

    if-eqz v15, :cond_8

    .line 134
    const/4 v15, 0x0

    move v13, v15

    .local v13, "j":I
    :goto_4
    move v15, v13

    move/from16 v16, v12

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 135
    move-object v15, v11

    move/from16 v16, v13

    aget v15, v15, v16

    const/16 v16, 0x9

    mul-int/lit8 v15, v15, 0x9

    move v14, v15

    .line 136
    .local v14, "vbIndex":I
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move/from16 v16, v14

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move-object/from16 v17, v0

    move/from16 v18, v9

    aget v17, v17, v18

    aput v17, v15, v16

    .line 137
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move/from16 v16, v14

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move-object/from16 v17, v0

    move/from16 v18, v9

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    aput v17, v15, v16

    .line 138
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move/from16 v16, v14

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move-object/from16 v17, v0

    move/from16 v18, v9

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    aput v17, v15, v16

    .line 134
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 124
    .end local v11    # "locs":[I
    .end local v12    # "validLocs":I
    .end local v13    # "j":I
    .end local v14    # "vbIndex":I
    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 141
    .restart local v11    # "locs":[I
    .restart local v12    # "validLocs":I
    :cond_8
    move-object v15, v10

    invoke-virtual {v15}, Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;->getLoc()I

    move-result v15

    move v13, v15

    .line 142
    .local v13, "loc":I
    move v15, v13

    const/16 v16, 0x9

    mul-int/lit8 v15, v15, 0x9

    move v14, v15

    .line 143
    .restart local v14    # "vbIndex":I
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move/from16 v16, v14

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move-object/from16 v17, v0

    move/from16 v18, v9

    aget v17, v17, v18

    aput v17, v15, v16

    .line 144
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move/from16 v16, v14

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move-object/from16 v17, v0

    move/from16 v18, v9

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    aget v17, v17, v18

    aput v17, v15, v16

    .line 145
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move/from16 v16, v14

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move-object/from16 v17, v0

    move/from16 v18, v9

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    aput v17, v15, v16

    goto :goto_5

    .line 151
    .end local v8    # "i":I
    .end local v9    # "pointOffset":I
    .end local v10    # "mp2vb":Lcom/sun/prism/impl/BaseMesh$MeshGeomComp2VB;
    .end local v11    # "locs":[I
    .end local v12    # "validLocs":I
    .end local v13    # "loc":I
    .end local v14    # "vbIndex":I
    :cond_9
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    if-eqz v15, :cond_a

    .line 152
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v17, v0

    const/16 v18, 0x9

    mul-int/lit8 v17, v17, 0x9

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBuffer:[I

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v19, v0

    const/16 v20, 0x3

    mul-int/lit8 v19, v19, 0x3

    invoke-virtual/range {v15 .. v19}, Lcom/sun/prism/impl/BaseMesh;->buildNativeGeometry([FI[II)Z

    move-result v15

    move v1, v15

    .line 155
    .end local v1    # "this":Lcom/sun/prism/impl/BaseMesh;
    :goto_6
    return v1

    .restart local v1    # "this":Lcom/sun/prism/impl/BaseMesh;
    :cond_a
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->vertexBuffer:[F

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->numberOfVertices:I

    move/from16 v17, v0

    const/16 v18, 0x9

    mul-int/lit8 v17, v17, 0x9

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/BaseMesh;->indexBufferShort:[S

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move/from16 v19, v0

    const/16 v20, 0x3

    mul-int/lit8 v19, v19, 0x3

    invoke-virtual/range {v15 .. v19}, Lcom/sun/prism/impl/BaseMesh;->buildNativeGeometry([FI[SI)Z

    move-result v15

    move v1, v15

    goto :goto_6
.end method


# virtual methods
.method public buildGeometry(Z[F[I[F[I[F[I[I[I[I[I)Z
    .locals 21

    .prologue
    .line 688
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move/from16 v1, p1

    .local v1, "userDefinedNormals":Z
    move-object/from16 v2, p2

    .local v2, "points":[F
    move-object/from16 v3, p3

    .local v3, "pointsFromAndLengthIndices":[I
    move-object/from16 v4, p4

    .local v4, "normals":[F
    move-object/from16 v5, p5

    .local v5, "normalsFromAndLengthIndices":[I
    move-object/from16 v6, p6

    .local v6, "texCoords":[F
    move-object/from16 v7, p7

    .local v7, "texCoordsFromAndLengthIndices":[I
    move-object/from16 v8, p8

    .local v8, "faces":[I
    move-object/from16 v9, p9

    .local v9, "facesFromAndLengthIndices":[I
    move-object/from16 v10, p10

    .local v10, "faceSmoothingGroups":[I
    move-object/from16 v11, p11

    .local v11, "faceSmoothingGroupsFromAndLengthIndices":[I
    move v12, v1

    if-eqz v12, :cond_0

    .line 689
    move-object v12, v0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-direct/range {v12 .. v20}, Lcom/sun/prism/impl/BaseMesh;->buildPNTGeometry([F[I[F[I[F[I[I[I)Z

    move-result v12

    move v0, v12

    .line 694
    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    :cond_0
    move-object v12, v0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    invoke-direct/range {v12 .. v20}, Lcom/sun/prism/impl/BaseMesh;->buildPTGeometry([F[I[F[I[I[I[I[I)Z

    move-result v12

    move v0, v12

    goto :goto_0
.end method

.method public abstract buildNativeGeometry([FI[II)Z
.end method

.method public abstract buildNativeGeometry([FI[SI)Z
.end method

.method public getFace(I[I)[I
    .locals 10

    .prologue
    .line 1011
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move v1, p1

    .local v1, "fIdx":I
    move-object v2, p2

    .local v2, "face":[I
    move v5, v1

    const/4 v6, 0x6

    mul-int/lit8 v5, v5, 0x6

    move v3, v5

    .line 1012
    .local v3, "index":I
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x7

    if-ge v5, v6, :cond_1

    .line 1013
    :cond_0
    const/4 v5, 0x7

    new-array v5, v5, [I

    move-object v2, v5

    .line 1016
    :cond_1
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    const/4 v6, 0x6

    if-ge v5, v6, :cond_2

    .line 1017
    move-object v5, v2

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseMesh;->faces:[I

    move v8, v3

    move v9, v4

    add-int/2addr v8, v9

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1016
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1022
    :cond_2
    move-object v5, v2

    const/4 v6, 0x6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseMesh;->smoothing:[I

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseMesh;->smoothing:[I

    move v8, v1

    aget v7, v7, v8

    :goto_1
    aput v7, v5, v6

    .line 1023
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    return-object v0

    .line 1022
    .restart local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    :cond_3
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public getNumFaces()I
    .locals 2

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseMesh;->nFaces:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    return v0
.end method

.method public getNumTVerts()I
    .locals 2

    .prologue
    .line 960
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseMesh;->nTVerts:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    return v0
.end method

.method public getNumVerts()I
    .locals 2

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseMesh;->nVerts:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    return v0
.end method

.method public getTVertex(ILcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
    .locals 10

    .prologue
    .line 977
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move v1, p1

    .local v1, "tIdx":I
    move-object v2, p2

    .local v2, "texCoord":Lcom/sun/javafx/geom/Vec2f;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 978
    new-instance v4, Lcom/sun/javafx/geom/Vec2f;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    move-object v2, v4

    .line 980
    :cond_0
    move v4, v1

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    move v3, v4

    .line 981
    .local v3, "index":I
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    move v6, v3

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/BaseMesh;->uv:[F

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Vec2f;->set(FF)V

    .line 982
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    return-object v0
.end method

.method public getVertex(ILcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
    .locals 11

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh;
    move v1, p1

    .local v1, "pIdx":I
    move-object v2, p2

    .local v2, "vertex":Lcom/sun/javafx/geom/Vec3f;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 969
    new-instance v4, Lcom/sun/javafx/geom/Vec3f;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    move-object v2, v4

    .line 971
    :cond_0
    move v4, v1

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    move v3, v4

    .line 972
    .local v3, "index":I
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move v6, v3

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/BaseMesh;->pos:[F

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/geom/Vec3f;->set(FFF)V

    .line 973
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/impl/BaseMesh;
    return-object v0
.end method
