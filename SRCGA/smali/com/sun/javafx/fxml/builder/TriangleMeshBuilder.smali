.class public Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
.super Ljava/util/TreeMap;
.source "TriangleMeshBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/shape/TriangleMesh;",
        ">;"
    }
.end annotation


# static fields
.field private static final VALUE_SEPARATOR_REGEX:Ljava/lang/String; = "[,\\s]+"


# instance fields
.field private faceSmoothingGroups:[I

.field private faces:[I

.field private normals:[F

.field private points:[F

.field private texCoords:[F

.field private vertexFormat:Ljavafx/scene/shape/VertexFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->build()Ljavafx/scene/shape/TriangleMesh;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/shape/TriangleMesh;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    new-instance v2, Ljavafx/scene/shape/TriangleMesh;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/shape/TriangleMesh;-><init>()V

    move-object v1, v2

    .line 51
    .local v1, "mesh":Ljavafx/scene/shape/TriangleMesh;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->points:[F

    if-eqz v2, :cond_0

    .line 52
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/shape/TriangleMesh;->getPoints()Ljavafx/collections/ObservableFloatArray;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->points:[F

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableFloatArray;->setAll([F)V

    .line 54
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->texCoords:[F

    if-eqz v2, :cond_1

    .line 55
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/shape/TriangleMesh;->getTexCoords()Ljavafx/collections/ObservableFloatArray;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->texCoords:[F

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableFloatArray;->setAll([F)V

    .line 57
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->faces:[I

    if-eqz v2, :cond_2

    .line 58
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/shape/TriangleMesh;->getFaces()Ljavafx/scene/shape/ObservableFaceArray;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->faces:[I

    invoke-interface {v2, v3}, Ljavafx/scene/shape/ObservableFaceArray;->setAll([I)V

    .line 60
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->faceSmoothingGroups:[I

    if-eqz v2, :cond_3

    .line 61
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/shape/TriangleMesh;->getFaceSmoothingGroups()Ljavafx/collections/ObservableIntegerArray;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->faceSmoothingGroups:[I

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableIntegerArray;->setAll([I)V

    .line 63
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->normals:[F

    if-eqz v2, :cond_4

    .line 64
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/shape/TriangleMesh;->getNormals()Ljavafx/collections/ObservableFloatArray;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->normals:[F

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableFloatArray;->setAll([F)V

    .line 66
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->vertexFormat:Ljavafx/scene/shape/VertexFormat;

    if-eqz v2, :cond_5

    .line 67
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->vertexFormat:Ljavafx/scene/shape/VertexFormat;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/TriangleMesh;->setVertexFormat(Ljavafx/scene/shape/VertexFormat;)V

    .line 69
    :cond_5
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    move-object v1, v0

    invoke-super {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    const-string v5, "points"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string v6, "[,\\s]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 77
    .local v3, "split":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [F

    iput-object v6, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->points:[F

    .line 78
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 79
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->points:[F

    move v6, v4

    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v5, v6

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .line 115
    .end local v3    # "split":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    :goto_1
    move-object v5, v0

    move-object v6, v1

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    return-object v0

    .line 81
    .restart local v0    # "this":Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;
    :cond_1
    const-string v5, "texcoords"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 82
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string v6, "[,\\s]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 83
    .restart local v3    # "split":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [F

    iput-object v6, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->texCoords:[F

    .line 84
    const/4 v5, 0x0

    move v4, v5

    .restart local v4    # "i":I
    :goto_2
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 85
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->texCoords:[F

    move v6, v4

    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v5, v6

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 87
    :cond_2
    goto :goto_1

    .end local v3    # "split":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    const-string v5, "faces"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 88
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string v6, "[,\\s]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 89
    .restart local v3    # "split":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->faces:[I

    .line 90
    const/4 v5, 0x0

    move v4, v5

    .restart local v4    # "i":I
    :goto_3
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 91
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->faces:[I

    move v6, v4

    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 93
    :cond_4
    goto :goto_1

    .end local v3    # "split":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_5
    const-string v5, "facesmoothinggroups"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 94
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string v6, "[,\\s]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 95
    .restart local v3    # "split":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->faceSmoothingGroups:[I

    .line 96
    const/4 v5, 0x0

    move v4, v5

    .restart local v4    # "i":I
    :goto_4
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_6

    .line 97
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->faceSmoothingGroups:[I

    move v6, v4

    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 99
    :cond_6
    goto/16 :goto_1

    .end local v3    # "split":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_7
    const-string v5, "normals"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 100
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string v6, "[,\\s]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 101
    .restart local v3    # "split":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [F

    iput-object v6, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->normals:[F

    .line 102
    const/4 v5, 0x0

    move v4, v5

    .restart local v4    # "i":I
    :goto_5
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 103
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->normals:[F

    move v6, v4

    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v5, v6

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 105
    :cond_8
    goto/16 :goto_1

    .end local v3    # "split":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_9
    const-string v5, "vertexformat"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    move-object v5, v2

    instance-of v5, v5, Ljavafx/scene/shape/VertexFormat;

    if-eqz v5, :cond_a

    .line 107
    move-object v5, v0

    move-object v6, v2

    check-cast v6, Ljavafx/scene/shape/VertexFormat;

    iput-object v6, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->vertexFormat:Ljavafx/scene/shape/VertexFormat;

    goto/16 :goto_1

    .line 108
    :cond_a
    const-string v5, "point_texcoord"

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 109
    move-object v5, v0

    sget-object v6, Ljavafx/scene/shape/VertexFormat;->POINT_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    iput-object v6, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->vertexFormat:Ljavafx/scene/shape/VertexFormat;

    goto/16 :goto_1

    .line 110
    :cond_b
    const-string v5, "point_normal_texcoord"

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    move-object v5, v0

    sget-object v6, Ljavafx/scene/shape/VertexFormat;->POINT_NORMAL_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    iput-object v6, v5, Lcom/sun/javafx/fxml/builder/TriangleMeshBuilder;->vertexFormat:Ljavafx/scene/shape/VertexFormat;

    goto/16 :goto_1
.end method
