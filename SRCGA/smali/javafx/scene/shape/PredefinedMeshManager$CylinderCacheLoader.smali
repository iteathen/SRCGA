.class final Ljavafx/scene/shape/PredefinedMeshManager$CylinderCacheLoader;
.super Ljava/lang/Object;
.source "PredefinedMeshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/shape/PredefinedMeshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CylinderCacheLoader"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/scene/shape/TriangleMesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 176
    new-instance v0, Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Ljavafx/scene/shape/PredefinedMeshManager$CylinderCacheLoader;->INSTANCE:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PredefinedMeshManager$CylinderCacheLoader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Ljavafx/scene/shape/PredefinedMeshManager$CylinderCacheLoader;->INSTANCE:Ljava/util/HashMap;

    return-object v0
.end method
