.class Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;
.super Ljava/lang/Object;
.source "ES2Shader.java"

# interfaces
.implements Lcom/sun/prism/impl/Disposer$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/es2/ES2Shader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ES2ShaderDisposerRecord"
.end annotation


# instance fields
.field private final context:Lcom/sun/prism/es2/ES2Context;

.field private fragmentShaderID:[I

.field private programID:I

.field private vertexShaderID:I


# direct methods
.method private constructor <init>(Lcom/sun/prism/es2/ES2Context;I[II)V
    .locals 7

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move v2, p2

    .local v2, "vertexShaderID":I
    move-object v3, p3

    .local v3, "fragmentShaderID":[I
    move v4, p4

    .local v4, "programID":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 581
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->context:Lcom/sun/prism/es2/ES2Context;

    .line 582
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->vertexShaderID:I

    .line 583
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->fragmentShaderID:[I

    .line 584
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->programID:I

    .line 585
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/prism/es2/ES2Context;I[IILcom/sun/prism/es2/ES2Shader$1;)V
    .locals 11

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/prism/es2/ES2Context;
    move v2, p2

    .local v2, "x1":I
    move-object v3, p3

    .local v3, "x2":[I
    move v4, p4

    .local v4, "x3":I
    move-object/from16 v5, p5

    .local v5, "x4":Lcom/sun/prism/es2/ES2Shader$1;
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;-><init>(Lcom/sun/prism/es2/ES2Context;I[II)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 7

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->programID:I

    if-eqz v1, :cond_0

    .line 589
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->programID:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->vertexShaderID:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->fragmentShaderID:[I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/prism/es2/GLContext;->disposeShaders(II[I)V

    .line 591
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->vertexShaderID:I

    iput v2, v1, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->programID:I

    .line 592
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/ES2Shader$ES2ShaderDisposerRecord;->fragmentShaderID:[I

    .line 594
    :cond_0
    return-void
.end method
