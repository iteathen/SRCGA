.class public abstract Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/perf/PerformanceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SceneAccessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPerfTracker(Ljavafx/scene/Scene;)Lcom/sun/javafx/perf/PerformanceTracker;
.end method

.method public abstract setPerfTracker(Ljavafx/scene/Scene;Lcom/sun/javafx/perf/PerformanceTracker;)V
.end method
