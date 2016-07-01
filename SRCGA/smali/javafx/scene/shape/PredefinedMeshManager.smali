.class final Ljavafx/scene/shape/PredefinedMeshManager;
.super Ljava/lang/Object;
.source "PredefinedMeshManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/shape/PredefinedMeshManager$CylinderCacheLoader;,
        Ljavafx/scene/shape/PredefinedMeshManager$SphereCacheLoader;,
        Ljavafx/scene/shape/PredefinedMeshManager$BoxCacheLoader;
    }
.end annotation


# static fields
.field private static final INITAL_CAPACITY:I = 0x11

.field private static final INSTANCE:Ljavafx/scene/shape/PredefinedMeshManager;

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private boxCache:Ljava/util/HashMap;
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

.field private cylinderCache:Ljava/util/HashMap;
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

.field private sphereCache:Ljava/util/HashMap;
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
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljavafx/scene/shape/PredefinedMeshManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/shape/PredefinedMeshManager;-><init>()V

    sput-object v0, Ljavafx/scene/shape/PredefinedMeshManager;->INSTANCE:Ljavafx/scene/shape/PredefinedMeshManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PredefinedMeshManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    .line 37
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    .line 38
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method static getInstance()Ljavafx/scene/shape/PredefinedMeshManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ljavafx/scene/shape/PredefinedMeshManager;->INSTANCE:Ljavafx/scene/shape/PredefinedMeshManager;

    return-object v0
.end method


# virtual methods
.method declared-synchronized dispose()V
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PredefinedMeshManager;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 133
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 135
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 136
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 138
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 139
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_2
    monitor-exit v2

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    throw v0
.end method

.method declared-synchronized getBoxMesh(FFFI)Ljavafx/scene/shape/TriangleMesh;
    .locals 10

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PredefinedMeshManager;
    move v1, p1

    .local v1, "w":F
    move v2, p2

    .local v2, "h":F
    move v3, p3

    .local v3, "d":F
    move v4, p4

    .local v4, "key":I
    move-object v9, p0

    monitor-enter v9

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 48
    move-object v6, v0

    # getter for: Ljavafx/scene/shape/PredefinedMeshManager$BoxCacheLoader;->INSTANCE:Ljava/util/HashMap;
    invoke-static {}, Ljavafx/scene/shape/PredefinedMeshManager$BoxCacheLoader;->access$000()Ljava/util/HashMap;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    .line 51
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/shape/TriangleMesh;

    move-object v5, v6

    .line 52
    .local v5, "mesh":Ljavafx/scene/shape/TriangleMesh;
    move-object v6, v5

    if-nez v6, :cond_1

    .line 53
    move v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Ljavafx/scene/shape/Box;->createMesh(FFF)Ljavafx/scene/shape/TriangleMesh;

    move-result-object v6

    move-object v5, v6

    .line 54
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 58
    :goto_0
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    monitor-exit v9

    return-object v0

    .line 56
    .restart local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    :cond_1
    move-object v6, v5

    :try_start_1
    invoke-virtual {v6}, Ljavafx/scene/shape/TriangleMesh;->incRef()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    .end local v5    # "mesh":Ljavafx/scene/shape/TriangleMesh;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    throw v0
.end method

.method declared-synchronized getCylinderMesh(FFII)Ljavafx/scene/shape/TriangleMesh;
    .locals 10

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PredefinedMeshManager;
    move v1, p1

    .local v1, "h":F
    move v2, p2

    .local v2, "r":F
    move v3, p3

    .local v3, "div":I
    move v4, p4

    .local v4, "key":I
    move-object v9, p0

    monitor-enter v9

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 78
    move-object v6, v0

    # getter for: Ljavafx/scene/shape/PredefinedMeshManager$CylinderCacheLoader;->INSTANCE:Ljava/util/HashMap;
    invoke-static {}, Ljavafx/scene/shape/PredefinedMeshManager$CylinderCacheLoader;->access$200()Ljava/util/HashMap;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    .line 81
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/shape/TriangleMesh;

    move-object v5, v6

    .line 82
    .local v5, "mesh":Ljavafx/scene/shape/TriangleMesh;
    move-object v6, v5

    if-nez v6, :cond_1

    .line 83
    move v6, v3

    move v7, v1

    move v8, v2

    invoke-static {v6, v7, v8}, Ljavafx/scene/shape/Cylinder;->createMesh(IFF)Ljavafx/scene/shape/TriangleMesh;

    move-result-object v6

    move-object v5, v6

    .line 84
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 88
    :goto_0
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    monitor-exit v9

    return-object v0

    .line 86
    .restart local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    :cond_1
    move-object v6, v5

    :try_start_1
    invoke-virtual {v6}, Ljavafx/scene/shape/TriangleMesh;->incRef()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v5    # "mesh":Ljavafx/scene/shape/TriangleMesh;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    throw v0
.end method

.method declared-synchronized getSphereMesh(FII)Ljavafx/scene/shape/TriangleMesh;
    .locals 9

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PredefinedMeshManager;
    move v1, p1

    .local v1, "r":F
    move v2, p2

    .local v2, "div":I
    move v3, p3

    .local v3, "key":I
    move-object v8, p0

    monitor-enter v8

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 63
    move-object v5, v0

    # getter for: Ljavafx/scene/shape/PredefinedMeshManager$SphereCacheLoader;->INSTANCE:Ljava/util/HashMap;
    invoke-static {}, Ljavafx/scene/shape/PredefinedMeshManager$SphereCacheLoader;->access$100()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    .line 66
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/shape/TriangleMesh;

    move-object v4, v5

    .line 67
    .local v4, "mesh":Ljavafx/scene/shape/TriangleMesh;
    move-object v5, v4

    if-nez v5, :cond_1

    .line 68
    move v5, v2

    move v6, v1

    invoke-static {v5, v6}, Ljavafx/scene/shape/Sphere;->createMesh(IF)Ljavafx/scene/shape/TriangleMesh;

    move-result-object v5

    move-object v4, v5

    .line 69
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 73
    :goto_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    monitor-exit v8

    return-object v0

    .line 71
    .restart local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    :cond_1
    move-object v5, v4

    :try_start_1
    invoke-virtual {v5}, Ljavafx/scene/shape/TriangleMesh;->incRef()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    .end local v4    # "mesh":Ljavafx/scene/shape/TriangleMesh;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    throw v0
.end method

.method declared-synchronized invalidateBoxMesh(I)V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PredefinedMeshManager;
    move v1, p1

    .local v1, "key":I
    move-object v6, p0

    monitor-enter v6

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 93
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/shape/TriangleMesh;

    move-object v2, v4

    .line 94
    .local v2, "mesh":Ljavafx/scene/shape/TriangleMesh;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 95
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/shape/TriangleMesh;->decRef()V

    .line 96
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/shape/TriangleMesh;->getRefCount()I

    move-result v4

    move v3, v4

    .line 97
    .local v3, "count":I
    move v4, v3

    if-nez v4, :cond_0

    .line 98
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 102
    .end local v2    # "mesh":Ljavafx/scene/shape/TriangleMesh;
    .end local v3    # "count":I
    :cond_0
    monitor-exit v6

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    throw v0
.end method

.method declared-synchronized invalidateCylinderMesh(I)V
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PredefinedMeshManager;
    move v1, p1

    .local v1, "key":I
    move-object v6, p0

    monitor-enter v6

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 119
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/shape/TriangleMesh;

    move-object v2, v4

    .line 120
    .local v2, "mesh":Ljavafx/scene/shape/TriangleMesh;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 121
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/shape/TriangleMesh;->decRef()V

    .line 122
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/shape/TriangleMesh;->getRefCount()I

    move-result v4

    move v3, v4

    .line 123
    .local v3, "count":I
    move v4, v3

    if-nez v4, :cond_0

    .line 124
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 128
    .end local v2    # "mesh":Ljavafx/scene/shape/TriangleMesh;
    .end local v3    # "count":I
    :cond_0
    monitor-exit v6

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    throw v0
.end method

.method declared-synchronized invalidateSphereMesh(I)V
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PredefinedMeshManager;
    move v1, p1

    .local v1, "key":I
    move-object v6, p0

    monitor-enter v6

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 106
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/shape/TriangleMesh;

    move-object v2, v4

    .line 107
    .local v2, "mesh":Ljavafx/scene/shape/TriangleMesh;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 108
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/shape/TriangleMesh;->decRef()V

    .line 109
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/shape/TriangleMesh;->getRefCount()I

    move-result v4

    move v3, v4

    .line 110
    .local v3, "count":I
    move v4, v3

    if-nez v4, :cond_0

    .line 111
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 115
    .end local v2    # "mesh":Ljavafx/scene/shape/TriangleMesh;
    .end local v3    # "count":I
    :cond_0
    monitor-exit v6

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    throw v0
.end method

.method declared-synchronized printStats()V
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PredefinedMeshManager;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoxCache size:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/PredefinedMeshManager;->boxCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 150
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SphereCache size:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/PredefinedMeshManager;->sphereCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 154
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CylinderCache size:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/PredefinedMeshManager;->cylinderCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_2
    monitor-exit v4

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Ljavafx/scene/shape/PredefinedMeshManager;
    throw v0
.end method
