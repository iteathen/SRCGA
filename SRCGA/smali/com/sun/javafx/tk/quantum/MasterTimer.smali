.class public final Lcom/sun/javafx/tk/quantum/MasterTimer;
.super Lcom/sun/scenario/animation/AbstractMasterTimer;
.source "MasterTimer.java"


# static fields
.field private static final MASTER_TIMER_KEY:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "MasterTimerKey"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/MasterTimer;->MASTER_TIMER_KEY:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/MasterTimer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/animation/AbstractMasterTimer;-><init>()V

    .line 49
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sun/javafx/tk/quantum/MasterTimer;
    .locals 7

    .prologue
    .line 55
    const-class v5, Lcom/sun/javafx/tk/quantum/MasterTimer;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getContextMap()Ljava/util/Map;

    move-result-object v2

    move-object v0, v2

    .line 56
    .local v0, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/tk/quantum/MasterTimer;->MASTER_TIMER_KEY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/tk/quantum/MasterTimer;

    move-object v1, v2

    .line 57
    .local v1, "instance":Lcom/sun/javafx/tk/quantum/MasterTimer;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Lcom/sun/javafx/tk/quantum/MasterTimer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/MasterTimer;-><init>()V

    move-object v1, v2

    .line 59
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/tk/quantum/MasterTimer;->MASTER_TIMER_KEY:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 60
    const-string v2, "com.sun.scenario.animation.AnimationMBean.enabled"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sun/scenario/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse;->getDefaultBean()Lcom/sun/scenario/animation/AnimationPulse;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    monitor-exit v5

    return-object v0

    .line 55
    .end local v1    # "instance":Lcom/sun/javafx/tk/quantum/MasterTimer;
    .restart local v0    # "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    throw v0
.end method


# virtual methods
.method protected getPulseDuration(I)I
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/MasterTimer;
    move v1, p1

    .local v1, "precision":I
    move v4, v1

    const/16 v5, 0x3c

    div-int/lit8 v4, v4, 0x3c

    move v2, v4

    .line 82
    .local v2, "retVal":I
    const-string v4, "javafx.animation.framerate"

    invoke-static {v4}, Lcom/sun/scenario/Settings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 83
    const-string v4, "javafx.animation.framerate"

    const/16 v5, 0x3c

    invoke-static {v4, v5}, Lcom/sun/scenario/Settings;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    .line 84
    .local v3, "overrideHz":I
    move v4, v3

    if-lez v4, :cond_0

    .line 85
    move v4, v1

    move v5, v3

    div-int/2addr v4, v5

    move v2, v4

    .line 87
    .line 101
    .end local v3    # "overrideHz":I
    :cond_0
    :goto_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/MasterTimer;
    return v0

    .line 87
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/MasterTimer;
    :cond_1
    const-string v4, "javafx.animation.pulse"

    invoke-static {v4}, Lcom/sun/scenario/Settings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 88
    const-string v4, "javafx.animation.pulse"

    const/16 v5, 0x3c

    invoke-static {v4, v5}, Lcom/sun/scenario/Settings;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    .line 89
    .restart local v3    # "overrideHz":I
    move v4, v3

    if-lez v4, :cond_2

    .line 90
    move v4, v1

    move v5, v3

    div-int/2addr v4, v5

    move v2, v4

    .line 92
    :cond_2
    goto :goto_0

    .line 95
    .end local v3    # "overrideHz":I
    :cond_3
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getRefreshRate()I

    move-result v4

    move v3, v4

    .line 96
    .local v3, "rate":I
    move v4, v3

    if-lez v4, :cond_0

    .line 97
    move v4, v1

    move v5, v3

    div-int/2addr v4, v5

    move v2, v4

    goto :goto_0
.end method

.method protected postUpdateAnimationRunnable(Lcom/sun/scenario/DelayedRunnable;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/MasterTimer;
    move-object v1, p1

    .local v1, "animationRunnable":Lcom/sun/scenario/DelayedRunnable;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->setAnimationRunnable(Lcom/sun/scenario/DelayedRunnable;)V

    .line 106
    return-void
.end method

.method protected recordAnimationEnd()V
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/MasterTimer;
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse;->getDefaultBean()Lcom/sun/scenario/animation/AnimationPulse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/animation/AnimationPulse;->recordAnimationEnd()V

    .line 121
    return-void
.end method

.method protected recordEnd()V
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/MasterTimer;
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse;->getDefaultBean()Lcom/sun/scenario/animation/AnimationPulse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/scenario/animation/AnimationPulse;->recordEnd()V

    .line 116
    return-void
.end method

.method protected recordStart(J)V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/MasterTimer;
    move-wide v1, p1

    .local v1, "shiftMillis":J
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse;->getDefaultBean()Lcom/sun/scenario/animation/AnimationPulse;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/animation/AnimationPulse;->recordStart(J)V

    .line 111
    return-void
.end method
