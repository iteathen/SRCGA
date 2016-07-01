.class Lcom/sun/prism/es2/ES2TextureData;
.super Ljava/lang/Object;
.source "ES2TextureData.java"

# interfaces
.implements Lcom/sun/prism/impl/Disposer$Record;


# instance fields
.field protected final context:Lcom/sun/prism/es2/ES2Context;

.field private lastAssociatedFilterMode:Z

.field private lastAssociatedWrapMode:Lcom/sun/prism/Texture$WrapMode;

.field private size:J

.field private texID:I


# direct methods
.method constructor <init>(Lcom/sun/prism/es2/ES2Context;IIIJ)V
    .locals 15

    .prologue
    .line 47
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2TextureData;
    move-object/from16 v2, p1

    .local v2, "context":Lcom/sun/prism/es2/ES2Context;
    move/from16 v3, p2

    .local v3, "texID":I
    move/from16 v4, p3

    .local v4, "w":I
    move/from16 v5, p4

    .local v5, "h":I
    move-wide/from16 v6, p5

    .local v6, "size":J
    move-object v8, v1

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/sun/prism/es2/ES2TextureData;->lastAssociatedFilterMode:Z

    .line 38
    move-object v8, v1

    sget-object v9, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    iput-object v9, v8, Lcom/sun/prism/es2/ES2TextureData;->lastAssociatedWrapMode:Lcom/sun/prism/Texture$WrapMode;

    .line 48
    move-object v8, v1

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/prism/es2/ES2TextureData;->context:Lcom/sun/prism/es2/ES2Context;

    .line 49
    move-object v8, v1

    move v9, v3

    iput v9, v8, Lcom/sun/prism/es2/ES2TextureData;->texID:I

    .line 50
    move-object v8, v1

    move-wide v9, v6

    iput-wide v9, v8, Lcom/sun/prism/es2/ES2TextureData;->size:J

    .line 51
    move v8, v3

    int-to-long v8, v8

    move v10, v4

    move v11, v5

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/sun/prism/impl/PrismTrace;->textureCreated(JIIJ)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/sun/prism/es2/ES2Context;IJ)V
    .locals 9

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2TextureData;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move v2, p2

    .local v2, "texID":I
    move-wide v3, p3

    .local v3, "size":J
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/prism/es2/ES2TextureData;->lastAssociatedFilterMode:Z

    .line 38
    move-object v5, v0

    sget-object v6, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    iput-object v6, v5, Lcom/sun/prism/es2/ES2TextureData;->lastAssociatedWrapMode:Lcom/sun/prism/Texture$WrapMode;

    .line 42
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/prism/es2/ES2TextureData;->context:Lcom/sun/prism/es2/ES2Context;

    .line 43
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/prism/es2/ES2TextureData;->texID:I

    .line 44
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/sun/prism/es2/ES2TextureData;->size:J

    .line 45
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2TextureData;
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/ES2TextureData;->texID:I

    if-eqz v3, :cond_2

    .line 84
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/es2/ES2TextureData;->traceDispose()V

    .line 85
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2TextureData;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v3}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v3

    move-object v1, v3

    .line 88
    .local v1, "glCtx":Lcom/sun/prism/es2/GLContext;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/es2/GLContext;->getNumBoundTexture()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 89
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/ES2TextureData;->texID:I

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/prism/es2/GLContext;->getBoundTexture(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 92
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2TextureData;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v3}, Lcom/sun/prism/es2/ES2Context;->flushVertexBuffer()V

    .line 94
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/prism/es2/GLContext;->updateActiveTextureUnit(I)V

    .line 95
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 88
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/es2/ES2TextureData;->texID:I

    invoke-virtual {v3, v4}, Lcom/sun/prism/es2/GLContext;->deleteTexture(I)V

    .line 100
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/prism/es2/ES2TextureData;->texID:I

    .line 102
    .end local v1    # "glCtx":Lcom/sun/prism/es2/GLContext;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public getSize()J
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2TextureData;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/ES2TextureData;->size:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2TextureData;
    return-wide v0
.end method

.method public getTexID()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2TextureData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2TextureData;->texID:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2TextureData;
    return v0
.end method

.method public getWrapMode()Lcom/sun/prism/Texture$WrapMode;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2TextureData;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2TextureData;->lastAssociatedWrapMode:Lcom/sun/prism/Texture$WrapMode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2TextureData;
    return-object v0
.end method

.method public isFiltered()Z
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2TextureData;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/ES2TextureData;->lastAssociatedFilterMode:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2TextureData;
    return v0
.end method

.method public setFiltered(Z)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2TextureData;
    move v1, p1

    .local v1, "filterMode":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/es2/ES2TextureData;->lastAssociatedFilterMode:Z

    .line 68
    return-void
.end method

.method public setWrapMode(Lcom/sun/prism/Texture$WrapMode;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2TextureData;
    move-object v1, p1

    .local v1, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/es2/ES2TextureData;->lastAssociatedWrapMode:Lcom/sun/prism/Texture$WrapMode;

    .line 76
    return-void
.end method

.method traceDispose()V
    .locals 4

    .prologue
    .line 79
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2TextureData;
    move-object v2, v1

    iget v2, v2, Lcom/sun/prism/es2/ES2TextureData;->texID:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/sun/prism/impl/PrismTrace;->textureDisposed(J)V

    .line 80
    return-void
.end method
