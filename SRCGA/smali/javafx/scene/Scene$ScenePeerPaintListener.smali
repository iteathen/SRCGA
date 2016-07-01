.class Ljavafx/scene/Scene$ScenePeerPaintListener;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKScenePaintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScenePeerPaintListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method private constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 2781
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePeerPaintListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$ScenePeerPaintListener;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Scene;Ljavafx/scene/Scene$1;)V
    .locals 5

    .prologue
    .line 2781
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePeerPaintListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/Scene$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$ScenePeerPaintListener;-><init>(Ljavafx/scene/Scene;)V

    return-void
.end method


# virtual methods
.method public frameRendered()V
    .locals 6

    .prologue
    .line 2785
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePeerPaintListener;
    # getter for: Ljavafx/scene/Scene;->trackerMonitor:Ljava/lang/Object;
    invoke-static {}, Ljavafx/scene/Scene;->access$000()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2786
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/Scene$ScenePeerPaintListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$100(Ljavafx/scene/Scene;)Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2787
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePeerPaintListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$100(Ljavafx/scene/Scene;)Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/perf/PerformanceTracker;->frameRendered()V

    .line 2789
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 2790
    return-void

    .line 2789
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method
