.class abstract Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
.super Ljava/lang/Object;
.source "PerformanceTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDummyImpl;,
        Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDefaultImpl;
    }
.end annotation


# static fields
.field private static final instance:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;->createInstance()Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;->instance:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;)V
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;-><init>()V

    return-void
.end method

.method private static createInstance()Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    .locals 5

    .prologue
    .line 51
    new-instance v1, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    move-object v0, v1

    .line 81
    .local v0, "trackerImpl":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDummyImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$PerformanceTrackerDummyImpl;-><init>(Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper$1;)V

    move-object v0, v1

    .line 85
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "trackerImpl":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    return-object v0
.end method

.method public static getInstance()Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;->instance:Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;

    return-object v0
.end method


# virtual methods
.method public abstract isPerfLoggingEnabled()Z
.end method

.method public abstract logEvent(Ljava/lang/String;)V
.end method

.method public final nanoTime()J
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PerformanceTrackerHelper;
    return-wide v0
.end method

.method public abstract outputLog()V
.end method
