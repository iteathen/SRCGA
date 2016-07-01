.class final Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDummyImpl;
.super Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
.source "PerformanceTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PerformanceTrackerDummyImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDummyImpl;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;-><init>(Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;)V
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDummyImpl;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDummyImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isPerfLoggingEnabled()Z
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDummyImpl;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDummyImpl;
    return v0
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 187
    return-void
.end method

.method public outputLog()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
