.class Lcom/sun/prism/es2/ES2RTTextureData;
.super Lcom/sun/prism/es2/ES2TextureData;
.source "ES2RTTextureData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private dbID:I

.field private fboID:I

.field private rbID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sun/prism/es2/ES2RTTextureData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/prism/es2/ES2RTTextureData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sun/prism/es2/ES2Context;IIIIJ)V
    .locals 14

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTextureData;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move/from16 v2, p2

    .local v2, "texID":I
    move/from16 v3, p3

    .local v3, "fboID":I
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move-wide/from16 v6, p6

    .local v6, "size":J
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-wide v11, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/prism/es2/ES2TextureData;-><init>(Lcom/sun/prism/es2/ES2Context;IJ)V

    .line 39
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/prism/es2/ES2RTTextureData;->fboID:I

    .line 40
    move v8, v3

    int-to-long v8, v8

    move v10, v4

    move v11, v5

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/sun/prism/impl/PrismTrace;->rttCreated(JIIJ)V

    .line 41
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTextureData;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/prism/es2/ES2TextureData;->dispose()V

    .line 73
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2RTTextureData;->fboID:I

    if-eqz v1, :cond_2

    .line 74
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2RTTextureData;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/ES2RTTextureData;->fboID:I

    invoke-virtual {v1, v2}, Lcom/sun/prism/es2/GLContext;->deleteFBO(I)V

    .line 75
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2RTTextureData;->dbID:I

    if-eqz v1, :cond_0

    .line 76
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2RTTextureData;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/ES2RTTextureData;->dbID:I

    invoke-virtual {v1, v2}, Lcom/sun/prism/es2/GLContext;->deleteRenderBuffer(I)V

    .line 77
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/es2/ES2RTTextureData;->dbID:I

    .line 79
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2RTTextureData;->rbID:I

    if-eqz v1, :cond_1

    .line 80
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2RTTextureData;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/ES2RTTextureData;->rbID:I

    invoke-virtual {v1, v2}, Lcom/sun/prism/es2/GLContext;->deleteRenderBuffer(I)V

    .line 81
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/es2/ES2RTTextureData;->rbID:I

    .line 83
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/es2/ES2RTTextureData;->fboID:I

    .line 85
    :cond_2
    return-void
.end method

.method public getDepthBufferID()I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTextureData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2RTTextureData;->dbID:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTextureData;
    return v0
.end method

.method public getFboID()I
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTextureData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2RTTextureData;->fboID:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTextureData;
    return v0
.end method

.method public getMSAARenderBufferID()I
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTextureData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2RTTextureData;->rbID:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTextureData;
    return v0
.end method

.method setDepthBufferID(I)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTextureData;
    move v1, p1

    .local v1, "dbID":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/ES2RTTextureData;->dbID:I

    .line 63
    return-void
.end method

.method setMSAARenderBufferID(I)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTextureData;
    move v1, p1

    .local v1, "rbID":I
    sget-boolean v2, Lcom/sun/prism/es2/ES2RTTextureData;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/es2/ES2RTTextureData;->getTexID()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 54
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/es2/ES2RTTextureData;->rbID:I

    .line 55
    return-void
.end method

.method traceDispose()V
    .locals 4

    .prologue
    .line 67
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2RTTextureData;
    move-object v2, v1

    iget v2, v2, Lcom/sun/prism/es2/ES2RTTextureData;->fboID:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/sun/prism/impl/PrismTrace;->rttDisposed(J)V

    .line 68
    return-void
.end method
