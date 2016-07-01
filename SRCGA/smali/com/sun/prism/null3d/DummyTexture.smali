.class Lcom/sun/prism/null3d/DummyTexture;
.super Lcom/sun/prism/impl/BaseTexture;
.source "DummyTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/null3d/DummyTexture$DummyManagedResource;
    }
.end annotation


# instance fields
.field context:Lcom/sun/prism/null3d/DummyContext;


# direct methods
.method constructor <init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;II)V
    .locals 13

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyTexture;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/null3d/DummyContext;
    move-object v2, p2

    .local v2, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "contentWidth":I
    move/from16 v5, p5

    .local v5, "contentHeight":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/sun/prism/null3d/DummyTexture;-><init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIZ)V

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIZ)V
    .locals 20

    .prologue
    .line 54
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/null3d/DummyTexture;
    move-object/from16 v2, p1

    .local v2, "context":Lcom/sun/prism/null3d/DummyContext;
    move-object/from16 v3, p2

    .local v3, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v4, p3

    .local v4, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v5, p4

    .local v5, "contentWidth":I
    move/from16 v6, p5

    .local v6, "contentHeight":I
    move/from16 v7, p6

    .local v7, "isRTT":Z
    move-object v8, v1

    new-instance v9, Lcom/sun/prism/null3d/DummyTexture$DummyManagedResource;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Lcom/sun/prism/null3d/DummyTexture$DummyManagedResource;-><init>()V

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move v13, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v5

    move/from16 v17, v6

    const/16 v18, 0x0

    invoke-direct/range {v8 .. v18}, Lcom/sun/prism/impl/BaseTexture;-><init>(Lcom/sun/prism/impl/ManagedResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIZ)V

    .line 58
    move-object v8, v1

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/prism/null3d/DummyTexture;->context:Lcom/sun/prism/null3d/DummyContext;

    .line 60
    move v8, v7

    if-eqz v8, :cond_0

    .line 61
    const-wide/16 v8, 0x0

    move v10, v5

    move v11, v5

    const/4 v12, 0x4

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/prism/impl/PrismTrace;->rttCreated(JIII)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    const-wide/16 v8, 0x0

    move v10, v5

    move v11, v5

    move-object v12, v3

    .line 64
    invoke-virtual {v12}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v12

    .line 63
    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/prism/impl/PrismTrace;->textureCreated(JIII)V

    goto :goto_0
.end method


# virtual methods
.method protected createSharedTexture(Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyTexture;
    move-object v1, p1

    .local v1, "newMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyTexture;
    return-object v0
.end method

.method public getContext()Lcom/sun/prism/null3d/DummyContext;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyTexture;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/null3d/DummyTexture;->context:Lcom/sun/prism/null3d/DummyContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyTexture;
    return-object v0
.end method

.method public update(Lcom/sun/prism/MediaFrame;Z)V
    .locals 0
    .param p1, "frame"    # Lcom/sun/prism/MediaFrame;
    .param p2, "skipFlush"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "format"    # Lcom/sun/prism/PixelFormat;
    .param p3, "dstx"    # I
    .param p4, "dsty"    # I
    .param p5, "srcx"    # I
    .param p6, "srcy"    # I
    .param p7, "srcw"    # I
    .param p8, "srch"    # I
    .param p9, "srcscan"    # I
    .param p10, "skipFlush"    # Z

    .prologue
    .line 74
    return-void
.end method
