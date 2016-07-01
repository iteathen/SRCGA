.class public abstract Lcom/sun/scenario/animation/AbstractMasterTimer;
.super Ljava/lang/Object;
.source "AbstractMasterTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;
    }
.end annotation


# static fields
.field protected static final ADAPTIVE_PULSE_PROP:Ljava/lang/String; = "com.sun.scenario.animation.adaptivepulse"

.field protected static final ANIMATION_MBEAN_ENABLED:Ljava/lang/String; = "com.sun.scenario.animation.AnimationMBean.enabled"

.field protected static final FIXED_PULSE_LENGTH_PROP:Ljava/lang/String; = "com.sun.scenario.animation.fixed.pulse.length"

.field protected static final FRAMERATE_PROP:Ljava/lang/String; = "javafx.animation.framerate"

.field protected static final FULLSPEED_PROP:Ljava/lang/String; = "javafx.animation.fullspeed"

.field protected static final PULSE_PROP:Ljava/lang/String; = "javafx.animation.pulse"

.field protected static final enableAnimationMBean:Z

.field private static fullspeed:Z

.field private static pcl:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static useAdaptivePulse:Z


# instance fields
.field private final PULSE_DURATION_NS:I

.field private final PULSE_DURATION_TICKS:I

.field private animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

.field private animationTimersLength:I

.field private animationTimersLocked:Z

.field private debugNanos:J

.field private final fixedPulseLength:J

.field private paused:Z

.field private receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

.field private receiversLength:I

.field private receiversLocked:Z

.field private startPauseTime:J

.field private final theMaster:Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;

.field private totalPausedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    const-string v1, "javafx.animation.fullspeed"

    invoke-static {v1}, Lcom/sun/scenario/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->fullspeed:Z

    .line 44
    const-string v1, "com.sun.scenario.animation.adaptivepulse"

    invoke-static {v1}, Lcom/sun/scenario/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->useAdaptivePulse:Z

    .line 66
    invoke-static {}, Lcom/sun/scenario/animation/AbstractMasterTimer$$Lambda$1;->lambdaFactory$()Ljavafx/util/Callback;

    move-result-object v1

    sput-object v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->pcl:Ljavafx/util/Callback;

    .line 112
    sget-object v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->pcl:Ljavafx/util/Callback;

    invoke-static {v1}, Lcom/sun/scenario/Settings;->addPropertyChangeListener(Ljavafx/util/Callback;)V

    .line 113
    const-string v1, "javafx.animation.pulse"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/sun/scenario/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    .line 114
    .local v0, "pulse":I
    move v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 115
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting PULSE_DURATION to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v1, v0

    move-object v2, v0

    const v3, 0x3b9aca00

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AbstractMasterTimer;->getPulseDuration(I)I

    move-result v2

    iput v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->PULSE_DURATION_NS:I

    .line 62
    move-object v1, v0

    move-object v2, v0

    const-wide v3, 0x408f400000000000L    # 1000.0

    invoke-static {v3, v4}, Lcom/sun/javafx/animation/TickCalculation;->fromMillis(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AbstractMasterTimer;->getPulseDuration(I)I

    move-result v2

    iput v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->PULSE_DURATION_TICKS:I

    .line 82
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->paused:Z

    .line 91
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sun/scenario/animation/shared/PulseReceiver;

    iput-object v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 96
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sun/scenario/animation/shared/TimerReceiver;

    iput-object v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    .line 105
    move-object v1, v0

    const-string v2, "com.sun.scenario.animation.fixed.pulse.length"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/scenario/animation/AbstractMasterTimer;->PULSE_DURATION_NS:I

    int-to-long v2, v2

    :goto_0
    iput-wide v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->fixedPulseLength:J

    .line 106
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->debugNanos:J

    .line 108
    move-object v1, v0

    new-instance v2, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;-><init>(Lcom/sun/scenario/animation/AbstractMasterTimer;Lcom/sun/scenario/animation/AbstractMasterTimer$1;)V

    iput-object v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->theMaster:Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;

    .line 153
    return-void

    .line 105
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/sun/scenario/animation/AbstractMasterTimer;)Z
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->paused:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/scenario/animation/AbstractMasterTimer;
    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/sun/scenario/animation/AbstractMasterTimer;->fullspeed:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/sun/scenario/animation/AbstractMasterTimer;->useAdaptivePulse:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sun/scenario/animation/AbstractMasterTimer;)I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->PULSE_DURATION_NS:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/scenario/animation/AbstractMasterTimer;
    return v0
.end method

.method static synthetic access$600(Lcom/sun/scenario/animation/AbstractMasterTimer;)I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/scenario/animation/AbstractMasterTimer;
    return v0
.end method

.method static synthetic access$700(Lcom/sun/scenario/animation/AbstractMasterTimer;)I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/scenario/animation/AbstractMasterTimer;
    return v0
.end method

.method static synthetic access$lambda$0(Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/scenario/animation/AbstractMasterTimer;->lambda$static$34(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static synthetic lambda$static$34(Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v3, v0

    move-object v1, v3

    const/4 v3, -0x1

    move v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 79
    :goto_1
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "key":Ljava/lang/String;
    return-object v0

    .line 67
    .restart local v0    # "key":Ljava/lang/String;
    :sswitch_0
    move-object v3, v1

    const-string v4, "javafx.animation.fullspeed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    :sswitch_1
    move-object v3, v1

    const-string v4, "com.sun.scenario.animation.adaptivepulse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    goto :goto_0

    :sswitch_2
    move-object v3, v1

    const-string v4, "com.sun.scenario.animation.AnimationMBean.enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    move v2, v3

    goto :goto_0

    .line 69
    :pswitch_0
    const-string v3, "javafx.animation.fullspeed"

    invoke-static {v3}, Lcom/sun/scenario/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->fullspeed:Z

    .line 70
    goto :goto_1

    .line 72
    :pswitch_1
    const-string v3, "com.sun.scenario.animation.adaptivepulse"

    invoke-static {v3}, Lcom/sun/scenario/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->useAdaptivePulse:Z

    .line 73
    goto :goto_1

    .line 75
    :pswitch_2
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse;->getDefaultBean()Lcom/sun/scenario/animation/AnimationPulse;

    move-result-object v3

    const-string v4, "com.sun.scenario.animation.AnimationMBean.enabled"

    .line 76
    invoke-static {v4}, Lcom/sun/scenario/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/animation/AnimationPulse;->setEnabled(Z)V

    goto :goto_1

    .line 67
    :sswitch_data_0
    .sparse-switch
        -0x5754c2b6 -> :sswitch_1
        -0x301c8d4c -> :sswitch_0
        0x33c49485 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addAnimationTimer(Lcom/sun/scenario/animation/shared/TimerReceiver;)V
    .locals 10

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, p1

    .local v1, "timer":Lcom/sun/scenario/animation/shared/TimerReceiver;
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    array-length v4, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 204
    .local v2, "needMoreSize":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLocked:Z

    if-nez v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_1

    .line 205
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    move v5, v2

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    array-length v5, v5

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    :goto_1
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/scenario/animation/shared/TimerReceiver;

    iput-object v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    .line 206
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLocked:Z

    .line 208
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 209
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 210
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->theMaster:Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;

    invoke-static {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->access$100(Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;)V

    .line 212
    :cond_2
    return-void

    .line 203
    .end local v2    # "needMoreSize":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 205
    .restart local v2    # "needMoreSize":Z
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    array-length v5, v5

    goto :goto_1
.end method

.method public addPulseReceiver(Lcom/sun/scenario/animation/shared/PulseReceiver;)V
    .locals 10

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, p1

    .local v1, "target":Lcom/sun/scenario/animation/shared/PulseReceiver;
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    array-length v4, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 170
    .local v2, "needMoreSize":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLocked:Z

    if-nez v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_1

    .line 171
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    move v5, v2

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    array-length v5, v5

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    :goto_1
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/scenario/animation/shared/PulseReceiver;

    iput-object v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 172
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLocked:Z

    .line 174
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 175
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 176
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->theMaster:Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;

    invoke-static {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->access$100(Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;)V

    .line 178
    :cond_2
    return-void

    .line 169
    .end local v2    # "needMoreSize":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 171
    .restart local v2    # "needMoreSize":Z
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    array-length v5, v5

    goto :goto_1
.end method

.method public getDefaultResolution()I
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->PULSE_DURATION_TICKS:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    return v0
.end method

.method protected abstract getPulseDuration(I)I
.end method

.method getStartPauseTime()J
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->startPauseTime:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    return-wide v0
.end method

.method getTotalPausedTime()J
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->totalPausedTime:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    return-wide v0
.end method

.method public isFullspeed()Z
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    sget-boolean v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->fullspeed:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    return v0
.end method

.method isPaused()Z
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->paused:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    return v0
.end method

.method public nanos()J
    .locals 6

    .prologue
    .line 139
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/AbstractMasterTimer;->fixedPulseLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 140
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/AbstractMasterTimer;->debugNanos:J

    move-wide v1, v2

    .line 144
    .end local v1    # "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    :goto_0
    return-wide v1

    .line 143
    .restart local v1    # "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    :cond_0
    move-object v2, v1

    iget-boolean v2, v2, Lcom/sun/scenario/animation/AbstractMasterTimer;->paused:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/AbstractMasterTimer;->startPauseTime:J

    .line 144
    :goto_1
    move-wide v1, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->totalPausedTime:J

    sub-long/2addr v2, v4

    goto :goto_1
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->paused:Z

    if-nez v1, :cond_0

    .line 126
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->startPauseTime:J

    .line 127
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->paused:Z

    .line 129
    :cond_0
    return-void
.end method

.method protected abstract postUpdateAnimationRunnable(Lcom/sun/scenario/DelayedRunnable;)V
.end method

.method protected recordAnimationEnd()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method protected recordEnd()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method protected recordStart(J)V
    .locals 0
    .param p1, "shiftMillis"    # J

    .prologue
    .line 241
    return-void
.end method

.method public removeAnimationTimer(Lcom/sun/scenario/animation/shared/TimerReceiver;)V
    .locals 10

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, p1

    .local v1, "timer":Lcom/sun/scenario/animation/shared/TimerReceiver;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLocked:Z

    if-eqz v3, :cond_0

    .line 216
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    invoke-virtual {v4}, [Lcom/sun/scenario/animation/shared/TimerReceiver;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/scenario/animation/shared/TimerReceiver;

    iput-object v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    .line 217
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLocked:Z

    .line 219
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    if-ge v3, v4, :cond_1

    .line 220
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    move v5, v2

    aget-object v4, v4, v5

    if-ne v3, v4, :cond_4

    .line 221
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    .line 222
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    move v4, v2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 227
    :goto_1
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    .line 228
    .line 231
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    if-nez v3, :cond_2

    .line 232
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->theMaster:Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;

    invoke-static {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->access$100(Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;)V

    .line 234
    :cond_2
    return-void

    .line 224
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    move v8, v2

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_1

    .line 219
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removePulseReceiver(Lcom/sun/scenario/animation/shared/PulseReceiver;)V
    .locals 10

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, p1

    .local v1, "target":Lcom/sun/scenario/animation/shared/PulseReceiver;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLocked:Z

    if-eqz v3, :cond_0

    .line 182
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    invoke-virtual {v4}, [Lcom/sun/scenario/animation/shared/PulseReceiver;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/scenario/animation/shared/PulseReceiver;

    iput-object v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 183
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLocked:Z

    .line 185
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    if-ge v3, v4, :cond_1

    .line 186
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    move v5, v2

    aget-object v4, v4, v5

    if-ne v3, v4, :cond_4

    .line 187
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    .line 188
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    move v4, v2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 193
    :goto_1
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    .line 194
    .line 197
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    if-nez v3, :cond_2

    .line 198
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->theMaster:Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;

    invoke-static {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;->access$100(Lcom/sun/scenario/animation/AbstractMasterTimer$MainLoop;)V

    .line 200
    :cond_2
    return-void

    .line 190
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    move v8, v2

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_1

    .line 185
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public resume()V
    .locals 9

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->paused:Z

    if-eqz v1, :cond_0

    .line 133
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->paused:Z

    .line 134
    move-object v1, v0

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    iget-wide v2, v2, Lcom/sun/scenario/animation/AbstractMasterTimer;->totalPausedTime:J

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/scenario/animation/AbstractMasterTimer;->startPauseTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sun/scenario/animation/AbstractMasterTimer;->totalPausedTime:J

    .line 136
    :cond_0
    return-void
.end method

.method protected timePulseImpl(J)V
    .locals 15

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-wide/from16 v1, p1

    .local v1, "now":J
    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->fixedPulseLength:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 336
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lcom/sun/scenario/animation/AbstractMasterTimer;->debugNanos:J

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/scenario/animation/AbstractMasterTimer;->fixedPulseLength:J

    add-long/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->debugNanos:J

    .line 337
    move-object v9, v0

    iget-wide v9, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->debugNanos:J

    move-wide v1, v9

    .line 339
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->receivers:[Lcom/sun/scenario/animation/shared/PulseReceiver;

    move-object v3, v9

    .line 340
    .local v3, "receiversSnapshot":[Lcom/sun/scenario/animation/shared/PulseReceiver;
    move-object v9, v0

    iget v9, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLength:I

    move v4, v9

    .line 342
    .local v4, "rLength":I
    move-object v9, v0

    const/4 v10, 0x1

    :try_start_0
    iput-boolean v10, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLocked:Z

    .line 343
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_0
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_1

    .line 344
    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-wide v10, v1

    invoke-static {v10, v11}, Lcom/sun/javafx/animation/TickCalculation;->fromNano(J)J

    move-result-wide v10

    invoke-interface {v9, v10, v11}, Lcom/sun/scenario/animation/shared/PulseReceiver;->timePulse(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 347
    :cond_1
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLocked:Z

    .line 348
    .line 349
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/scenario/animation/AbstractMasterTimer;->recordAnimationEnd()V

    .line 351
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimers:[Lcom/sun/scenario/animation/shared/TimerReceiver;

    move-object v5, v9

    .line 352
    .local v5, "animationTimersSnapshot":[Lcom/sun/scenario/animation/shared/TimerReceiver;
    move-object v9, v0

    iget v9, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLength:I

    move v6, v9

    .line 354
    .local v6, "aTLength":I
    move-object v9, v0

    const/4 v10, 0x1

    :try_start_1
    iput-boolean v10, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLocked:Z

    .line 356
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 357
    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-wide v10, v1

    invoke-interface {v9, v10, v11}, Lcom/sun/scenario/animation/shared/TimerReceiver;->handle(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 356
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 347
    .end local v5    # "animationTimersSnapshot":[Lcom/sun/scenario/animation/shared/TimerReceiver;
    .end local v6    # "aTLength":I
    .end local v7    # "i":I
    :catchall_0
    move-exception v9

    move-object v6, v9

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->receiversLocked:Z

    move-object v9, v6

    throw v9

    .line 360
    .restart local v5    # "animationTimersSnapshot":[Lcom/sun/scenario/animation/shared/TimerReceiver;
    .restart local v6    # "aTLength":I
    .restart local v7    # "i":I
    :cond_2
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLocked:Z

    .line 361
    .line 362
    return-void

    .line 360
    .end local v7    # "i":I
    :catchall_1
    move-exception v9

    move-object v8, v9

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/scenario/animation/AbstractMasterTimer;->animationTimersLocked:Z

    move-object v9, v8

    throw v9
.end method
