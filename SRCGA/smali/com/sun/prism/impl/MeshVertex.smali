.class Lcom/sun/prism/impl/MeshVertex;
.super Ljava/lang/Object;
.source "MeshVertex.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final IDX_SET_SMOOTH:I = -0x2

.field static final IDX_UNDEFINED:I = -0x1

.field static final IDX_UNITE:I = -0x3


# instance fields
.field fIdx:I

.field index:I

.field next:Lcom/sun/prism/impl/MeshVertex;

.field norm:[Lcom/sun/javafx/geom/Vec3f;

.field pVert:I

.field smGroup:I

.field tVert:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sun/prism/impl/MeshVertex;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/prism/impl/MeshVertex;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/MeshVertex;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    .line 49
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sun/javafx/geom/Vec3f;

    iput-object v3, v2, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    .line 50
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 51
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    move v3, v1

    new-instance v4, Lcom/sun/javafx/geom/Vec3f;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    aput-object v4, v2, v3

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method static avgSmNormals(Lcom/sun/prism/impl/MeshVertex;)V
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "v":Lcom/sun/prism/impl/MeshVertex;
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v4

    iget-object v4, v4, Lcom/sun/prism/impl/MeshTempState;->vec3f1:Lcom/sun/javafx/geom/Vec3f;

    move-object v1, v4

    .line 57
    .local v1, "normalSum":Lcom/sun/javafx/geom/Vec3f;
    :goto_0
    move-object v4, v0

    if-eqz v4, :cond_5

    .line 58
    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/impl/MeshVertex;->index:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 59
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 60
    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    move v2, v4

    .line 62
    .local v2, "sm":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v3, v4

    .local v3, "i":Lcom/sun/prism/impl/MeshVertex;
    :goto_1
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 63
    move-object v4, v3

    iget v4, v4, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 64
    sget-boolean v4, Lcom/sun/prism/impl/MeshVertex;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object v4, v3

    iget v4, v4, Lcom/sun/prism/impl/MeshVertex;->index:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 65
    :cond_0
    move-object v4, v3

    const/4 v5, -0x2

    iput v5, v4, Lcom/sun/prism/impl/MeshVertex;->index:I

    .line 66
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Vec3f;->add(Lcom/sun/javafx/geom/Vec3f;)V

    .line 62
    :cond_1
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v3, v4

    goto :goto_1

    .line 70
    :cond_2
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/prism/impl/MeshUtil;->isNormalOkAfterWeld(Lcom/sun/javafx/geom/Vec3f;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 72
    move-object v4, v0

    move-object v3, v4

    :goto_2
    move-object v4, v3

    if-eqz v4, :cond_4

    .line 73
    move-object v4, v3

    iget v4, v4, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    move v5, v2

    if-ne v4, v5, :cond_3

    .line 74
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 72
    :cond_3
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v3, v4

    goto :goto_2

    .line 57
    .end local v2    # "sm":I
    .end local v3    # "i":Lcom/sun/prism/impl/MeshVertex;
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v0, v4

    goto :goto_0

    .line 80
    :cond_5
    return-void
.end method

.method static correctSmNormals(Lcom/sun/prism/impl/MeshVertex;)V
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "n":Lcom/sun/prism/impl/MeshVertex;
    move-object v3, v0

    move-object v1, v3

    .local v1, "l":Lcom/sun/prism/impl/MeshVertex;
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 165
    move-object v3, v1

    iget v3, v3, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    if-eqz v3, :cond_0

    .line 166
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v2, v3

    .local v2, "i":Lcom/sun/prism/impl/MeshVertex;
    :goto_1
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 167
    move-object v3, v2

    iget v3, v3, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    .line 168
    invoke-static {v3, v4}, Lcom/sun/prism/impl/MeshUtil;->isOppositeLookingNormals([Lcom/sun/javafx/geom/Vec3f;[Lcom/sun/javafx/geom/Vec3f;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    .line 170
    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    .line 171
    .line 164
    .end local v2    # "i":Lcom/sun/prism/impl/MeshVertex;
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v1, v3

    goto :goto_0

    .line 166
    .restart local v2    # "i":Lcom/sun/prism/impl/MeshVertex;
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v2, v3

    goto :goto_1

    .line 176
    .end local v2    # "i":Lcom/sun/prism/impl/MeshVertex;
    :cond_2
    return-void
.end method

.method static dumpInfo(Lcom/sun/prism/impl/MeshVertex;)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "v":Lcom/sun/prism/impl/MeshVertex;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** dumpInfo: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    move-object v2, v0

    move-object v1, v2

    .local v1, "q":Lcom/sun/prism/impl/MeshVertex;
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 228
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 227
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v1, v2

    goto :goto_0

    .line 230
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "***********************************"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method static mergeSmIndexes(Lcom/sun/prism/impl/MeshVertex;)V
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "n":Lcom/sun/prism/impl/MeshVertex;
    move-object v4, v0

    move-object v1, v4

    .local v1, "l":Lcom/sun/prism/impl/MeshVertex;
    :goto_0
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 142
    const/4 v4, 0x0

    move v2, v4

    .line 143
    .local v2, "change":Z
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v3, v4

    .local v3, "i":Lcom/sun/prism/impl/MeshVertex;
    :goto_1
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 144
    move-object v4, v1

    iget v4, v4, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    move-object v4, v1

    iget v4, v4, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    move-object v5, v3

    iget v5, v5, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    if-eq v4, v5, :cond_0

    .line 145
    move-object v4, v1

    move-object v5, v3

    iget v5, v5, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    or-int/2addr v5, v6

    iput v5, v4, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    .line 146
    move-object v4, v3

    move-object v5, v1

    iget v5, v5, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    iput v5, v4, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    .line 147
    const/4 v4, 0x1

    move v2, v4

    .line 143
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v3, v4

    goto :goto_1

    .line 150
    :cond_1
    move v4, v2

    if-nez v4, :cond_2

    .line 151
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v1, v4

    .line 153
    :cond_2
    goto :goto_0

    .line 154
    .end local v2    # "change":Z
    .end local v3    # "i":Lcom/sun/prism/impl/MeshVertex;
    :cond_3
    return-void
.end method

.method static okToWeldVertsTB(Lcom/sun/prism/impl/MeshVertex;Lcom/sun/prism/impl/MeshVertex;)Z
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "a":Lcom/sun/prism/impl/MeshVertex;
    move-object v1, p1

    .local v1, "b":Lcom/sun/prism/impl/MeshVertex;
    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/MeshVertex;->tVert:I

    move-object v3, v1

    iget v3, v3, Lcom/sun/prism/impl/MeshVertex;->tVert:I

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    invoke-static {v2, v3}, Lcom/sun/prism/impl/MeshUtil;->isTangentOk([Lcom/sun/javafx/geom/Vec3f;[Lcom/sun/javafx/geom/Vec3f;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "a":Lcom/sun/prism/impl/MeshVertex;
    return v0

    .restart local v0    # "a":Lcom/sun/prism/impl/MeshVertex;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static processVertices([Lcom/sun/prism/impl/MeshVertex;IZZ)I
    .locals 11

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "pVerts":[Lcom/sun/prism/impl/MeshVertex;
    move v1, p1

    .local v1, "nVertex":I
    move v2, p2

    .local v2, "allHardEdges":Z
    move v3, p3

    .local v3, "allSameSmoothing":Z
    const/4 v8, 0x0

    move v4, v8

    .line 181
    .local v4, "nNewVerts":I
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v8

    iget-object v8, v8, Lcom/sun/prism/impl/MeshTempState;->vec3f1:Lcom/sun/javafx/geom/Vec3f;

    move-object v5, v8

    .line 182
    .local v5, "normalSum":Lcom/sun/javafx/geom/Vec3f;
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v1

    if-ge v8, v9, :cond_4

    .line 183
    move-object v8, v0

    move v9, v6

    aget-object v8, v8, v9

    if-eqz v8, :cond_2

    .line 184
    move v8, v2

    if-nez v8, :cond_1

    .line 185
    move v8, v3

    if-eqz v8, :cond_3

    .line 187
    move-object v8, v5

    move-object v9, v0

    move v10, v6

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 188
    move-object v8, v0

    move v9, v6

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v7, v8

    .local v7, "v":Lcom/sun/prism/impl/MeshVertex;
    :goto_1
    move-object v8, v7

    if-eqz v8, :cond_0

    .line 189
    move-object v8, v5

    move-object v9, v7

    iget-object v9, v9, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Vec3f;->add(Lcom/sun/javafx/geom/Vec3f;)V

    .line 188
    move-object v8, v7

    iget-object v8, v8, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v7, v8

    goto :goto_1

    .line 192
    :cond_0
    move-object v8, v5

    invoke-static {v8}, Lcom/sun/prism/impl/MeshUtil;->isNormalOkAfterWeld(Lcom/sun/javafx/geom/Vec3f;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 193
    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Vec3f;->normalize()V

    .line 194
    move-object v8, v0

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    :goto_2
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 195
    move-object v8, v7

    iget-object v8, v8, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 194
    move-object v8, v7

    iget-object v8, v8, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v7, v8

    goto :goto_2

    .line 205
    .end local v7    # "v":Lcom/sun/prism/impl/MeshVertex;
    :cond_1
    :goto_3
    move-object v8, v0

    move v9, v6

    aget-object v8, v8, v9

    move v9, v4

    invoke-static {v8, v9}, Lcom/sun/prism/impl/MeshVertex;->weldWithTB(Lcom/sun/prism/impl/MeshVertex;I)I

    move-result v8

    move v4, v8

    .line 182
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 200
    :cond_3
    move-object v8, v0

    move v9, v6

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/sun/prism/impl/MeshVertex;->mergeSmIndexes(Lcom/sun/prism/impl/MeshVertex;)V

    .line 201
    move-object v8, v0

    move v9, v6

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/sun/prism/impl/MeshVertex;->avgSmNormals(Lcom/sun/prism/impl/MeshVertex;)V

    goto :goto_3

    .line 208
    :cond_4
    move v8, v4

    move v0, v8

    .end local v0    # "pVerts":[Lcom/sun/prism/impl/MeshVertex;
    return v0
.end method

.method static weldWithTB(Lcom/sun/prism/impl/MeshVertex;I)I
    .locals 10

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "v":Lcom/sun/prism/impl/MeshVertex;
    move v1, p1

    .local v1, "index":I
    invoke-static {}, Lcom/sun/prism/impl/MeshTempState;->getInstance()Lcom/sun/prism/impl/MeshTempState;

    move-result-object v6

    iget-object v6, v6, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move-object v2, v6

    .line 92
    .local v2, "nSum":[Lcom/sun/javafx/geom/Vec3f;
    :goto_0
    move-object v6, v0

    if-eqz v6, :cond_9

    .line 93
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/impl/MeshVertex;->index:I

    if-gez v6, :cond_7

    .line 94
    const/4 v6, 0x0

    move v3, v6

    .line 95
    .local v3, "nuLocal":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    .line 96
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    move v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 98
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v4, v6

    .local v4, "i":Lcom/sun/prism/impl/MeshVertex;
    :goto_2
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 99
    move-object v6, v4

    iget v6, v6, Lcom/sun/prism/impl/MeshVertex;->index:I

    if-gez v6, :cond_1

    .line 100
    move-object v6, v0

    move-object v7, v4

    invoke-static {v6, v7}, Lcom/sun/prism/impl/MeshVertex;->okToWeldVertsTB(Lcom/sun/prism/impl/MeshVertex;Lcom/sun/prism/impl/MeshVertex;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    move-object v6, v4

    const/4 v7, -0x3

    iput v7, v6, Lcom/sun/prism/impl/MeshVertex;->index:I

    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    const/4 v6, 0x0

    move v5, v6

    .local v5, "j":I
    :goto_3
    move v6, v5

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 104
    move-object v6, v2

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/Vec3f;->add(Lcom/sun/javafx/geom/Vec3f;)V

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 98
    .end local v5    # "j":I
    :cond_1
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v4, v6

    goto :goto_2

    .line 110
    :cond_2
    move v6, v3

    if-eqz v6, :cond_5

    .line 111
    move-object v6, v2

    invoke-static {v6}, Lcom/sun/prism/impl/MeshUtil;->isTangentOK([Lcom/sun/javafx/geom/Vec3f;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 112
    move-object v6, v2

    invoke-static {v6}, Lcom/sun/prism/impl/MeshUtil;->fixTSpace([Lcom/sun/javafx/geom/Vec3f;)V

    .line 113
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/sun/prism/impl/MeshVertex;->index:I

    .line 114
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_4
    move v6, v4

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 115
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    move v7, v4

    aget-object v6, v6, v7

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/Vec3f;->set(Lcom/sun/javafx/geom/Vec3f;)V

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 117
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v4, v6

    .local v4, "i":Lcom/sun/prism/impl/MeshVertex;
    :goto_5
    move-object v6, v4

    if-eqz v6, :cond_5

    .line 118
    move-object v6, v4

    iget v6, v6, Lcom/sun/prism/impl/MeshVertex;->index:I

    const/4 v7, -0x3

    if-ne v6, v7, :cond_4

    .line 119
    move-object v6, v4

    move v7, v1

    iput v7, v6, Lcom/sun/prism/impl/MeshVertex;->index:I

    .line 120
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/javafx/geom/Vec3f;->set(FFF)V

    .line 117
    :cond_4
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v4, v6

    goto :goto_5

    .line 129
    :cond_5
    :goto_6
    move v6, v3

    if-nez v6, :cond_6

    .line 131
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    invoke-static {v6}, Lcom/sun/prism/impl/MeshUtil;->fixTSpace([Lcom/sun/javafx/geom/Vec3f;)V

    .line 132
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/sun/prism/impl/MeshVertex;->index:I

    .line 134
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 92
    .end local v3    # "nuLocal":I
    .end local v4    # "i":Lcom/sun/prism/impl/MeshVertex;
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    move-object v0, v6

    goto/16 :goto_0

    .line 125
    .restart local v3    # "nuLocal":I
    .restart local v4    # "i":Lcom/sun/prism/impl/MeshVertex;
    :cond_8
    const/4 v6, 0x0

    move v3, v6

    goto :goto_6

    .line 137
    .end local v3    # "nuLocal":I
    .end local v4    # "i":Lcom/sun/prism/impl/MeshVertex;
    :cond_9
    move v6, v1

    move v0, v6

    .end local v0    # "v":Lcom/sun/prism/impl/MeshVertex;
    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/MeshVertex;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MeshVertex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":: smGroup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/MeshVertex;->smGroup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tnorm[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tnorm[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tnorm[2] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/MeshVertex;->norm:[Lcom/sun/javafx/geom/Vec3f;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ttIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/MeshVertex;->tVert:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/MeshVertex;->fIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tpIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/impl/MeshVertex;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tnext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    .line 222
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/MeshVertex;
    return-object v0

    .line 214
    .restart local v0    # "this":Lcom/sun/prism/impl/MeshVertex;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    .line 221
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/MeshVertex;->next:Lcom/sun/prism/impl/MeshVertex;

    .line 222
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
