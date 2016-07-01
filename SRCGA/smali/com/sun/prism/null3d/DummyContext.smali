.class Lcom/sun/prism/null3d/DummyContext;
.super Lcom/sun/prism/impl/ps/BaseShaderContext;
.source "DummyContext.java"


# instance fields
.field private state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/Screen;Lcom/sun/prism/null3d/DummyResourceFactory;)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyContext;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    move-object v2, p2

    .local v2, "factory":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    new-instance v6, Lcom/sun/prism/null3d/DummyVertexBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/16 v8, 0x20

    invoke-direct {v7, v8}, Lcom/sun/prism/null3d/DummyVertexBuffer;-><init>(I)V

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/prism/impl/ps/BaseShaderContext;-><init>(Lcom/sun/glass/ui/Screen;Lcom/sun/prism/ps/ShaderFactory;Lcom/sun/prism/impl/VertexBuffer;)V

    .line 45
    return-void
.end method


# virtual methods
.method public blit(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V
    .locals 0
    .param p1, "srcRTT"    # Lcom/sun/prism/RTTexture;
    .param p2, "dstRTT"    # Lcom/sun/prism/RTTexture;
    .param p3, "srcX0"    # I
    .param p4, "srcY0"    # I
    .param p5, "srcX1"    # I
    .param p6, "srcY1"    # I
    .param p7, "dstX0"    # I
    .param p8, "dstY0"    # I
    .param p9, "dstX1"    # I
    .param p10, "dstY1"    # I

    .prologue
    .line 82
    return-void
.end method

.method protected init()V
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyContext;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/prism/impl/ps/BaseShaderContext;->init()V

    .line 50
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;-><init>()V

    iput-object v2, v1, Lcom/sun/prism/null3d/DummyContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 51
    return-void
.end method

.method protected updateClipRect(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 0
    .param p1, "clipRect"    # Lcom/sun/javafx/geom/Rectangle;

    .prologue
    .line 72
    return-void
.end method

.method protected updateCompositeMode(Lcom/sun/prism/CompositeMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/sun/prism/CompositeMode;

    .prologue
    .line 76
    return-void
.end method

.method protected updateRenderTarget(Lcom/sun/prism/RenderTarget;Lcom/sun/javafx/sg/prism/NGCamera;Z)Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyContext;
    move-object v1, p1

    .local v1, "target":Lcom/sun/prism/RenderTarget;
    move-object v2, p2

    .local v2, "camera":Lcom/sun/javafx/sg/prism/NGCamera;
    move v3, p3

    .local v3, "depthTest":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/null3d/DummyContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyContext;
    return-object v0
.end method

.method protected updateShaderTransform(Lcom/sun/prism/ps/Shader;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 0
    .param p1, "shader"    # Lcom/sun/prism/ps/Shader;
    .param p2, "xform"    # Lcom/sun/javafx/geom/transform/BaseTransform;

    .prologue
    .line 64
    return-void
.end method

.method protected updateTexture(ILcom/sun/prism/Texture;)V
    .locals 0
    .param p1, "texUnit"    # I
    .param p2, "tex"    # Lcom/sun/prism/Texture;

    .prologue
    .line 60
    return-void
.end method

.method protected updateWorldTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 0
    .param p1, "xform"    # Lcom/sun/javafx/geom/transform/BaseTransform;

    .prologue
    .line 68
    return-void
.end method
