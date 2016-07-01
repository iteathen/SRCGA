.class public abstract Lcom/sun/javafx/perf/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;
    }
.end annotation


# static fields
.field private static sceneAccessor:Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;


# instance fields
.field private avgFramesTotal:I

.field private avgPulsesStartTime:J

.field private avgPulsesTotal:I

.field private avgStartTime:J

.field private firstPulse:Z

.field private instantFPS:F

.field private instantFPSFrames:I

.field private instantFPSStartTime:J

.field private instantPulses:F

.field private instantPulsesFrames:I

.field private instantPulsesStartTime:J

.field private onFirstPulse:Ljava/lang/Runnable;

.field private onPulse:Ljava/lang/Runnable;

.field private onRenderedFrameTask:Ljava/lang/Runnable;

.field private perfLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 129
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/perf/PerformanceTracker;->firstPulse:Z

    return-void
.end method

.method private declared-synchronized calcFPS()V
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    :try_start_0
    iget v2, v2, Lcom/sun/javafx/perf/PerformanceTracker;->avgFramesTotal:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/perf/PerformanceTracker;->avgFramesTotal:I

    .line 229
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/sun/javafx/perf/PerformanceTracker;->instantFPSFrames:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/perf/PerformanceTracker;->instantFPSFrames:I

    .line 230
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/perf/PerformanceTracker;->updateInstantFps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit v4

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    throw v0
.end method

.method private calcPulses()V
    .locals 5

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/perf/PerformanceTracker;->avgPulsesTotal:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/perf/PerformanceTracker;->avgPulsesTotal:I

    .line 223
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/perf/PerformanceTracker;->instantPulsesFrames:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/perf/PerformanceTracker;->instantPulsesFrames:I

    .line 224
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/perf/PerformanceTracker;->updateInstantPulses()V

    .line 225
    return-void
.end method

.method public static getSceneTracker(Ljavafx/scene/Scene;)Lcom/sun/javafx/perf/PerformanceTracker;
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    const/4 v2, 0x0

    move-object v1, v2

    .line 73
    .local v1, "tracker":Lcom/sun/javafx/perf/PerformanceTracker;
    sget-object v2, Lcom/sun/javafx/perf/PerformanceTracker;->sceneAccessor:Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;

    if-eqz v2, :cond_1

    .line 74
    sget-object v2, Lcom/sun/javafx/perf/PerformanceTracker;->sceneAccessor:Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;->getPerfTracker(Ljavafx/scene/Scene;)Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v2

    move-object v1, v2

    .line 75
    move-object v2, v1

    if-nez v2, :cond_0

    .line 76
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->createPerformanceTracker()Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v2

    move-object v1, v2

    .line 78
    :cond_0
    sget-object v2, Lcom/sun/javafx/perf/PerformanceTracker;->sceneAccessor:Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;->setPerfTracker(Ljavafx/scene/Scene;Lcom/sun/javafx/perf/PerformanceTracker;)V

    .line 80
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "scene":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getPerformanceTracker()Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sun/javafx/perf/PerformanceTracker;->perfLoggingEnabled:Z

    return v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "desc":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->getPerformanceTracker()Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/perf/PerformanceTracker;->doLogEvent(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static outputLog()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getPerformanceTracker()Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/perf/PerformanceTracker;->doOutputLog()V

    .line 120
    return-void
.end method

.method public static releaseSceneTracker(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    sget-object v1, Lcom/sun/javafx/perf/PerformanceTracker;->sceneAccessor:Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lcom/sun/javafx/perf/PerformanceTracker;->sceneAccessor:Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;->setPerfTracker(Ljavafx/scene/Scene;Lcom/sun/javafx/perf/PerformanceTracker;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static setSceneAccessor(Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;)V
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "accessor":Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/perf/PerformanceTracker;->sceneAccessor:Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;

    .line 97
    return-void
.end method

.method private declared-synchronized updateInstantFps()V
    .locals 9

    .prologue
    .line 234
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v8, p0

    monitor-enter v8

    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Lcom/sun/javafx/perf/PerformanceTracker;->nanoTime()J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/perf/PerformanceTracker;->instantFPSStartTime:J

    sub-long/2addr v4, v6

    move-wide v2, v4

    .line 235
    .local v2, "timeSince":J
    move-wide v4, v2

    const-wide/32 v6, 0x3b9aca00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 236
    move-object v4, v1

    const v5, 0x4e6e6b28    # 1.0E9f

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/perf/PerformanceTracker;->instantFPSFrames:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move-wide v6, v2

    long-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/perf/PerformanceTracker;->instantFPS:F

    .line 237
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/javafx/perf/PerformanceTracker;->instantFPSFrames:I

    .line 238
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->nanoTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sun/javafx/perf/PerformanceTracker;->instantFPSStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    monitor-exit v8

    return-void

    .line 234
    .end local v2    # "timeSince":J
    :catchall_0
    move-exception v1

    monitor-exit v8

    .end local v1    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    throw v1
.end method

.method private updateInstantPulses()V
    .locals 8

    .prologue
    .line 243
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/perf/PerformanceTracker;->nanoTime()J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/perf/PerformanceTracker;->instantPulsesStartTime:J

    sub-long/2addr v4, v6

    move-wide v2, v4

    .line 244
    .local v2, "timeSince":J
    move-wide v4, v2

    const-wide/32 v6, 0x3b9aca00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 245
    move-object v4, v1

    const v5, 0x4e6e6b28    # 1.0E9f

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/perf/PerformanceTracker;->instantPulsesFrames:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move-wide v6, v2

    long-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/perf/PerformanceTracker;->instantPulses:F

    .line 246
    move-object v4, v1

    const/4 v5, 0x0

    iput v5, v4, Lcom/sun/javafx/perf/PerformanceTracker;->instantPulsesFrames:I

    .line 247
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->nanoTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sun/javafx/perf/PerformanceTracker;->instantPulsesStartTime:J

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract doLogEvent(Ljava/lang/String;)V
.end method

.method public abstract doOutputLog()V
.end method

.method public frameRendered()V
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/perf/PerformanceTracker;->calcFPS()V

    .line 216
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->onRenderedFrameTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 217
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->onRenderedFrameTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 219
    :cond_0
    return-void
.end method

.method public declared-synchronized getAverageFPS()F
    .locals 9

    .prologue
    .line 161
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v8, p0

    monitor-enter v8

    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Lcom/sun/javafx/perf/PerformanceTracker;->nanoTime()J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/perf/PerformanceTracker;->avgStartTime:J

    sub-long/2addr v4, v6

    move-wide v2, v4

    .line 162
    .local v2, "nsseconds":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 163
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/perf/PerformanceTracker;->avgFramesTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v4, v5

    move-wide v5, v2

    long-to-float v5, v5

    div-float/2addr v4, v5

    move v1, v4

    .line 165
    .end local v1    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    :goto_0
    monitor-exit v8

    return v1

    .restart local v1    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    :cond_0
    move-object v4, v1

    :try_start_1
    invoke-virtual {v4}, Lcom/sun/javafx/perf/PerformanceTracker;->getInstantFPS()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    move v1, v4

    goto :goto_0

    .line 161
    .end local v2    # "nsseconds":J
    :catchall_0
    move-exception v1

    monitor-exit v8

    .end local v1    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    throw v1
.end method

.method public getAveragePulses()F
    .locals 8

    .prologue
    .line 183
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/perf/PerformanceTracker;->nanoTime()J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/perf/PerformanceTracker;->avgPulsesStartTime:J

    sub-long/2addr v4, v6

    move-wide v2, v4

    .line 184
    .local v2, "nsseconds":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 185
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/perf/PerformanceTracker;->avgPulsesTotal:I

    int-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v4, v5

    move-wide v5, v2

    long-to-float v5, v5

    div-float/2addr v4, v5

    move v1, v4

    .line 187
    .end local v1    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/perf/PerformanceTracker;->getInstantPulses()F

    move-result v4

    move v1, v4

    goto :goto_0
.end method

.method public declared-synchronized getInstantFPS()F
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->instantFPS:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    throw v0
.end method

.method public getInstantPulses()F
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->instantPulses:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    return v0
.end method

.method public getOnFirstPulse()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->onFirstPulse:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    return-object v0
.end method

.method public getOnPulse()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->onPulse:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    return-object v0
.end method

.method public getOnRenderedFrameTask()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->onRenderedFrameTask:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    return-object v0
.end method

.method protected isPerfLoggingEnabled()Z
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->perfLoggingEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    return v0
.end method

.method protected abstract nanoTime()J
.end method

.method public pulse()V
    .locals 3

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/perf/PerformanceTracker;->calcPulses()V

    .line 200
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/perf/PerformanceTracker;->updateInstantFps()V

    .line 201
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->firstPulse:Z

    if-eqz v1, :cond_0

    .line 202
    move-object v1, v0

    const-string v2, "first repaint"

    invoke-virtual {v1, v2}, Lcom/sun/javafx/perf/PerformanceTracker;->doLogEvent(Ljava/lang/String;)V

    .line 203
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/perf/PerformanceTracker;->firstPulse:Z

    .line 204
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/perf/PerformanceTracker;->resetAverageFPS()V

    .line 205
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/perf/PerformanceTracker;->resetAveragePulses()V

    .line 206
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->onFirstPulse:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 207
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->onFirstPulse:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 211
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->onPulse:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/perf/PerformanceTracker;->onPulse:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 212
    :cond_1
    return-void
.end method

.method public declared-synchronized resetAverageFPS()V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/javafx/perf/PerformanceTracker;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/javafx/perf/PerformanceTracker;->avgStartTime:J

    .line 170
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/perf/PerformanceTracker;->avgFramesTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v4

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/perf/PerformanceTracker;
    throw v0
.end method

.method public resetAveragePulses()V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/perf/PerformanceTracker;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/javafx/perf/PerformanceTracker;->avgPulsesStartTime:J

    .line 192
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/perf/PerformanceTracker;->avgPulsesTotal:I

    .line 193
    return-void
.end method

.method public setOnFirstPulse(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/perf/PerformanceTracker;->onFirstPulse:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnPulse(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/perf/PerformanceTracker;->onPulse:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnRenderedFrameTask(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/perf/PerformanceTracker;->onRenderedFrameTask:Ljava/lang/Runnable;

    return-void
.end method

.method protected setPerfLoggingEnabled(Z)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/perf/PerformanceTracker;->perfLoggingEnabled:Z

    return-void
.end method
