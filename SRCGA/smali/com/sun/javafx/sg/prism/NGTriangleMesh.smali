.class public Lcom/sun/javafx/sg/prism/NGTriangleMesh;
.super Ljava/lang/Object;
.source "NGTriangleMesh.java"


# instance fields
.field private faceSmoothingGroups:[I

.field private faceSmoothingGroupsFromAndLengthIndices:[I

.field private faces:[I

.field private facesFromAndLengthIndices:[I

.field private mesh:Lcom/sun/prism/Mesh;

.field private meshDirty:Z

.field private normals:[F

.field private normalsFromAndLengthIndices:[I

.field private points:[F

.field private pointsFromAndLengthIndices:[I

.field private texCoords:[F

.field private texCoordsFromAndLengthIndices:[I

.field private userDefinedNormals:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 39
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->userDefinedNormals:Z

    .line 43
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->pointsFromAndLengthIndices:[I

    .line 47
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->normalsFromAndLengthIndices:[I

    .line 51
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->texCoordsFromAndLengthIndices:[I

    .line 55
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->facesFromAndLengthIndices:[I

    .line 59
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faceSmoothingGroupsFromAndLengthIndices:[I

    return-void
.end method


# virtual methods
.method createMesh(Lcom/sun/prism/ResourceFactory;)Lcom/sun/prism/Mesh;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "rf":Lcom/sun/prism/ResourceFactory;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->mesh:Lcom/sun/prism/Mesh;

    if-nez v2, :cond_0

    .line 63
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/prism/ResourceFactory;->createMesh()Lcom/sun/prism/Mesh;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->mesh:Lcom/sun/prism/Mesh;

    .line 64
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 66
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->mesh:Lcom/sun/prism/Mesh;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    return-object v0
.end method

.method public isUserDefinedNormals()Z
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->userDefinedNormals:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    return v0
.end method

.method setFaceSmoothingGroupsByRef([I)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "faceSmoothingGroups":[I
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 125
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faceSmoothingGroups:[I

    .line 126
    return-void
.end method

.method setFacesByRef([I)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "faces":[I
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 117
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faces:[I

    .line 118
    return-void
.end method

.method setNormalsByRef([F)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "normals":[F
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 101
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->normals:[F

    .line 102
    return-void
.end method

.method setPointsByRef([F)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "points":[F
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 93
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->points:[F

    .line 94
    return-void
.end method

.method setTexCoordsByRef([F)V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "texCoords":[F
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 109
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->texCoords:[F

    .line 110
    return-void
.end method

.method public setUserDefinedNormals(Z)V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move v1, p1

    .local v1, "userDefinedNormals":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->userDefinedNormals:Z

    .line 130
    return-void
.end method

.method public syncFaceSmoothingGroups(Lcom/sun/javafx/collections/IntegerArraySyncer;)V
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "array":Lcom/sun/javafx/collections/IntegerArraySyncer;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 158
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faceSmoothingGroups:[I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faceSmoothingGroupsFromAndLengthIndices:[I

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/collections/IntegerArraySyncer;->syncTo([I[I)[I

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faceSmoothingGroups:[I

    .line 159
    return-void

    .line 158
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public syncFaces(Lcom/sun/javafx/collections/IntegerArraySyncer;)V
    .locals 6

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "array":Lcom/sun/javafx/collections/IntegerArraySyncer;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 153
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faces:[I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->facesFromAndLengthIndices:[I

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/collections/IntegerArraySyncer;->syncTo([I[I)[I

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faces:[I

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public syncNormals(Lcom/sun/javafx/collections/FloatArraySyncer;)V
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "array":Lcom/sun/javafx/collections/FloatArraySyncer;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 143
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->normals:[F

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->normalsFromAndLengthIndices:[I

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/collections/FloatArraySyncer;->syncTo([F[I)[F

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->normals:[F

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public syncPoints(Lcom/sun/javafx/collections/FloatArraySyncer;)V
    .locals 6

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "array":Lcom/sun/javafx/collections/FloatArraySyncer;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 138
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->points:[F

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->pointsFromAndLengthIndices:[I

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/collections/FloatArraySyncer;->syncTo([F[I)[F

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->points:[F

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public syncTexCoords(Lcom/sun/javafx/collections/FloatArraySyncer;)V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, p1

    .local v1, "array":Lcom/sun/javafx/collections/FloatArraySyncer;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 148
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->texCoords:[F

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->texCoordsFromAndLengthIndices:[I

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/collections/FloatArraySyncer;->syncTo([F[I)[F

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->texCoords:[F

    .line 149
    return-void

    .line 148
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method test_getFaceSmoothingGroups()[I
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faceSmoothingGroups:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    return-object v0
.end method

.method test_getFaces()[I
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faces:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    return-object v0
.end method

.method test_getNormals()[F
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->normals:[F

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    return-object v0
.end method

.method test_getPoints()[F
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->points:[F

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    return-object v0
.end method

.method test_getTexCoords()[F
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->texCoords:[F

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    return-object v0
.end method

.method validate()Z
    .locals 14

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->points:[F

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->texCoords:[F

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faces:[I

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faceSmoothingGroups:[I

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->userDefinedNormals:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->normals:[F

    if-nez v1, :cond_1

    .line 72
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 85
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    :goto_0
    return v0

    .line 74
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGTriangleMesh;
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    if-eqz v1, :cond_3

    .line 75
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->mesh:Lcom/sun/prism/Mesh;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->userDefinedNormals:Z

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->points:[F

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->pointsFromAndLengthIndices:[I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->normals:[F

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->normalsFromAndLengthIndices:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->texCoords:[F

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->texCoordsFromAndLengthIndices:[I

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faces:[I

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->facesFromAndLengthIndices:[I

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faceSmoothingGroups:[I

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->faceSmoothingGroupsFromAndLengthIndices:[I

    invoke-interface/range {v1 .. v12}, Lcom/sun/prism/Mesh;->buildGeometry(Z[F[I[F[I[F[I[I[I[I[I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v13, v1

    move-object v1, v13

    move-object v2, v13

    const-string v3, "NGTriangleMesh: buildGeometry failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_2
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGTriangleMesh;->meshDirty:Z

    .line 85
    :cond_3
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method
