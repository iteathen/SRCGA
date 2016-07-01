.class synthetic Lcom/sun/prism/null3d/NULL3DPipeline$1;
.super Ljava/lang/Object;
.source "NULL3DPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/null3d/NULL3DPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$prism$GraphicsPipeline$ShaderModel:[I

.field static final synthetic $SwitchMap$com$sun$prism$GraphicsPipeline$ShaderType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline$ShaderModel;->values()[Lcom/sun/prism/GraphicsPipeline$ShaderModel;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/prism/null3d/NULL3DPipeline$1;->$SwitchMap$com$sun$prism$GraphicsPipeline$ShaderModel:[I

    :try_start_0
    sget-object v1, Lcom/sun/prism/null3d/NULL3DPipeline$1;->$SwitchMap$com$sun$prism$GraphicsPipeline$ShaderModel:[I

    sget-object v2, Lcom/sun/prism/GraphicsPipeline$ShaderModel;->SM3:Lcom/sun/prism/GraphicsPipeline$ShaderModel;

    invoke-virtual {v2}, Lcom/sun/prism/GraphicsPipeline$ShaderModel;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline$ShaderType;->values()[Lcom/sun/prism/GraphicsPipeline$ShaderType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/prism/null3d/NULL3DPipeline$1;->$SwitchMap$com$sun$prism$GraphicsPipeline$ShaderType:[I

    :try_start_1
    sget-object v1, Lcom/sun/prism/null3d/NULL3DPipeline$1;->$SwitchMap$com$sun$prism$GraphicsPipeline$ShaderType:[I

    sget-object v2, Lcom/sun/prism/GraphicsPipeline$ShaderType;->HLSL:Lcom/sun/prism/GraphicsPipeline$ShaderType;

    invoke-virtual {v2}, Lcom/sun/prism/GraphicsPipeline$ShaderType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/prism/null3d/NULL3DPipeline$1;->$SwitchMap$com$sun$prism$GraphicsPipeline$ShaderType:[I

    sget-object v2, Lcom/sun/prism/GraphicsPipeline$ShaderType;->GLSL:Lcom/sun/prism/GraphicsPipeline$ShaderType;

    invoke-virtual {v2}, Lcom/sun/prism/GraphicsPipeline$ShaderType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    .line 112
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2
.end method
