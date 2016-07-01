.class Lcom/sun/prism/null3d/DummyVertexBuffer;
.super Lcom/sun/prism/impl/VertexBuffer;
.source "DummyVertexBuffer.java"


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyVertexBuffer;
    move v1, p1

    .local v1, "maxQuads":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/prism/impl/VertexBuffer;-><init>(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected drawQuads(I)V
    .locals 0
    .param p1, "numVertices"    # I

    .prologue
    .line 36
    return-void
.end method

.method protected drawTriangles(I[F[B)V
    .locals 0
    .param p1, "numTriangles"    # I
    .param p2, "fData"    # [F
    .param p3, "cData"    # [B

    .prologue
    .line 38
    return-void
.end method
