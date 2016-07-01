.class final Lcom/sun/prism/impl/MeshTempState;
.super Ljava/lang/Object;
.source "MeshTempState.java"


# static fields
.field private static final tempStateRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/sun/prism/impl/MeshTempState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field indexBuffer:[I

.field indexBufferShort:[S

.field final matrix:[[F

.field pVertex:[Lcom/sun/prism/impl/MeshVertex;

.field pool:[Lcom/sun/prism/impl/MeshVertex;

.field final quat:Lcom/sun/javafx/geom/Quat4f;

.field final smFace:[I

.field final triNormalIndex:[I

.field final triNormals:[Lcom/sun/javafx/geom/Vec3f;

.field final triPointIndex:[I

.field final triPoints:[Lcom/sun/javafx/geom/Vec3f;

.field final triTexCoordIndex:[I

.field final triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

.field final triVerts:[I

.field final vec2f1:Lcom/sun/javafx/geom/Vec2f;

.field final vec2f2:Lcom/sun/javafx/geom/Vec2f;

.field final vec3f1:Lcom/sun/javafx/geom/Vec3f;

.field final vec3f2:Lcom/sun/javafx/geom/Vec3f;

.field final vec3f3:Lcom/sun/javafx/geom/Vec3f;

.field final vec3f4:Lcom/sun/javafx/geom/Vec3f;

.field final vec3f5:Lcom/sun/javafx/geom/Vec3f;

.field final vec3f6:Lcom/sun/javafx/geom/Vec3f;

.field final vector:[F

.field vertexBuffer:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/sun/prism/impl/MeshTempState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/prism/impl/MeshTempState$1;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/MeshTempState;->tempStateRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/MeshTempState;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Vec3f;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->vec3f1:Lcom/sun/javafx/geom/Vec3f;

    .line 45
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Vec3f;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->vec3f2:Lcom/sun/javafx/geom/Vec3f;

    .line 46
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Vec3f;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->vec3f3:Lcom/sun/javafx/geom/Vec3f;

    .line 47
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Vec3f;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->vec3f4:Lcom/sun/javafx/geom/Vec3f;

    .line 48
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Vec3f;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->vec3f5:Lcom/sun/javafx/geom/Vec3f;

    .line 49
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Vec3f;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->vec3f6:Lcom/sun/javafx/geom/Vec3f;

    .line 54
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Vec2f;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->vec2f1:Lcom/sun/javafx/geom/Vec2f;

    .line 55
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Vec2f;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Vec2f;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->vec2f2:Lcom/sun/javafx/geom/Vec2f;

    .line 60
    move-object v2, v0

    const/4 v3, 0x7

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->smFace:[I

    .line 61
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->triVerts:[I

    .line 62
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sun/javafx/geom/Vec3f;

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->triPoints:[Lcom/sun/javafx/geom/Vec3f;

    .line 63
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sun/javafx/geom/Vec2f;

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->triTexCoords:[Lcom/sun/javafx/geom/Vec2f;

    .line 64
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sun/javafx/geom/Vec3f;

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    .line 65
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->triPointIndex:[I

    .line 66
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->triNormalIndex:[I

    .line 67
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->triTexCoordIndex:[I

    .line 72
    move-object v2, v0

    const/4 v3, 0x3

    const/4 v4, 0x3

    filled-new-array {v3, v4}, [I

    move-result-object v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->matrix:[[F

    .line 76
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->vector:[F

    .line 80
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Quat4f;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/Quat4f;-><init>()V

    iput-object v3, v2, Lcom/sun/prism/impl/MeshTempState;->quat:Lcom/sun/javafx/geom/Quat4f;

    .line 121
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 122
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/MeshTempState;->triNormals:[Lcom/sun/javafx/geom/Vec3f;

    move v3, v1

    new-instance v4, Lcom/sun/javafx/geom/Vec3f;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/Vec3f;-><init>()V

    aput-object v4, v2, v3

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/prism/impl/MeshTempState$1;)V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/MeshTempState;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/prism/impl/MeshTempState$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/prism/impl/MeshTempState;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/sun/prism/impl/MeshTempState;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/sun/prism/impl/MeshTempState;->tempStateRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/prism/impl/MeshTempState;

    return-object v0
.end method
