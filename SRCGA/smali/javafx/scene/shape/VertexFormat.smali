.class public final Ljavafx/scene/shape/VertexFormat;
.super Ljava/lang/Object;
.source "VertexFormat.java"


# static fields
.field private static final NORMAL_ELEMENT_SIZE:I = 0x3

.field private static final POINT_ELEMENT_SIZE:I = 0x3

.field public static final POINT_NORMAL_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

.field public static final POINT_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

.field private static final TEXCOORD_ELEMENT_SIZE:I = 0x2


# instance fields
.field private final name:Ljava/lang/String;

.field private final normalIndexOffset:I

.field private final pointIndexOffset:I

.field private final texCoordIndexOffset:I

.field private final vertexIndexSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 38
    new-instance v0, Ljavafx/scene/shape/VertexFormat;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const-string v2, "POINT_TEXCOORD"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Ljavafx/scene/shape/VertexFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljavafx/scene/shape/VertexFormat;->POINT_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    .line 43
    new-instance v0, Ljavafx/scene/shape/VertexFormat;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const-string v2, "POINT_NORMAL_TEXCOORD"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Ljavafx/scene/shape/VertexFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljavafx/scene/shape/VertexFormat;->POINT_NORMAL_TEXCOORD:Ljavafx/scene/shape/VertexFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VertexFormat;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "vertexIndexSize":I
    move v3, p3

    .local v3, "pointIndexOffset":I
    move v4, p4

    .local v4, "normalIndexOffset":I
    move v5, p5

    .local v5, "texCoordIndexOffset":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/shape/VertexFormat;->name:Ljava/lang/String;

    .line 59
    move-object v6, v0

    move v7, v2

    iput v7, v6, Ljavafx/scene/shape/VertexFormat;->vertexIndexSize:I

    .line 60
    move-object v6, v0

    move v7, v3

    iput v7, v6, Ljavafx/scene/shape/VertexFormat;->pointIndexOffset:I

    .line 61
    move-object v6, v0

    move v7, v4

    iput v7, v6, Ljavafx/scene/shape/VertexFormat;->normalIndexOffset:I

    .line 62
    move-object v6, v0

    move v7, v5

    iput v7, v6, Ljavafx/scene/shape/VertexFormat;->texCoordIndexOffset:I

    .line 63
    return-void
.end method


# virtual methods
.method getNormalElementSize()I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VertexFormat;
    const/4 v1, 0x3

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/VertexFormat;
    return v0
.end method

.method public getNormalIndexOffset()I
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VertexFormat;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/shape/VertexFormat;->normalIndexOffset:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/VertexFormat;
    return v0
.end method

.method getPointElementSize()I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VertexFormat;
    const/4 v1, 0x3

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/VertexFormat;
    return v0
.end method

.method public getPointIndexOffset()I
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VertexFormat;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/shape/VertexFormat;->pointIndexOffset:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/VertexFormat;
    return v0
.end method

.method getTexCoordElementSize()I
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VertexFormat;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/VertexFormat;
    return v0
.end method

.method public getTexCoordIndexOffset()I
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VertexFormat;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/shape/VertexFormat;->texCoordIndexOffset:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/VertexFormat;
    return v0
.end method

.method public getVertexIndexSize()I
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VertexFormat;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/shape/VertexFormat;->vertexIndexSize:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/VertexFormat;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/VertexFormat;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/VertexFormat;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/VertexFormat;
    return-object v0
.end method
