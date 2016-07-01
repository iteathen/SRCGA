.class Lcom/sun/prism/es2/ES2VertexBuffer;
.super Lcom/sun/prism/impl/VertexBuffer;
.source "ES2VertexBuffer.java"


# static fields
.field protected static final BYTES_PER_FLOAT:I = 0x4


# instance fields
.field private glCtx:Lcom/sun/prism/es2/GLContext;


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VertexBuffer;
    move v1, p1

    .local v1, "maxQuads":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/prism/impl/VertexBuffer;-><init>(I)V

    .line 35
    return-void
.end method

.method public static getQuadIndices16bit(I)[S
    .locals 9

    .prologue
    .line 76
    move v0, p0

    .local v0, "numQuads":I
    move v5, v0

    const/4 v6, 0x6

    mul-int/lit8 v5, v5, 0x6

    new-array v5, v5, [S

    move-object v1, v5

    .line 78
    .local v1, "data":[S
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move v6, v0

    if-eq v5, v6, :cond_0

    .line 79
    move v5, v2

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    move v3, v5

    .line 80
    .local v3, "vtx":I
    move v5, v2

    const/4 v6, 0x6

    mul-int/lit8 v5, v5, 0x6

    move v4, v5

    .line 81
    .local v4, "idx":I
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x0

    add-int/lit8 v6, v6, 0x0

    move v7, v3

    const/4 v8, 0x0

    add-int/lit8 v7, v7, 0x0

    int-to-short v7, v7

    aput-short v7, v5, v6

    .line 82
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    aput-short v7, v5, v6

    .line 83
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    int-to-short v7, v7

    aput-short v7, v5, v6

    .line 85
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    int-to-short v7, v7

    aput-short v7, v5, v6

    .line 86
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x4

    add-int/lit8 v6, v6, 0x4

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    aput-short v7, v5, v6

    .line 87
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x5

    add-int/lit8 v6, v6, 0x5

    move v7, v3

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    int-to-short v7, v7

    aput-short v7, v5, v6

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v3    # "vtx":I
    .end local v4    # "idx":I
    :cond_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "numQuads":I
    return-object v0
.end method


# virtual methods
.method disableVertexAttributes(Lcom/sun/prism/es2/GLContext;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VertexBuffer;
    move-object v1, p1

    .local v1, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/es2/ES2VertexBuffer;->glCtx:Lcom/sun/prism/es2/GLContext;

    .line 54
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/prism/es2/GLContext;->disableVertexAttributes()V

    .line 55
    return-void
.end method

.method protected drawQuads(I)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VertexBuffer;
    move v1, p1

    .local v1, "numVertices":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2VertexBuffer;->glCtx:Lcom/sun/prism/es2/GLContext;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2VertexBuffer;->coordArray:[F

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2VertexBuffer;->colorArray:[B

    move v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/prism/es2/GLContext;->drawIndexedQuads([F[BI)V

    .line 66
    return-void
.end method

.method protected drawTriangles(I[F[B)V
    .locals 8

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VertexBuffer;
    move v1, p1

    .local v1, "numTriangles":I
    move-object v2, p2

    .local v2, "fData":[F
    move-object v3, p3

    .local v3, "cData":[B
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2VertexBuffer;->glCtx:Lcom/sun/prism/es2/GLContext;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->drawTriangleList(I[F[B)V

    .line 71
    return-void
.end method

.method enableVertexAttributes(Lcom/sun/prism/es2/GLContext;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VertexBuffer;
    move-object v1, p1

    .local v1, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/es2/ES2VertexBuffer;->glCtx:Lcom/sun/prism/es2/GLContext;

    .line 60
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/prism/es2/GLContext;->enableVertexAttributes()V

    .line 61
    return-void
.end method

.method public genQuadsIndexBuffer(I)I
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VertexBuffer;
    move v1, p1

    .local v1, "numQuads":I
    move v2, v1

    const/4 v3, 0x6

    mul-int/lit8 v2, v2, 0x6

    const/high16 v3, 0x10000

    if-le v2, v3, :cond_0

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "vertex indices overflow"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2VertexBuffer;->glCtx:Lcom/sun/prism/es2/GLContext;

    move v3, v1

    invoke-static {v3}, Lcom/sun/prism/es2/ES2VertexBuffer;->getQuadIndices16bit(I)[S

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/GLContext;->createIndexBuffer16([S)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2VertexBuffer;
    return v0
.end method
