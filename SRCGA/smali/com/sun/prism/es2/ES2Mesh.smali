.class Lcom/sun/prism/es2/ES2Mesh;
.super Lcom/sun/prism/impl/BaseMesh;
.source "ES2Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;
    }
.end annotation


# static fields
.field static count:I


# instance fields
.field private final context:Lcom/sun/prism/es2/ES2Context;

.field private final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/sun/prism/es2/ES2Mesh;->count:I

    return-void
.end method

.method private constructor <init>(Lcom/sun/prism/es2/ES2Context;JLcom/sun/prism/impl/Disposer$Record;)V
    .locals 8

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Mesh;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-wide v2, p2

    .local v2, "nativeHandle":J
    move-object v4, p4

    .local v4, "disposerRecord":Lcom/sun/prism/impl/Disposer$Record;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/prism/impl/BaseMesh;-><init>(Lcom/sun/prism/impl/Disposer$Record;)V

    .line 42
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/prism/es2/ES2Mesh;->context:Lcom/sun/prism/es2/ES2Context;

    .line 43
    move-object v5, v0

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/prism/es2/ES2Mesh;->nativeHandle:J

    .line 44
    sget v5, Lcom/sun/prism/es2/ES2Mesh;->count:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/sun/prism/es2/ES2Mesh;->count:I

    .line 45
    return-void
.end method

.method static create(Lcom/sun/prism/es2/ES2Context;)Lcom/sun/prism/es2/ES2Mesh;
    .locals 15

    .prologue
    .line 48
    move-object v1, p0

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/es2/ES2Context;->createES2Mesh()J

    move-result-wide v4

    move-wide v2, v4

    .line 49
    .local v2, "nativeHandle":J
    new-instance v4, Lcom/sun/prism/es2/ES2Mesh;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v1

    move-wide v7, v2

    new-instance v9, Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    move-wide v12, v2

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/prism/es2/ES2Mesh$ES2MeshDisposerRecord;-><init>(Lcom/sun/prism/es2/ES2Context;J)V

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/prism/es2/ES2Mesh;-><init>(Lcom/sun/prism/es2/ES2Context;JLcom/sun/prism/impl/Disposer$Record;)V

    move-object v1, v4

    .end local v1    # "context":Lcom/sun/prism/es2/ES2Context;
    return-object v1
.end method


# virtual methods
.method public buildNativeGeometry([FI[II)Z
    .locals 12

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Mesh;
    move-object v1, p1

    .local v1, "vertexBuffer":[F
    move v2, p2

    .local v2, "vertexBufferLength":I
    move-object v3, p3

    .local v3, "indexBufferInt":[I
    move/from16 v4, p4

    .local v4, "indexBufferLength":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2Mesh;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/ES2Mesh;->nativeHandle:J

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sun/prism/es2/ES2Context;->buildNativeGeometry(J[FI[II)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Mesh;
    return v0
.end method

.method public buildNativeGeometry([FI[SI)Z
    .locals 12

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Mesh;
    move-object v1, p1

    .local v1, "vertexBuffer":[F
    move v2, p2

    .local v2, "vertexBufferLength":I
    move-object v3, p3

    .local v3, "indexBufferShort":[S
    move/from16 v4, p4

    .local v4, "indexBufferLength":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2Mesh;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/ES2Mesh;->nativeHandle:J

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/sun/prism/es2/ES2Context;->buildNativeGeometry(J[FI[SI)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Mesh;
    return v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Mesh;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Mesh;->disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

    invoke-interface {v1}, Lcom/sun/prism/impl/Disposer$Record;->dispose()V

    .line 59
    sget v1, Lcom/sun/prism/es2/ES2Mesh;->count:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sun/prism/es2/ES2Mesh;->count:I

    .line 60
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Mesh;
    sget v1, Lcom/sun/prism/es2/ES2Mesh;->count:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Mesh;
    return v0
.end method

.method getNativeHandle()J
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Mesh;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/ES2Mesh;->nativeHandle:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Mesh;
    return-wide v0
.end method
