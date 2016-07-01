.class final Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;
.super Lcom/sun/javafx/perf/PerformanceTracker;
.source "PerformanceTrackerImpl.java"


# instance fields
.field final helper:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/perf/PerformanceTracker;-><init>()V

    .line 35
    move-object v1, v0

    .line 36
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;->getInstance()Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;->helper:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    .line 39
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;->helper:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;->isPerfLoggingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;->setPerfLoggingEnabled(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public doLogEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;->helper:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;->logEvent(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public doOutputLog()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;->helper:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;->outputLog()V

    .line 48
    return-void
.end method

.method public nanoTime()J
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;->helper:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;->nanoTime()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;
    return-wide v0
.end method
