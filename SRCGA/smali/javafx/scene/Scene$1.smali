.class final Ljavafx/scene/Scene$1;
.super Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$1;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPerfTracker(Ljavafx/scene/Scene;)Lcom/sun/javafx/perf/PerformanceTracker;
    .locals 7

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$1;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    # getter for: Ljavafx/scene/Scene;->trackerMonitor:Ljava/lang/Object;
    invoke-static {}, Ljavafx/scene/Scene;->access$000()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 361
    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljavafx/scene/Scene;->access$100(Ljavafx/scene/Scene;)Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/Scene$1;
    return-object v0

    .line 362
    .restart local v0    # "this":Ljavafx/scene/Scene$1;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public setPerfTracker(Ljavafx/scene/Scene;Lcom/sun/javafx/perf/PerformanceTracker;)V
    .locals 8

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$1;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "tracker":Lcom/sun/javafx/perf/PerformanceTracker;
    # getter for: Ljavafx/scene/Scene;->trackerMonitor:Ljava/lang/Object;
    invoke-static {}, Ljavafx/scene/Scene;->access$000()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    .line 356
    move-object v5, v1

    move-object v6, v2

    :try_start_0
    invoke-static {v5, v6}, Ljavafx/scene/Scene;->access$102(Ljavafx/scene/Scene;Lcom/sun/javafx/perf/PerformanceTracker;)Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v5

    .line 357
    move-object v5, v3

    monitor-exit v5

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method
