.class public abstract Lcom/sun/prism/impl/ps/BaseShaderContext;
.super Lcom/sun/prism/impl/BaseContext;
.source "BaseShaderContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/impl/ps/BaseShaderContext$State;,
        Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;,
        Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    }
.end annotation


# static fields
.field private static final CHECK_CLEAR_OP_MASK:I = 0x4

.field private static final CHECK_CLIP:I = 0x4

.field private static final CHECK_COMPOSITE:I = 0x8

.field private static final CHECK_PAINT_OP_MASK:I = 0xf

.field private static final CHECK_SHADER:I = 0x1

.field private static final CHECK_TEXTURE_OP_MASK:I = 0xf

.field private static final CHECK_TRANSFORM:I = 0x2

.field private static final NUM_STOCK_SHADER_SLOTS:I


# instance fields
.field private externalShader:Lcom/sun/prism/ps/Shader;

.field private final factory:Lcom/sun/prism/ps/ShaderFactory;

.field private lcdBuffer:Lcom/sun/prism/RTTexture;

.field private final specialATShaders:[Lcom/sun/prism/ps/Shader;

.field private final specialShaders:[Lcom/sun/prism/ps/Shader;

.field private state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

.field private final stockATShaders:[Lcom/sun/prism/ps/Shader;

.field private final stockShaders:[Lcom/sun/prism/ps/Shader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->values()[Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/sun/prism/impl/ps/BaseShaderContext;->NUM_STOCK_SHADER_SLOTS:I

    .line 129
    return-void
.end method

.method protected constructor <init>(Lcom/sun/glass/ui/Screen;Lcom/sun/prism/ps/ShaderFactory;Lcom/sun/prism/impl/VertexBuffer;)V
    .locals 8

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    move-object v2, p2

    .local v2, "factory":Lcom/sun/prism/ps/ShaderFactory;
    move-object v3, p3

    .local v3, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/prism/impl/BaseContext;-><init>(Lcom/sun/glass/ui/Screen;Lcom/sun/prism/ResourceFactory;Lcom/sun/prism/impl/VertexBuffer;)V

    .line 132
    move-object v4, v0

    sget v5, Lcom/sun/prism/impl/ps/BaseShaderContext;->NUM_STOCK_SHADER_SLOTS:I

    new-array v5, v5, [Lcom/sun/prism/ps/Shader;

    iput-object v5, v4, Lcom/sun/prism/impl/ps/BaseShaderContext;->stockShaders:[Lcom/sun/prism/ps/Shader;

    .line 134
    move-object v4, v0

    sget v5, Lcom/sun/prism/impl/ps/BaseShaderContext;->NUM_STOCK_SHADER_SLOTS:I

    new-array v5, v5, [Lcom/sun/prism/ps/Shader;

    iput-object v5, v4, Lcom/sun/prism/impl/ps/BaseShaderContext;->stockATShaders:[Lcom/sun/prism/ps/Shader;

    .line 152
    move-object v4, v0

    invoke-static {}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->values()[Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Lcom/sun/prism/ps/Shader;

    iput-object v5, v4, Lcom/sun/prism/impl/ps/BaseShaderContext;->specialShaders:[Lcom/sun/prism/ps/Shader;

    .line 154
    move-object v4, v0

    invoke-static {}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->values()[Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Lcom/sun/prism/ps/Shader;

    iput-object v5, v4, Lcom/sun/prism/impl/ps/BaseShaderContext;->specialATShaders:[Lcom/sun/prism/ps/Shader;

    .line 165
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/prism/impl/ps/BaseShaderContext;->factory:Lcom/sun/prism/ps/ShaderFactory;

    .line 166
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/prism/impl/ps/BaseShaderContext;->init()V

    .line 167
    return-void
.end method

.method private checkState(Lcom/sun/prism/impl/ps/BaseShaderGraphics;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;)V
    .locals 9

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move v2, p2

    .local v2, "checkFlags":I
    move-object v3, p3

    .local v3, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, p4

    .local v4, "shader":Lcom/sun/prism/ps/Shader;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setRenderTarget(Lcom/sun/prism/impl/BaseGraphics;)V

    .line 647
    move v6, v2

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 648
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/prism/ps/Shader;

    move-result-object v7

    if-eq v6, v7, :cond_0

    .line 649
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 650
    move-object v6, v4

    invoke-interface {v6}, Lcom/sun/prism/ps/Shader;->enable()V

    .line 651
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-object v7, v4

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$102(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/prism/ps/Shader;)Lcom/sun/prism/ps/Shader;

    move-result-object v6

    .line 655
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$802(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Z)Z

    move-result v6

    .line 656
    move v6, v2

    const/4 v7, 0x2

    or-int/lit8 v6, v6, 0x2

    move v2, v6

    .line 660
    :cond_0
    move v6, v2

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 661
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v6}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$800(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$900(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 662
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 663
    move-object v6, v0

    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updateShaderTransform(Lcom/sun/prism/ps/Shader;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 664
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v6}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$900(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 665
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$802(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Z)Z

    move-result v6

    .line 669
    :cond_2
    move v6, v2

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3

    .line 670
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getClipRectNoClone()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    move-object v5, v6

    .line 671
    .local v5, "clip":Lcom/sun/javafx/geom/Rectangle;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$000(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v7

    if-eq v6, v7, :cond_3

    .line 672
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 673
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updateClipRect(Lcom/sun/javafx/geom/Rectangle;)V

    .line 674
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-object v7, v5

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$002(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    .line 678
    .end local v5    # "clip":Lcom/sun/javafx/geom/Rectangle;
    :cond_3
    move v6, v2

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_4

    .line 679
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getCompositeMode()Lcom/sun/prism/CompositeMode;

    move-result-object v6

    move-object v5, v6

    .line 680
    .local v5, "mode":Lcom/sun/prism/CompositeMode;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1000(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/prism/CompositeMode;

    move-result-object v7

    if-eq v6, v7, :cond_4

    .line 681
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 682
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updateCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 683
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-object v7, v5

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1002(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/prism/CompositeMode;)Lcom/sun/prism/CompositeMode;

    move-result-object v6

    .line 686
    .end local v5    # "mode":Lcom/sun/prism/CompositeMode;
    :cond_4
    return-void
.end method

.method private getPaintShader(ZLcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/paint/Paint;)Lcom/sun/prism/ps/Shader;
    .locals 17

    .prologue
    .line 233
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move/from16 v1, p1

    .local v1, "alphaTest":Z
    move-object/from16 v2, p2

    .local v2, "maskType":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object/from16 v3, p3

    .local v3, "paint":Lcom/sun/prism/paint/Paint;
    move-object v10, v2

    move-object v11, v3

    invoke-static {v10, v11}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getStockShaderIndex(Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/paint/Paint;)I

    move-result v10

    move v4, v10

    .line 234
    .local v4, "index":I
    move v10, v1

    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/ps/BaseShaderContext;->stockATShaders:[Lcom/sun/prism/ps/Shader;

    :goto_0
    move-object v5, v10

    .line 235
    .local v5, "shaders":[Lcom/sun/prism/ps/Shader;
    move-object v10, v5

    move v11, v4

    aget-object v10, v10, v11

    move-object v6, v10

    .line 236
    .local v6, "shader":Lcom/sun/prism/ps/Shader;
    move-object v10, v6

    if-eqz v10, :cond_0

    move-object v10, v6

    invoke-interface {v10}, Lcom/sun/prism/ps/Shader;->isValid()Z

    move-result v10

    if-nez v10, :cond_0

    .line 237
    move-object v10, v6

    invoke-interface {v10}, Lcom/sun/prism/ps/Shader;->dispose()V

    .line 238
    const/4 v10, 0x0

    move-object v6, v10

    .line 240
    :cond_0
    move-object v10, v6

    if-nez v10, :cond_3

    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v2

    .line 242
    invoke-virtual {v11}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/prism/paint/Paint$Type;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 243
    .local v7, "shaderName":Ljava/lang/String;
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/prism/paint/Paint$Type;->isGradient()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->isNewPaintStyle()Z

    move-result v10

    if-nez v10, :cond_1

    .line 244
    move-object v10, v3

    check-cast v10, Lcom/sun/prism/paint/Gradient;

    move-object v8, v10

    .line 245
    .local v8, "grad":Lcom/sun/prism/paint/Gradient;
    move-object v10, v8

    invoke-virtual {v10}, Lcom/sun/prism/paint/Gradient;->getSpreadMethod()I

    move-result v10

    move v9, v10

    .line 246
    .local v9, "spreadMethod":I
    move v10, v9

    if-nez v10, :cond_5

    .line 247
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_PAD"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 254
    .end local v8    # "grad":Lcom/sun/prism/paint/Gradient;
    .end local v9    # "spreadMethod":I
    :cond_1
    :goto_1
    move v10, v1

    if-eqz v10, :cond_2

    .line 255
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_AlphaTest"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 257
    :cond_2
    move-object v10, v5

    move v11, v4

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/ps/BaseShaderContext;->factory:Lcom/sun/prism/ps/ShaderFactory;

    move-object v13, v7

    invoke-interface {v12, v13}, Lcom/sun/prism/ps/ShaderFactory;->createStockShader(Ljava/lang/String;)Lcom/sun/prism/ps/Shader;

    move-result-object v12

    move-object v14, v10

    move v15, v11

    move-object/from16 v16, v12

    move-object/from16 v10, v16

    move-object v11, v14

    move v12, v15

    move-object/from16 v13, v16

    aput-object v13, v11, v12

    move-object v6, v10

    .line 259
    .end local v7    # "shaderName":Ljava/lang/String;
    :cond_3
    move-object v10, v6

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return-object v0

    .line 234
    .end local v5    # "shaders":[Lcom/sun/prism/ps/Shader;
    .end local v6    # "shader":Lcom/sun/prism/ps/Shader;
    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/ps/BaseShaderContext;->stockShaders:[Lcom/sun/prism/ps/Shader;

    goto/16 :goto_0

    .line 248
    .restart local v5    # "shaders":[Lcom/sun/prism/ps/Shader;
    .restart local v6    # "shader":Lcom/sun/prism/ps/Shader;
    .restart local v7    # "shaderName":Ljava/lang/String;
    .restart local v8    # "grad":Lcom/sun/prism/paint/Gradient;
    .restart local v9    # "spreadMethod":I
    :cond_5
    move v10, v9

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 249
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_REFLECT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    goto :goto_1

    .line 250
    :cond_6
    move v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 251
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_REPEAT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    goto :goto_1
.end method

.method private getSpecialShader(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;)Lcom/sun/prism/ps/Shader;
    .locals 12

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/impl/BaseGraphics;
    move-object v2, p2

    .local v2, "sst":Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/prism/impl/BaseGraphics;->isAlphaTestShader()Z

    move-result v7

    move v3, v7

    .line 301
    .local v3, "alphaTest":Z
    move v7, v3

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->specialATShaders:[Lcom/sun/prism/ps/Shader;

    :goto_0
    move-object v4, v7

    .line 302
    .local v4, "shaders":[Lcom/sun/prism/ps/Shader;
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    move-object v5, v7

    .line 303
    .local v5, "shader":Lcom/sun/prism/ps/Shader;
    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-interface {v7}, Lcom/sun/prism/ps/Shader;->isValid()Z

    move-result v7

    if-nez v7, :cond_0

    .line 304
    move-object v7, v5

    invoke-interface {v7}, Lcom/sun/prism/ps/Shader;->dispose()V

    .line 305
    const/4 v7, 0x0

    move-object v5, v7

    .line 307
    :cond_0
    move-object v7, v5

    if-nez v7, :cond_2

    .line 308
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 309
    .local v6, "shaderName":Ljava/lang/String;
    move v7, v3

    if-eqz v7, :cond_1

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_AlphaTest"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 312
    :cond_1
    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->ordinal()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/impl/ps/BaseShaderContext;->factory:Lcom/sun/prism/ps/ShaderFactory;

    move-object v10, v6

    invoke-interface {v9, v10}, Lcom/sun/prism/ps/ShaderFactory;->createStockShader(Ljava/lang/String;)Lcom/sun/prism/ps/Shader;

    move-result-object v9

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v5, v10

    aput-object v9, v7, v8

    .line 314
    .end local v6    # "shaderName":Ljava/lang/String;
    :cond_2
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return-object v0

    .line 301
    .end local v4    # "shaders":[Lcom/sun/prism/ps/Shader;
    .end local v5    # "shader":Lcom/sun/prism/ps/Shader;
    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->specialShaders:[Lcom/sun/prism/ps/Shader;

    goto :goto_0
.end method

.method private static getStockShaderIndex(Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/paint/Paint;)I
    .locals 7

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "maskType":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object v1, p1

    .local v1, "paint":Lcom/sun/prism/paint/Paint;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 219
    const/4 v4, 0x0

    move v2, v4

    .line 220
    .local v2, "paintType":I
    const/4 v4, 0x0

    move v3, v4

    .line 229
    .local v3, "paintOption":I
    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    shl-int/lit8 v4, v4, 0x4

    move v5, v2

    const/4 v6, 0x2

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    move v5, v3

    const/4 v6, 0x0

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v4, v5

    move v0, v4

    .end local v0    # "maskType":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    return v0

    .line 222
    .end local v2    # "paintType":I
    .end local v3    # "paintOption":I
    .restart local v0    # "maskType":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/prism/paint/Paint$Type;->ordinal()I

    move-result v4

    move v2, v4

    .line 223
    .restart local v2    # "paintType":I
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/prism/paint/Paint$Type;->isGradient()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    move-object v4, v1

    check-cast v4, Lcom/sun/prism/paint/Gradient;

    invoke-virtual {v4}, Lcom/sun/prism/paint/Gradient;->getSpreadMethod()I

    move-result v4

    move v3, v4

    .restart local v3    # "paintOption":I
    goto :goto_0

    .line 226
    .end local v3    # "paintOption":I
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "paintOption":I
    goto :goto_0
.end method

.method private setTexture(ILcom/sun/prism/Texture;)V
    .locals 6

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move v1, p1

    .local v1, "texUnit":I
    move-object v2, p2

    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->assertLocked()V

    .line 690
    :cond_0
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v4}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)[Lcom/sun/prism/Texture;

    move-result-object v4

    move v5, v1

    aget-object v4, v4, v5

    if-eq v3, v4, :cond_1

    .line 691
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 692
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updateTexture(ILcom/sun/prism/Texture;)V

    .line 693
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v3}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)[Lcom/sun/prism/Texture;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 695
    :cond_1
    return-void
.end method

.method private updatePaintShader(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/prism/ps/Shader;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/paint/Paint;FFFF)V
    .locals 21

    .prologue
    .line 266
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p2

    .local v2, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v3, p3

    .local v3, "maskType":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object/from16 v4, p4

    .local v4, "paint":Lcom/sun/prism/paint/Paint;
    move/from16 v5, p5

    .local v5, "bx":F
    move/from16 v6, p6

    .local v6, "by":F
    move/from16 v7, p7

    .local v7, "bw":F
    move/from16 v8, p8

    .local v8, "bh":F
    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v14

    move-object v9, v14

    .line 267
    .local v9, "paintType":Lcom/sun/prism/paint/Paint$Type;
    move-object v14, v9

    sget-object v15, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    if-eq v14, v15, :cond_0

    move-object v14, v3

    invoke-virtual {v14}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->isNewPaintStyle()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 268
    .line 296
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/prism/paint/Paint;->isProportional()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 273
    move v14, v5

    move v10, v14

    .local v10, "rx":F
    move v14, v6

    move v11, v14

    .local v11, "ry":F
    move v14, v7

    move v12, v14

    .local v12, "rw":F
    move v14, v8

    move v13, v14

    .line 278
    .local v13, "rh":F
    :goto_1
    sget-object v14, Lcom/sun/prism/impl/ps/BaseShaderContext$1;->$SwitchMap$com$sun$prism$paint$Paint$Type:[I

    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/prism/paint/Paint$Type;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 296
    :goto_2
    goto :goto_0

    .line 275
    .end local v10    # "rx":F
    .end local v11    # "ry":F
    .end local v12    # "rw":F
    .end local v13    # "rh":F
    :cond_2
    const/4 v14, 0x0

    move v10, v14

    .restart local v10    # "rx":F
    const/4 v14, 0x0

    move v11, v14

    .restart local v11    # "ry":F
    const/high16 v14, 0x3f800000    # 1.0f

    move v12, v14

    .restart local v12    # "rw":F
    const/high16 v14, 0x3f800000    # 1.0f

    move v13, v14

    .restart local v13    # "rh":F
    goto :goto_1

    .line 280
    :pswitch_0
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v4

    check-cast v16, Lcom/sun/prism/paint/LinearGradient;

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lcom/sun/prism/impl/ps/PaintHelper;->setLinearGradient(Lcom/sun/prism/ps/ShaderGraphics;Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/LinearGradient;FFFF)V

    .line 283
    goto :goto_2

    .line 285
    :pswitch_1
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v4

    check-cast v16, Lcom/sun/prism/paint/RadialGradient;

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lcom/sun/prism/impl/ps/PaintHelper;->setRadialGradient(Lcom/sun/prism/ps/ShaderGraphics;Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/RadialGradient;FFFF)V

    .line 288
    goto :goto_2

    .line 290
    :pswitch_2
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v4

    check-cast v16, Lcom/sun/prism/paint/ImagePattern;

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lcom/sun/prism/impl/ps/PaintHelper;->setImagePattern(Lcom/sun/prism/ps/ShaderGraphics;Lcom/sun/prism/ps/Shader;Lcom/sun/prism/paint/ImagePattern;FFFF)V

    goto :goto_2

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updatePerVertexColor(Lcom/sun/prism/paint/Paint;F)V
    .locals 6

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "paint":Lcom/sun/prism/paint/Paint;
    move v2, p2

    .local v2, "extraAlpha":F
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v3

    sget-object v4, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    if-ne v3, v4, :cond_0

    .line 325
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/sun/prism/paint/Color;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/impl/VertexBuffer;->setPerVertexColor(Lcom/sun/prism/paint/Color;F)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/prism/impl/VertexBuffer;->setPerVertexColor(F)V

    goto :goto_0
.end method


# virtual methods
.method public abstract blit(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V
.end method

.method public disposeLCDBuffer()V
    .locals 3

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->lcdBuffer:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    .line 709
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->lcdBuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 710
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->lcdBuffer:Lcom/sun/prism/RTTexture;

    .line 712
    :cond_0
    return-void
.end method

.method public getLCDBuffer()Lcom/sun/prism/RTTexture;
    .locals 2

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->lcdBuffer:Lcom/sun/prism/RTTexture;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 171
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    invoke-interface {v1}, Lcom/sun/prism/ps/Shader;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    invoke-interface {v1}, Lcom/sun/prism/ps/Shader;->dispose()V

    .line 173
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    .line 176
    :cond_0
    return-void
.end method

.method public initLCDBuffer(II)V
    .locals 8

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/BaseShaderContext;->factory:Lcom/sun/prism/ps/ShaderFactory;

    move v5, v1

    move v6, v2

    sget-object v7, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v4, v5, v6, v7}, Lcom/sun/prism/ps/ShaderFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext;->lcdBuffer:Lcom/sun/prism/RTTexture;

    .line 704
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/BaseShaderContext;->lcdBuffer:Lcom/sun/prism/RTTexture;

    invoke-interface {v3}, Lcom/sun/prism/RTTexture;->makePermanent()V

    .line 705
    return-void
.end method

.method public isSuperShaderEnabled()Z
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v1}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/prism/ps/Shader;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/BaseShaderContext;->specialATShaders:[Lcom/sun/prism/ps/Shader;

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->SUPER:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    invoke-virtual {v3}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 320
    invoke-static {v1}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/prism/ps/Shader;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/BaseShaderContext;->specialShaders:[Lcom/sun/prism/ps/Shader;

    sget-object v3, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->SUPER:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    invoke-virtual {v3}, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected releaseRenderTarget()V
    .locals 5

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    if-eqz v2, :cond_0

    .line 789
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1302(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/prism/RenderTarget;)Lcom/sun/prism/RenderTarget;

    move-result-object v2

    .line 790
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v3}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)[Lcom/sun/prism/Texture;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 791
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v2}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)[Lcom/sun/prism/Texture;

    move-result-object v2

    move v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected resetLastClip(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)V
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "state":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$002(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v2

    .line 199
    return-void
.end method

.method setExternalShader(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/prism/ps/Shader;)V
    .locals 5

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v2, p2

    .local v2, "shader":Lcom/sun/prism/ps/Shader;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 634
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 635
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/ps/Shader;->enable()V

    .line 637
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    .line 638
    return-void
.end method

.method protected setRenderTarget(Lcom/sun/prism/RenderTarget;Lcom/sun/javafx/sg/prism/NGCamera;ZZ)V
    .locals 11

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "target":Lcom/sun/prism/RenderTarget;
    move-object v2, p2

    .local v2, "camera":Lcom/sun/javafx/sg/prism/NGCamera;
    move v3, p3

    .local v3, "depthTest":Z
    move v4, p4

    .local v4, "state3D":Z
    move-object v6, v1

    instance-of v6, v6, Lcom/sun/prism/Texture;

    if-eqz v6, :cond_0

    .line 739
    move-object v6, v1

    check-cast v6, Lcom/sun/prism/Texture;

    invoke-interface {v6}, Lcom/sun/prism/Texture;->assertLocked()V

    .line 741
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    if-eqz v6, :cond_1

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 742
    invoke-static {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1200(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 743
    invoke-static {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1300(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/prism/RenderTarget;

    move-result-object v7

    if-ne v6, v7, :cond_1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 744
    invoke-static {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1400(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v7

    if-ne v6, v7, :cond_1

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 745
    invoke-static {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1500(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Z

    move-result v7

    if-eq v6, v7, :cond_3

    .line 747
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 748
    move-object v6, v0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updateRenderTarget(Lcom/sun/prism/RenderTarget;Lcom/sun/javafx/sg/prism/NGCamera;Z)Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 749
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1302(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/prism/RenderTarget;)Lcom/sun/prism/RenderTarget;

    move-result-object v6

    .line 750
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1402(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/javafx/sg/prism/NGCamera;)Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v6

    .line 751
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move v7, v3

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1502(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Z)Z

    move-result v6

    .line 757
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$802(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Z)Z

    move-result v6

    .line 760
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1200(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Z

    move-result v7

    if-eq v6, v7, :cond_3

    .line 761
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move v7, v4

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1202(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Z)Z

    move-result v6

    .line 762
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$102(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/prism/ps/Shader;)Lcom/sun/prism/ps/Shader;

    move-result-object v6

    .line 763
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/high16 v7, 0x7fc00000    # NaNf

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$202(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v6

    .line 764
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/high16 v7, 0x7fc00000    # NaNf

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$302(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v6

    .line 765
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/high16 v7, 0x7fc00000    # NaNf

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$402(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v6

    .line 766
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/high16 v7, 0x7fc00000    # NaNf

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$502(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v6

    .line 767
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/high16 v7, 0x7fc00000    # NaNf

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$602(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v6

    .line 768
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/high16 v7, 0x7fc00000    # NaNf

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$702(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v6

    .line 769
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1002(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/prism/CompositeMode;)Lcom/sun/prism/CompositeMode;

    move-result-object v6

    .line 770
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$002(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    .line 771
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v7}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)[Lcom/sun/prism/Texture;

    move-result-object v7

    array-length v7, v7

    if-eq v6, v7, :cond_2

    .line 772
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v6}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$1100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)[Lcom/sun/prism/Texture;

    move-result-object v6

    move v7, v5

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 771
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 774
    :cond_2
    move v6, v4

    if-eqz v6, :cond_4

    .line 776
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setDeviceParametersFor3D()V

    .line 783
    .end local v5    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 779
    .restart local v5    # "i":I
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setDeviceParametersFor2D()V

    goto :goto_1
.end method

.method protected abstract updateClipRect(Lcom/sun/javafx/geom/Rectangle;)V
.end method

.method protected abstract updateCompositeMode(Lcom/sun/prism/CompositeMode;)V
.end method

.method protected abstract updateRenderTarget(Lcom/sun/prism/RenderTarget;Lcom/sun/javafx/sg/prism/NGCamera;Z)Lcom/sun/prism/impl/ps/BaseShaderContext$State;
.end method

.method protected abstract updateShaderTransform(Lcom/sun/prism/ps/Shader;Lcom/sun/javafx/geom/transform/BaseTransform;)V
.end method

.method protected abstract updateTexture(ILcom/sun/prism/Texture;)V
.end method

.method protected abstract updateWorldTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
.end method

.method public validateClearOp(Lcom/sun/prism/impl/BaseGraphics;)V
    .locals 7

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/impl/BaseGraphics;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/impl/ps/BaseShaderGraphics;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/prism/impl/ps/BaseShaderContext;->checkState(Lcom/sun/prism/impl/ps/BaseShaderGraphics;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;)V

    .line 334
    return-void
.end method

.method public validateLCDBuffer(Lcom/sun/prism/RenderTarget;)V
    .locals 5

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "renderTarget":Lcom/sun/prism/RenderTarget;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/BaseShaderContext;->lcdBuffer:Lcom/sun/prism/RTTexture;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/BaseShaderContext;->lcdBuffer:Lcom/sun/prism/RTTexture;

    .line 722
    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->getPhysicalWidth()I

    move-result v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/prism/RenderTarget;->getPhysicalWidth()I

    move-result v3

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/BaseShaderContext;->lcdBuffer:Lcom/sun/prism/RTTexture;

    .line 723
    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->getPhysicalHeight()I

    move-result v2

    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/prism/RenderTarget;->getPhysicalHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 725
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/impl/ps/BaseShaderContext;->disposeLCDBuffer()V

    .line 726
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/prism/RenderTarget;->getPhysicalWidth()I

    move-result v3

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/prism/RenderTarget;->getPhysicalHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/prism/impl/ps/BaseShaderContext;->initLCDBuffer(II)V

    .line 728
    :cond_1
    return-void
.end method

.method public validateLCDOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;ZLcom/sun/prism/paint/Paint;)Lcom/sun/prism/ps/Shader;
    .locals 13

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "tex0":Lcom/sun/prism/Texture;
    move-object/from16 v4, p4

    .local v4, "tex1":Lcom/sun/prism/Texture;
    move/from16 v5, p5

    .local v5, "firstPass":Z
    move-object/from16 v6, p6

    .local v6, "fillColor":Lcom/sun/prism/paint/Paint;
    move v8, v5

    if-eqz v8, :cond_0

    move-object v8, v0

    move-object v9, v1

    sget-object v10, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_First_LCD:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getSpecialShader(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;)Lcom/sun/prism/ps/Shader;

    move-result-object v8

    .line 510
    :goto_0
    move-object v7, v8

    .line 512
    .local v7, "shader":Lcom/sun/prism/ps/Shader;
    move-object v8, v0

    move-object v9, v1

    const/16 v10, 0xf

    move-object v11, v2

    move-object v12, v7

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/prism/impl/ps/BaseShaderContext;->checkState(Lcom/sun/prism/impl/ps/BaseShaderGraphics;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;)V

    .line 513
    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 514
    move-object v8, v0

    const/4 v9, 0x1

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 515
    move-object v8, v0

    move-object v9, v6

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getExtraAlpha()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updatePerVertexColor(Lcom/sun/prism/paint/Paint;F)V

    .line 516
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return-object v0

    .line 509
    .end local v7    # "shader":Lcom/sun/prism/ps/Shader;
    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    :cond_0
    move-object v8, v0

    move-object v9, v1

    sget-object v10, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_SECOND_LCD:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    .line 510
    invoke-direct {v8, v9, v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getSpecialShader(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;)Lcom/sun/prism/ps/Shader;

    move-result-object v8

    goto :goto_0
.end method

.method validateMaskTextureOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/ps/Shader;
    .locals 13

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "tex0":Lcom/sun/prism/Texture;
    move-object/from16 v4, p4

    .local v4, "tex1":Lcom/sun/prism/Texture;
    move-object/from16 v5, p5

    .local v5, "format":Lcom/sun/prism/PixelFormat;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    if-nez v7, :cond_0

    .line 596
    sget-object v7, Lcom/sun/prism/impl/ps/BaseShaderContext$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 607
    new-instance v7, Ljava/lang/InternalError;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pixel format not supported: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 602
    :pswitch_0
    move-object v7, v0

    move-object v8, v1

    sget-object v9, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_MASK_RGB:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    invoke-direct {v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getSpecialShader(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;)Lcom/sun/prism/ps/Shader;

    move-result-object v7

    move-object v6, v7

    .line 612
    .local v6, "shader":Lcom/sun/prism/ps/Shader;
    :goto_0
    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0xf

    move-object v10, v2

    move-object v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/prism/impl/ps/BaseShaderContext;->checkState(Lcom/sun/prism/impl/ps/BaseShaderGraphics;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;)V

    .line 613
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 614
    move-object v7, v0

    const/4 v8, 0x1

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 615
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getExtraAlpha()F

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updatePerVertexColor(Lcom/sun/prism/paint/Paint;F)V

    .line 616
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return-object v0

    .line 610
    .end local v6    # "shader":Lcom/sun/prism/ps/Shader;
    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    move-object v6, v7

    .restart local v6    # "shader":Lcom/sun/prism/ps/Shader;
    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;
    .locals 17

    .prologue
    .line 408
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "maskTex":Lcom/sun/prism/Texture;
    move/from16 v4, p4

    .local v4, "bx":F
    move/from16 v5, p5

    .local v5, "by":F
    move/from16 v6, p6

    .local v6, "bw":F
    move/from16 v7, p7

    .local v7, "bh":F
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    sget-object v11, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->TEXTURE:Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;

    move-object v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return-object v0
.end method

.method validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;FFFF)Lcom/sun/prism/ps/Shader;
    .locals 17

    .prologue
    .line 349
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "maskType":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move/from16 v4, p4

    .local v4, "bx":F
    move/from16 v5, p5

    .local v5, "by":F
    move/from16 v6, p6

    .local v6, "bw":F
    move/from16 v7, p7

    .local v7, "bh":F
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    const/4 v12, 0x0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return-object v0
.end method

.method validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;FFFFFFFFFF)Lcom/sun/prism/ps/Shader;
    .locals 23

    .prologue
    .line 361
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "maskType":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move/from16 v4, p4

    .local v4, "bx":F
    move/from16 v5, p5

    .local v5, "by":F
    move/from16 v6, p6

    .local v6, "bw":F
    move/from16 v7, p7

    .local v7, "bh":F
    move/from16 v8, p8

    .local v8, "k1":F
    move/from16 v9, p9

    .local v9, "k2":F
    move/from16 v10, p10

    .local v10, "k3":F
    move/from16 v11, p11

    .local v11, "k4":F
    move/from16 v12, p12

    .local v12, "k5":F
    move/from16 v13, p13

    .local v13, "k6":F
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v14}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$200(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v14

    move v15, v8

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v14}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$300(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v14

    move v15, v9

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 362
    invoke-static {v14}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$400(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v14

    move v15, v10

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v14}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$500(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v14

    move v15, v11

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 363
    invoke-static {v14}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$600(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v14

    move v15, v12

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v14}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$700(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v14

    move v15, v13

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_1

    .line 365
    :cond_0
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 367
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move v15, v8

    invoke-static {v14, v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$202(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v14

    .line 368
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move v15, v9

    invoke-static {v14, v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$302(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v14

    .line 369
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move v15, v10

    invoke-static {v14, v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$402(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v14

    .line 370
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move v15, v11

    invoke-static {v14, v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$502(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v14

    .line 371
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move v15, v12

    invoke-static {v14, v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$602(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v14

    .line 372
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move v15, v13

    invoke-static {v14, v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$702(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v14

    .line 375
    :cond_1
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-virtual/range {v14 .. v22}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v14

    move-object v0, v14

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return-object v0
.end method

.method validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;
    .locals 27

    .prologue
    .line 416
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object/from16 v3, p1

    .local v3, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v4, p2

    .local v4, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p3

    .local v5, "maskType":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object/from16 v6, p4

    .local v6, "maskTex":Lcom/sun/prism/Texture;
    move/from16 v7, p5

    .local v7, "bx":F
    move/from16 v8, p6

    .local v8, "by":F
    move/from16 v9, p7

    .local v9, "bw":F
    move/from16 v10, p8

    .local v10, "bh":F
    move-object/from16 v17, v5

    if-nez v17, :cond_0

    .line 417
    new-instance v17, Ljava/lang/InternalError;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const-string v19, "maskType must be non-null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v17

    .line 420
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 421
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getPaint()Lcom/sun/prism/paint/Paint;

    move-result-object v17

    move-object/from16 v11, v17

    .line 422
    .local v11, "paint":Lcom/sun/prism/paint/Paint;
    const/16 v17, 0x0

    move-object/from16 v12, v17

    .line 425
    .local v12, "paintTex":Lcom/sun/prism/Texture;
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/paint/Paint$Type;->isGradient()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 433
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 437
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;->isNewPaintStyle()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 438
    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lcom/sun/prism/impl/ps/PaintHelper;->getWrapGradientTexture(Lcom/sun/prism/ps/ShaderGraphics;)Lcom/sun/prism/Texture;

    move-result-object v17

    move-object/from16 v12, v17

    .line 450
    :cond_1
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderContext;->factory:Lcom/sun/prism/ps/ShaderFactory;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/ps/ShaderFactory;->isSuperShaderAllowed()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v12

    if-nez v17, :cond_5

    move-object/from16 v17, v6

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderContext;->factory:Lcom/sun/prism/ps/ShaderFactory;

    move-object/from16 v18, v0

    .line 452
    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/ps/ShaderFactory;->getGlyphTexture()Lcom/sun/prism/Texture;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 457
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    sget-object v19, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->SUPER:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    invoke-direct/range {v17 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getSpecialShader(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;)Lcom/sun/prism/ps/Shader;

    move-result-object v17

    move-object/from16 v15, v17

    .line 458
    .local v15, "shader":Lcom/sun/prism/ps/Shader;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderContext;->factory:Lcom/sun/prism/ps/ShaderFactory;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/ps/ShaderFactory;->getRegionTexture()Lcom/sun/prism/Texture;

    move-result-object v17

    move-object/from16 v13, v17

    .line 459
    .local v13, "tex0":Lcom/sun/prism/Texture;
    move-object/from16 v17, v6

    move-object/from16 v14, v17

    .line 480
    .local v14, "tex1":Lcom/sun/prism/Texture;
    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    const/16 v19, 0xf

    move-object/from16 v20, v4

    move-object/from16 v21, v15

    invoke-direct/range {v17 .. v21}, Lcom/sun/prism/impl/ps/BaseShaderContext;->checkState(Lcom/sun/prism/impl/ps/BaseShaderGraphics;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;)V

    .line 481
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object/from16 v19, v13

    invoke-direct/range {v17 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 482
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move-object/from16 v19, v14

    invoke-direct/range {v17 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 483
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v15

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    invoke-direct/range {v17 .. v25}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updatePaintShader(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/prism/ps/Shader;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/paint/Paint;FFFF)V

    .line 484
    move-object/from16 v17, v2

    move-object/from16 v18, v11

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getExtraAlpha()F

    move-result v19

    invoke-direct/range {v17 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updatePerVertexColor(Lcom/sun/prism/paint/Paint;F)V

    .line 485
    move-object/from16 v17, v12

    if-eqz v17, :cond_2

    move-object/from16 v17, v12

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/Texture;->unlock()V

    .line 486
    :cond_2
    move-object/from16 v17, v15

    move-object/from16 v2, v17

    .line 493
    .end local v2    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    .end local v11    # "paint":Lcom/sun/prism/paint/Paint;
    .end local v12    # "paintTex":Lcom/sun/prism/Texture;
    .end local v13    # "tex0":Lcom/sun/prism/Texture;
    .end local v14    # "tex1":Lcom/sun/prism/Texture;
    .end local v15    # "shader":Lcom/sun/prism/ps/Shader;
    :goto_2
    return-object v2

    .line 440
    .restart local v2    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    .restart local v11    # "paint":Lcom/sun/prism/paint/Paint;
    .restart local v12    # "paintTex":Lcom/sun/prism/Texture;
    :cond_3
    move-object/from16 v17, v3

    move-object/from16 v18, v11

    check-cast v18, Lcom/sun/prism/paint/Gradient;

    invoke-static/range {v17 .. v18}, Lcom/sun/prism/impl/ps/PaintHelper;->getGradientTexture(Lcom/sun/prism/ps/ShaderGraphics;Lcom/sun/prism/paint/Gradient;)Lcom/sun/prism/Texture;

    move-result-object v17

    move-object/from16 v12, v17

    goto/16 :goto_0

    .line 442
    :cond_4
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v17

    sget-object v18, Lcom/sun/prism/paint/Paint$Type;->IMAGE_PATTERN:Lcom/sun/prism/paint/Paint$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 444
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 445
    move-object/from16 v17, v11

    check-cast v17, Lcom/sun/prism/paint/ImagePattern;

    move-object/from16 v15, v17

    .line 446
    .local v15, "texPaint":Lcom/sun/prism/paint/ImagePattern;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v17

    move-object/from16 v16, v17

    .line 447
    .local v16, "rf":Lcom/sun/prism/ResourceFactory;
    move-object/from16 v17, v16

    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/paint/ImagePattern;->getImage()Lcom/sun/prism/Image;

    move-result-object v18

    sget-object v19, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v17 .. v19}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v17

    move-object/from16 v12, v17

    goto/16 :goto_0

    .line 470
    .end local v15    # "texPaint":Lcom/sun/prism/paint/ImagePattern;
    .end local v16    # "rf":Lcom/sun/prism/ResourceFactory;
    :cond_5
    move-object/from16 v17, v6

    if-eqz v17, :cond_6

    .line 471
    move-object/from16 v17, v6

    move-object/from16 v13, v17

    .line 472
    .restart local v13    # "tex0":Lcom/sun/prism/Texture;
    move-object/from16 v17, v12

    move-object/from16 v14, v17

    .line 478
    .restart local v14    # "tex1":Lcom/sun/prism/Texture;
    :goto_3
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->isAlphaTestShader()Z

    move-result v18

    move-object/from16 v19, v5

    move-object/from16 v20, v11

    invoke-direct/range {v17 .. v20}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getPaintShader(ZLcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/paint/Paint;)Lcom/sun/prism/ps/Shader;

    move-result-object v17

    move-object/from16 v15, v17

    .local v15, "shader":Lcom/sun/prism/ps/Shader;
    goto/16 :goto_1

    .line 474
    .end local v13    # "tex0":Lcom/sun/prism/Texture;
    .end local v14    # "tex1":Lcom/sun/prism/Texture;
    .end local v15    # "shader":Lcom/sun/prism/ps/Shader;
    :cond_6
    move-object/from16 v17, v12

    move-object/from16 v13, v17

    .line 475
    .restart local v13    # "tex0":Lcom/sun/prism/Texture;
    const/16 v17, 0x0

    move-object/from16 v14, v17

    .restart local v14    # "tex1":Lcom/sun/prism/Texture;
    goto :goto_3

    .line 489
    .end local v11    # "paint":Lcom/sun/prism/paint/Paint;
    .end local v12    # "paintTex":Lcom/sun/prism/Texture;
    .end local v13    # "tex0":Lcom/sun/prism/Texture;
    .end local v14    # "tex1":Lcom/sun/prism/Texture;
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    const/16 v19, 0xf

    move-object/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Lcom/sun/prism/impl/ps/BaseShaderContext;->checkState(Lcom/sun/prism/impl/ps/BaseShaderGraphics;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;)V

    .line 490
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 491
    move-object/from16 v17, v2

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 492
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getExtraAlpha()F

    move-result v19

    invoke-direct/range {v17 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updatePerVertexColor(Lcom/sun/prism/paint/Paint;F)V

    .line 493
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    move-object/from16 v17, v0

    move-object/from16 v2, v17

    goto/16 :goto_2
.end method

.method validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFFFFFFFF)Lcom/sun/prism/ps/Shader;
    .locals 24

    .prologue
    .line 387
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object/from16 v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "maskType":Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;
    move-object/from16 v4, p4

    .local v4, "maskTex":Lcom/sun/prism/Texture;
    move/from16 v5, p5

    .local v5, "bx":F
    move/from16 v6, p6

    .local v6, "by":F
    move/from16 v7, p7

    .local v7, "bw":F
    move/from16 v8, p8

    .local v8, "bh":F
    move/from16 v9, p9

    .local v9, "k1":F
    move/from16 v10, p10

    .local v10, "k2":F
    move/from16 v11, p11

    .local v11, "k3":F
    move/from16 v12, p12

    .local v12, "k4":F
    move/from16 v13, p13

    .local v13, "k5":F
    move/from16 v14, p14

    .local v14, "k6":F
    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$200(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v15

    move/from16 v16, v9

    cmpl-float v15, v15, v16

    if-nez v15, :cond_0

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$300(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v15

    move/from16 v16, v10

    cmpl-float v15, v15, v16

    if-nez v15, :cond_0

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 388
    invoke-static {v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$400(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v15

    move/from16 v16, v11

    cmpl-float v15, v15, v16

    if-nez v15, :cond_0

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$500(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v15

    move/from16 v16, v12

    cmpl-float v15, v15, v16

    if-nez v15, :cond_0

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    .line 389
    invoke-static {v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$600(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v15

    move/from16 v16, v13

    cmpl-float v15, v15, v16

    if-nez v15, :cond_0

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    invoke-static {v15}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$700(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F

    move-result v15

    move/from16 v16, v14

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_1

    .line 391
    :cond_0
    move-object v15, v0

    invoke-virtual {v15}, Lcom/sun/prism/impl/ps/BaseShaderContext;->flushVertexBuffer()V

    .line 393
    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move/from16 v16, v9

    invoke-static/range {v15 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$202(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v15

    .line 394
    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move/from16 v16, v10

    invoke-static/range {v15 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$302(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v15

    .line 395
    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move/from16 v16, v11

    invoke-static/range {v15 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$402(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v15

    .line 396
    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move/from16 v16, v12

    invoke-static/range {v15 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$502(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v15

    .line 397
    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move/from16 v16, v13

    invoke-static/range {v15 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$602(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v15

    .line 398
    move-object v15, v0

    iget-object v15, v15, Lcom/sun/prism/impl/ps/BaseShaderContext;->state:Lcom/sun/prism/impl/ps/BaseShaderContext$State;

    move/from16 v16, v14

    invoke-static/range {v15 .. v16}, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->access$702(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F

    move-result v15

    .line 401
    :cond_1
    move-object v15, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-virtual/range {v15 .. v23}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/impl/ps/BaseShaderContext$MaskType;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v15

    move-object v0, v15

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return-object v0
.end method

.method public validatePaintOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)V
    .locals 16

    .prologue
    .line 341
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/impl/BaseGraphics;
    move-object/from16 v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "maskTex":Lcom/sun/prism/Texture;
    move/from16 v4, p4

    .local v4, "bx":F
    move/from16 v5, p5

    .local v5, "by":F
    move/from16 v6, p6

    .local v6, "bw":F
    move/from16 v7, p7

    .local v7, "bh":F
    move-object v8, v0

    move-object v9, v1

    check-cast v9, Lcom/sun/prism/impl/ps/BaseShaderGraphics;

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validatePaintOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)Lcom/sun/prism/ps/Shader;

    move-result-object v8

    .line 343
    return-void
.end method

.method validateTextureOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/ps/Shader;
    .locals 13

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "tex0":Lcom/sun/prism/Texture;
    move-object/from16 v4, p4

    .local v4, "tex1":Lcom/sun/prism/Texture;
    move-object/from16 v5, p5

    .local v5, "format":Lcom/sun/prism/PixelFormat;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    if-nez v7, :cond_1

    .line 556
    sget-object v7, Lcom/sun/prism/impl/ps/BaseShaderContext$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 579
    new-instance v7, Ljava/lang/InternalError;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pixel format not supported: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 562
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->factory:Lcom/sun/prism/ps/ShaderFactory;

    invoke-interface {v7}, Lcom/sun/prism/ps/ShaderFactory;->isSuperShaderAllowed()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/ps/BaseShaderContext;->factory:Lcom/sun/prism/ps/ShaderFactory;

    .line 563
    invoke-interface {v8}, Lcom/sun/prism/ps/ShaderFactory;->getRegionTexture()Lcom/sun/prism/Texture;

    move-result-object v8

    if-ne v7, v8, :cond_0

    move-object v7, v4

    if-nez v7, :cond_0

    .line 570
    move-object v7, v0

    move-object v8, v1

    sget-object v9, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->SUPER:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    invoke-direct {v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getSpecialShader(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;)Lcom/sun/prism/ps/Shader;

    move-result-object v7

    move-object v6, v7

    .line 571
    .local v6, "shader":Lcom/sun/prism/ps/Shader;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->factory:Lcom/sun/prism/ps/ShaderFactory;

    invoke-interface {v7}, Lcom/sun/prism/ps/ShaderFactory;->getGlyphTexture()Lcom/sun/prism/Texture;

    move-result-object v7

    move-object v4, v7

    .line 584
    :goto_0
    move-object v7, v0

    move-object v8, v1

    const/16 v9, 0xf

    move-object v10, v2

    move-object v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/prism/impl/ps/BaseShaderContext;->checkState(Lcom/sun/prism/impl/ps/BaseShaderGraphics;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;)V

    .line 585
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 586
    move-object v7, v0

    const/4 v8, 0x1

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 587
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getExtraAlpha()F

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updatePerVertexColor(Lcom/sun/prism/paint/Paint;F)V

    .line 588
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    return-object v0

    .line 573
    .end local v6    # "shader":Lcom/sun/prism/ps/Shader;
    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    :cond_0
    move-object v7, v0

    move-object v8, v1

    sget-object v9, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_RGB:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    invoke-direct {v7, v8, v9}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getSpecialShader(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;)Lcom/sun/prism/ps/Shader;

    move-result-object v7

    move-object v6, v7

    .line 575
    .restart local v6    # "shader":Lcom/sun/prism/ps/Shader;
    goto :goto_0

    .line 582
    .end local v6    # "shader":Lcom/sun/prism/ps/Shader;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    move-object v6, v7

    .restart local v6    # "shader":Lcom/sun/prism/ps/Shader;
    goto :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method validateTextureOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;[Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/ps/Shader;
    .locals 13

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/impl/ps/BaseShaderGraphics;
    move-object v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "textures":[Lcom/sun/prism/Texture;
    move-object/from16 v4, p4

    .local v4, "format":Lcom/sun/prism/PixelFormat;
    move-object v8, v4

    sget-object v9, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    if-ne v8, v9, :cond_2

    .line 526
    move-object v8, v3

    array-length v8, v8

    const/4 v9, 0x3

    if-ge v8, v9, :cond_0

    .line 527
    const/4 v8, 0x0

    move-object v0, v8

    .line 548
    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    :goto_0
    return-object v0

    .line 530
    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    if-nez v8, :cond_1

    .line 531
    move-object v8, v0

    move-object v9, v1

    sget-object v10, Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;->TEXTURE_YV12:Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getSpecialShader(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/prism/impl/ps/BaseShaderContext$SpecialShaderType;)Lcom/sun/prism/ps/Shader;

    move-result-object v8

    move-object v5, v8

    .line 539
    .local v5, "shader":Lcom/sun/prism/ps/Shader;
    :goto_1
    const/4 v8, 0x0

    move-object v9, v5

    if-eq v8, v9, :cond_4

    .line 540
    move-object v8, v0

    move-object v9, v1

    const/16 v10, 0xf

    move-object v11, v2

    move-object v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/prism/impl/ps/BaseShaderContext;->checkState(Lcom/sun/prism/impl/ps/BaseShaderGraphics;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/ps/Shader;)V

    .line 542
    const/4 v8, 0x0

    move-object v9, v3

    array-length v9, v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v6, v8

    .line 543
    .local v6, "texCount":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "index":I
    :goto_2
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_3

    .line 544
    move-object v8, v0

    move v9, v7

    move-object v10, v3

    move v11, v7

    aget-object v10, v10, v11

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->setTexture(ILcom/sun/prism/Texture;)V

    .line 543
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 533
    .end local v5    # "shader":Lcom/sun/prism/ps/Shader;
    .end local v6    # "texCount":I
    .end local v7    # "index":I
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/ps/BaseShaderContext;->externalShader:Lcom/sun/prism/ps/Shader;

    move-object v5, v8

    .restart local v5    # "shader":Lcom/sun/prism/ps/Shader;
    goto :goto_1

    .line 536
    .end local v5    # "shader":Lcom/sun/prism/ps/Shader;
    :cond_2
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 546
    .restart local v5    # "shader":Lcom/sun/prism/ps/Shader;
    .restart local v6    # "texCount":I
    .restart local v7    # "index":I
    :cond_3
    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/prism/impl/ps/BaseShaderGraphics;->getExtraAlpha()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->updatePerVertexColor(Lcom/sun/prism/paint/Paint;F)V

    .line 548
    .end local v6    # "texCount":I
    .end local v7    # "index":I
    :cond_4
    move-object v8, v5

    move-object v0, v8

    goto :goto_0
.end method

.method public validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V
    .locals 11

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/impl/BaseGraphics;
    move-object v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "tex0":Lcom/sun/prism/Texture;
    move-object v4, p4

    .local v4, "format":Lcom/sun/prism/PixelFormat;
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lcom/sun/prism/impl/ps/BaseShaderGraphics;

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sun/prism/impl/ps/BaseShaderContext;->validateTextureOp(Lcom/sun/prism/impl/ps/BaseShaderGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/ps/Shader;

    move-result-object v5

    .line 502
    return-void
.end method
