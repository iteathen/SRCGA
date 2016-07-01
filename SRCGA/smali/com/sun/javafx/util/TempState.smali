.class public final Lcom/sun/javafx/util/TempState;
.super Ljava/lang/Object;
.source "TempState.java"


# static fields
.field private static final tempStateRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/sun/javafx/util/TempState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bounds:Lcom/sun/javafx/geom/BaseBounds;

.field public final leafTx:Lcom/sun/javafx/geom/transform/Affine3D;

.field public final pickTx:Lcom/sun/javafx/geom/transform/BaseTransform;

.field public final point:Lcom/sun/javafx/geom/Point2D;

.field public final projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

.field public final tempTx:Lcom/sun/javafx/geom/transform/Affine3D;

.field public final vec3d:Lcom/sun/javafx/geom/Vec3d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/sun/javafx/util/TempState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/util/TempState$1;-><init>()V

    sput-object v0, Lcom/sun/javafx/util/TempState;->tempStateRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/TempState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    iput-object v2, v1, Lcom/sun/javafx/util/TempState;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 54
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/util/TempState;->pickTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 60
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/util/TempState;->leafTx:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 65
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Point2D;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    iput-object v2, v1, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    .line 68
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Vec3d;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/sun/javafx/geom/Vec3d;-><init>(DDD)V

    iput-object v2, v1, Lcom/sun/javafx/util/TempState;->vec3d:Lcom/sun/javafx/geom/Vec3d;

    .line 76
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/util/TempState;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    .line 82
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/util/TempState;->tempTx:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/util/TempState$1;)V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/TempState;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/util/TempState$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/util/TempState;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/util/TempState;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/sun/javafx/util/TempState;->tempStateRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/javafx/util/TempState;

    return-object v0
.end method
