.class Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1$1;
.super Ljava/lang/Thread;
.source "PerformanceTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;->run()Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;

.field final synthetic val$trackerImpl:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;)V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1$1;->this$0:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1$1;->val$trackerImpl:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1$1;->val$trackerImpl:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;->outputLog()V

    .line 68
    return-void
.end method
