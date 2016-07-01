.class final Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;
.super Ljava/lang/Object;
.source "PerformanceTrackerHelper.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;->createInstance()Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;
    :try_start_0
    sget-object v2, Lcom/sun/prism/impl/PrismSettings;->perfLog:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 58
    new-instance v2, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;-><init>()V

    move-object v1, v2

    .line 61
    .local v1, "trackerImpl":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->perfLogExitFlush:Z

    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1$1;-><init>(Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;)V

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .line 77
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;
    :goto_0
    return-object v0

    .line 75
    .line 77
    .end local v1    # "trackerImpl":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;->run()Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;
    return-object v0
.end method
