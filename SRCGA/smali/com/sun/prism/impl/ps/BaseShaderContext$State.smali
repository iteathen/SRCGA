.class public Lcom/sun/prism/impl/ps/BaseShaderContext$State;
.super Ljava/lang/Object;
.source "BaseShaderContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/ps/BaseShaderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private isXformValid:Z

.field private lastCamera:Lcom/sun/javafx/sg/prism/NGCamera;

.field private lastClip:Lcom/sun/javafx/geom/Rectangle;

.field private lastComp:Lcom/sun/prism/CompositeMode;

.field private lastConst1:F

.field private lastConst2:F

.field private lastConst3:F

.field private lastConst4:F

.field private lastConst5:F

.field private lastConst6:F

.field private lastDepthTest:Z

.field private lastRenderTarget:Lcom/sun/prism/RenderTarget;

.field private lastShader:Lcom/sun/prism/ps/Shader;

.field private lastState3D:Z

.field private lastTextures:[Lcom/sun/prism/Texture;

.field private lastTransform:Lcom/sun/javafx/geom/transform/BaseTransform;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 183
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastTransform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 186
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/sun/prism/Texture;

    iput-object v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastTextures:[Lcom/sun/prism/Texture;

    .line 188
    move-object v1, v0

    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst1:F

    .line 189
    move-object v1, v0

    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst2:F

    .line 190
    move-object v1, v0

    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst3:F

    .line 191
    move-object v1, v0

    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst4:F

    .line 192
    move-object v1, v0

    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst5:F

    .line 193
    move-object v1, v0

    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst6:F

    .line 194
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastState3D:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/javafx/geom/Rectangle;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastClip:Lcom/sun/javafx/geom/Rectangle;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$002(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastClip:Lcom/sun/javafx/geom/Rectangle;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/prism/ps/Shader;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastShader:Lcom/sun/prism/ps/Shader;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/prism/CompositeMode;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastComp:Lcom/sun/prism/CompositeMode;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$1002(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/prism/CompositeMode;)Lcom/sun/prism/CompositeMode;
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/prism/CompositeMode;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastComp:Lcom/sun/prism/CompositeMode;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$102(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/prism/ps/Shader;)Lcom/sun/prism/ps/Shader;
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/prism/ps/Shader;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastShader:Lcom/sun/prism/ps/Shader;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$1100(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)[Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastTextures:[Lcom/sun/prism/Texture;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$1200(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Z
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastState3D:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$1202(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Z)Z
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastState3D:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$1300(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/prism/RenderTarget;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastRenderTarget:Lcom/sun/prism/RenderTarget;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$1302(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/prism/RenderTarget;)Lcom/sun/prism/RenderTarget;
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/prism/RenderTarget;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastRenderTarget:Lcom/sun/prism/RenderTarget;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$1400(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/javafx/sg/prism/NGCamera;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastCamera:Lcom/sun/javafx/sg/prism/NGCamera;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$1402(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Lcom/sun/javafx/sg/prism/NGCamera;)Lcom/sun/javafx/sg/prism/NGCamera;
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastCamera:Lcom/sun/javafx/sg/prism/NGCamera;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method

.method static synthetic access$1500(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Z
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastDepthTest:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$1502(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Z)Z
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastDepthTest:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst1:F

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$202(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move v1, p1

    .local v1, "x1":F
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst1:F

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$300(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst2:F

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$302(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move v1, p1

    .local v1, "x1":F
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst2:F

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$400(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst3:F

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$402(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move v1, p1

    .local v1, "x1":F
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst3:F

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$500(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst4:F

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$502(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move v1, p1

    .local v1, "x1":F
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst4:F

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$600(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst5:F

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$602(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move v1, p1

    .local v1, "x1":F
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst5:F

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$700(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)F
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst6:F

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$702(Lcom/sun/prism/impl/ps/BaseShaderContext$State;F)F
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move v1, p1

    .local v1, "x1":F
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastConst6:F

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$800(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Z
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->isXformValid:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$802(Lcom/sun/prism/impl/ps/BaseShaderContext$State;Z)Z
    .locals 7

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->isXformValid:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return v0
.end method

.method static synthetic access$900(Lcom/sun/prism/impl/ps/BaseShaderContext$State;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/BaseShaderContext$State;->lastTransform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/BaseShaderContext$State;
    return-object v0
.end method
