.class Lcom/sun/prism/es2/ES2MeshView;
.super Lcom/sun/prism/impl/BaseMeshView;
.source "ES2MeshView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;
    }
.end annotation


# static fields
.field static count:I


# instance fields
.field private ambientLightBlue:F

.field private ambientLightGreen:F

.field private ambientLightRed:F

.field private final context:Lcom/sun/prism/es2/ES2Context;

.field private lights:[Lcom/sun/prism/es2/ES2Light;

.field private material:Lcom/sun/prism/es2/ES2PhongMaterial;

.field private final mesh:Lcom/sun/prism/es2/ES2Mesh;

.field private final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/sun/prism/es2/ES2MeshView;->count:I

    return-void
.end method

.method private constructor <init>(Lcom/sun/prism/es2/ES2Context;JLcom/sun/prism/es2/ES2Mesh;Lcom/sun/prism/impl/Disposer$Record;)V
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-wide v2, p2

    .local v2, "nativeHandle":J
    move-object v4, p4

    .local v4, "mesh":Lcom/sun/prism/es2/ES2Mesh;
    move-object v5, p5

    .local v5, "disposerRecord":Lcom/sun/prism/impl/Disposer$Record;
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/prism/impl/BaseMeshView;-><init>(Lcom/sun/prism/impl/Disposer$Record;)V

    .line 41
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/prism/es2/ES2MeshView;->ambientLightRed:F

    .line 42
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/prism/es2/ES2MeshView;->ambientLightBlue:F

    .line 43
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/prism/es2/ES2MeshView;->ambientLightGreen:F

    .line 46
    move-object v6, v0

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/sun/prism/es2/ES2Light;

    iput-object v7, v6, Lcom/sun/prism/es2/ES2MeshView;->lights:[Lcom/sun/prism/es2/ES2Light;

    .line 56
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/prism/es2/ES2MeshView;->context:Lcom/sun/prism/es2/ES2Context;

    .line 57
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/prism/es2/ES2MeshView;->mesh:Lcom/sun/prism/es2/ES2Mesh;

    .line 58
    move-object v6, v0

    move-wide v7, v2

    iput-wide v7, v6, Lcom/sun/prism/es2/ES2MeshView;->nativeHandle:J

    .line 59
    sget v6, Lcom/sun/prism/es2/ES2MeshView;->count:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/sun/prism/es2/ES2MeshView;->count:I

    .line 60
    return-void
.end method

.method static create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/es2/ES2Mesh;)Lcom/sun/prism/es2/ES2MeshView;
    .locals 16

    .prologue
    .line 63
    move-object/from16 v0, p0

    .local v0, "context":Lcom/sun/prism/es2/ES2Context;
    move-object/from16 v1, p1

    .local v1, "mesh":Lcom/sun/prism/es2/ES2Mesh;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/prism/es2/ES2Context;->createES2MeshView(Lcom/sun/prism/es2/ES2Mesh;)J

    move-result-wide v4

    move-wide v2, v4

    .line 64
    .local v2, "nativeHandle":J
    new-instance v4, Lcom/sun/prism/es2/ES2MeshView;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    move-object v6, v0

    move-wide v7, v2

    move-object v9, v1

    new-instance v10, Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-wide v13, v2

    invoke-direct {v11, v12, v13, v14}, Lcom/sun/prism/es2/ES2MeshView$ES2MeshViewDisposerRecord;-><init>(Lcom/sun/prism/es2/ES2Context;J)V

    invoke-direct/range {v5 .. v10}, Lcom/sun/prism/es2/ES2MeshView;-><init>(Lcom/sun/prism/es2/ES2Context;JLcom/sun/prism/es2/ES2Mesh;Lcom/sun/prism/impl/Disposer$Record;)V

    move-object v0, v4

    .end local v0    # "context":Lcom/sun/prism/es2/ES2Context;
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/ES2MeshView;->material:Lcom/sun/prism/es2/ES2PhongMaterial;

    .line 131
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/ES2MeshView;->lights:[Lcom/sun/prism/es2/ES2Light;

    .line 132
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2MeshView;->disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

    invoke-interface {v1}, Lcom/sun/prism/impl/Disposer$Record;->dispose()V

    .line 133
    sget v1, Lcom/sun/prism/es2/ES2MeshView;->count:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sun/prism/es2/ES2MeshView;->count:I

    .line 134
    return-void
.end method

.method getAmbientLightBlue()F
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2MeshView;->ambientLightBlue:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2MeshView;
    return v0
.end method

.method getAmbientLightGreen()F
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2MeshView;->ambientLightGreen:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2MeshView;
    return v0
.end method

.method getAmbientLightRed()F
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2MeshView;->ambientLightRed:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2MeshView;
    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView;
    sget v1, Lcom/sun/prism/es2/ES2MeshView;->count:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2MeshView;
    return v0
.end method

.method getMaterial()Lcom/sun/prism/es2/ES2PhongMaterial;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2MeshView;->material:Lcom/sun/prism/es2/ES2PhongMaterial;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2MeshView;
    return-object v0
.end method

.method getPointLights()[Lcom/sun/prism/es2/ES2Light;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2MeshView;->lights:[Lcom/sun/prism/es2/ES2Light;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2MeshView;
    return-object v0
.end method

.method public render(Lcom/sun/prism/Graphics;)V
    .locals 8

    .prologue
    .line 118
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2MeshView;
    move-object v2, p1

    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/es2/ES2MeshView;->material:Lcom/sun/prism/es2/ES2PhongMaterial;

    invoke-virtual {v3}, Lcom/sun/prism/es2/ES2PhongMaterial;->lockTextureMaps()V

    .line 119
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/es2/ES2MeshView;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/ES2MeshView;->nativeHandle:J

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/prism/es2/ES2Context;->renderMeshView(JLcom/sun/prism/Graphics;Lcom/sun/prism/es2/ES2MeshView;)V

    .line 120
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/es2/ES2MeshView;->material:Lcom/sun/prism/es2/ES2PhongMaterial;

    invoke-virtual {v3}, Lcom/sun/prism/es2/ES2PhongMaterial;->unlockTextureMaps()V

    .line 121
    return-void
.end method

.method public setAmbientLight(FFF)V
    .locals 11

    .prologue
    .line 85
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2MeshView;
    move v2, p1

    .local v2, "r":F
    move v3, p2

    .local v3, "g":F
    move v4, p3

    .local v4, "b":F
    move-object v5, v1

    move v6, v2

    iput v6, v5, Lcom/sun/prism/es2/ES2MeshView;->ambientLightRed:F

    .line 86
    move-object v5, v1

    move v6, v3

    iput v6, v5, Lcom/sun/prism/es2/ES2MeshView;->ambientLightGreen:F

    .line 87
    move-object v5, v1

    move v6, v4

    iput v6, v5, Lcom/sun/prism/es2/ES2MeshView;->ambientLightBlue:F

    .line 88
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/prism/es2/ES2MeshView;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/es2/ES2MeshView;->nativeHandle:J

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sun/prism/es2/ES2Context;->setAmbientLight(JFFF)V

    .line 89
    return-void
.end method

.method public setCullingMode(I)V
    .locals 7

    .prologue
    .line 69
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2MeshView;
    move v2, p1

    .local v2, "cullingMode":I
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/es2/ES2MeshView;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/ES2MeshView;->nativeHandle:J

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/prism/es2/ES2Context;->setCullingMode(JI)V

    .line 70
    return-void
.end method

.method public setMaterial(Lcom/sun/prism/Material;)V
    .locals 7

    .prologue
    .line 74
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2MeshView;
    move-object v2, p1

    .local v2, "material":Lcom/sun/prism/Material;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/es2/ES2MeshView;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/ES2MeshView;->nativeHandle:J

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/prism/es2/ES2Context;->setMaterial(JLcom/sun/prism/Material;)V

    .line 75
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Lcom/sun/prism/es2/ES2PhongMaterial;

    iput-object v4, v3, Lcom/sun/prism/es2/ES2MeshView;->material:Lcom/sun/prism/es2/ES2PhongMaterial;

    .line 76
    return-void
.end method

.method public setPointLight(IFFFFFFF)V
    .locals 21

    .prologue
    .line 106
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2MeshView;
    move/from16 v1, p1

    .local v1, "index":I
    move/from16 v2, p2

    .local v2, "x":F
    move/from16 v3, p3

    .local v3, "y":F
    move/from16 v4, p4

    .local v4, "z":F
    move/from16 v5, p5

    .local v5, "r":F
    move/from16 v6, p6

    .local v6, "g":F
    move/from16 v7, p7

    .local v7, "b":F
    move/from16 v8, p8

    .local v8, "w":F
    move v9, v1

    if-ltz v9, :cond_0

    move v9, v1

    const/4 v10, 0x2

    if-gt v9, v10, :cond_0

    .line 107
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/es2/ES2MeshView;->lights:[Lcom/sun/prism/es2/ES2Light;

    move v10, v1

    new-instance v11, Lcom/sun/prism/es2/ES2Light;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-direct/range {v12 .. v19}, Lcom/sun/prism/es2/ES2Light;-><init>(FFFFFFF)V

    aput-object v11, v9, v10

    .line 108
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/es2/ES2MeshView;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/prism/es2/ES2MeshView;->nativeHandle:J

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual/range {v9 .. v19}, Lcom/sun/prism/es2/ES2Context;->setPointLight(JIFFFFFFF)V

    .line 110
    :cond_0
    return-void
.end method

.method public setWireframe(Z)V
    .locals 7

    .prologue
    .line 80
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/ES2MeshView;
    move v2, p1

    .local v2, "wireframe":Z
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/prism/es2/ES2MeshView;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/prism/es2/ES2MeshView;->nativeHandle:J

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/prism/es2/ES2Context;->setWireframe(JZ)V

    .line 81
    return-void
.end method
