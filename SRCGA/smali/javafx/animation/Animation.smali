.class public abstract Ljavafx/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/animation/Animation$CurrentTimeProperty;,
        Ljavafx/animation/Animation$AnimationReadOnlyProperty;,
        Ljavafx/animation/Animation$CurrentRateProperty;,
        Ljavafx/animation/Animation$Status;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_REVERSE:Z = false

.field private static final DEFAULT_CURRENT_RATE:D = 0.0

.field private static final DEFAULT_CYCLE_COUNT:I = 0x1

.field private static final DEFAULT_CYCLE_DURATION:Ljavafx/util/Duration;

.field private static final DEFAULT_DELAY:Ljavafx/util/Duration;

.field private static final DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_RATE:D = 1.0

.field private static final DEFAULT_STATUS:Ljavafx/animation/Animation$Status;

.field private static final DEFAULT_TOTAL_DURATION:Ljavafx/util/Duration;

.field private static final EPSILON:D = 1.0E-12

.field public static final INDEFINITE:I = -0x1


# instance fields
.field private accessCtrlCtx:Ljava/security/AccessControlContext;

.field private autoReverse:Ljavafx/beans/property/BooleanProperty;

.field clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

.field private final cuePoints:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

.field private currentTicks:J

.field private currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

.field private cycleCount:Ljavafx/beans/property/IntegerProperty;

.field private cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private delay:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private lastPlayedFinished:Z

.field private lastPlayedForward:Z

.field private lastPulse:J

.field private oldRate:D

.field private onFinished:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field parent:Ljavafx/animation/Animation;

.field private pauseTime:J

.field private paused:Z

.field final pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

.field private rate:Ljavafx/beans/property/DoubleProperty;

.field private final resolution:I

.field private startTime:J

.field private status:Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/animation/Animation$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final targetFramerate:D

.field private final timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

.field private totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljavafx/animation/AnimationAccessorImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/AnimationAccessorImpl;-><init>()V

    sput-object v0, Ljavafx/animation/AnimationAccessorImpl;->DEFAULT:Lcom/sun/scenario/animation/shared/AnimationAccessor;

    .line 395
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    sput-object v0, Ljavafx/animation/Animation;->DEFAULT_CYCLE_DURATION:Ljavafx/util/Duration;

    .line 430
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    sput-object v0, Ljavafx/animation/Animation;->DEFAULT_TOTAL_DURATION:Ljavafx/util/Duration;

    .line 513
    sget-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    sput-object v0, Ljavafx/animation/Animation;->DEFAULT_DELAY:Ljavafx/util/Duration;

    .line 647
    sget-object v0, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    sput-object v0, Ljavafx/animation/Animation;->DEFAULT_STATUS:Ljavafx/animation/Animation$Status;

    .line 689
    const/4 v0, 0x0

    sput-object v0, Ljavafx/animation/Animation;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 133
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/animation/Animation;->paused:Z

    .line 138
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 175
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Animation$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/animation/Animation$1;-><init>(Ljavafx/animation/Animation;)V

    iput-object v2, v1, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 254
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 259
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 261
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 354
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Ljavafx/animation/Animation;->oldRate:D

    .line 708
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 709
    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v2

    iput-object v2, v1, Ljavafx/animation/Animation;->cuePoints:Ljavafx/collections/ObservableMap;

    .line 1028
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Ljavafx/animation/Animation;->resolution:I

    .line 1029
    move-object v1, v0

    const/16 v2, 0x1770

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/scenario/animation/AbstractMasterTimer;->getDefaultResolution()I

    move-result v3

    div-int/2addr v2, v3

    int-to-double v2, v2

    iput-wide v2, v1, Ljavafx/animation/Animation;->targetFramerate:D

    .line 1030
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v2

    iput-object v2, v1, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1031
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v2

    iput-object v2, v1, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    .line 1032
    return-void
.end method

.method protected constructor <init>(D)V
    .locals 11

    .prologue
    .line 1017
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-wide v1, p1

    .local v1, "targetFramerate":D
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 133
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/animation/Animation;->paused:Z

    .line 138
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 175
    move-object v3, v0

    new-instance v4, Ljavafx/animation/Animation$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/animation/Animation$1;-><init>(Ljavafx/animation/Animation;)V

    iput-object v4, v3, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 254
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 259
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 261
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 354
    move-object v3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Ljavafx/animation/Animation;->oldRate:D

    .line 708
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 709
    invoke-static {v4}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/Animation;->cuePoints:Ljavafx/collections/ObservableMap;

    .line 1018
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/Animation;->targetFramerate:D

    .line 1019
    move-object v3, v0

    const-wide/16 v4, 0x1

    const-wide v6, 0x40b7700000000000L    # 6000.0

    move-wide v8, v1

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Ljavafx/animation/Animation;->resolution:I

    .line 1020
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1021
    move-object v3, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    .line 1022
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V
    .locals 8

    .prologue
    .line 1035
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v2, p1

    .local v2, "timer":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 133
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/animation/Animation;->paused:Z

    .line 138
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 175
    move-object v3, v1

    new-instance v4, Ljavafx/animation/Animation$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavafx/animation/Animation$1;-><init>(Ljavafx/animation/Animation;)V

    iput-object v4, v3, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 254
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 259
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 261
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 354
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v3, Ljavafx/animation/Animation;->oldRate:D

    .line 708
    move-object v3, v1

    new-instance v4, Ljava/util/HashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 709
    invoke-static {v4}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/Animation;->cuePoints:Ljavafx/collections/ObservableMap;

    .line 1036
    move-object v3, v1

    const/4 v4, 0x1

    iput v4, v3, Ljavafx/animation/Animation;->resolution:I

    .line 1037
    move-object v3, v1

    const/16 v4, 0x1770

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/scenario/animation/AbstractMasterTimer;->getDefaultResolution()I

    move-result v5

    div-int/2addr v4, v5

    int-to-double v4, v4

    iput-wide v4, v3, Ljavafx/animation/Animation;->targetFramerate:D

    .line 1038
    move-object v3, v1

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->create(Ljavafx/animation/Animation;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1039
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    .line 1040
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractMasterTimer;Lcom/sun/scenario/animation/shared/ClipEnvelope;I)V
    .locals 10

    .prologue
    .line 1043
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v2, p1

    .local v2, "timer":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v3, p2

    .local v3, "clipEnvelope":Lcom/sun/scenario/animation/shared/ClipEnvelope;
    move v4, p3

    .local v4, "resolution":I
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 133
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/animation/Animation;->paused:Z

    .line 138
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 175
    move-object v5, v1

    new-instance v6, Ljavafx/animation/Animation$1;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/animation/Animation$1;-><init>(Ljavafx/animation/Animation;)V

    iput-object v6, v5, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    .line 254
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    .line 259
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 261
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 354
    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v5, Ljavafx/animation/Animation;->oldRate:D

    .line 708
    move-object v5, v1

    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 709
    invoke-static {v6}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v6

    iput-object v6, v5, Ljavafx/animation/Animation;->cuePoints:Ljavafx/collections/ObservableMap;

    .line 1044
    move-object v5, v1

    move v6, v4

    iput v6, v5, Ljavafx/animation/Animation;->resolution:I

    .line 1045
    move-object v5, v1

    const/16 v6, 0x1770

    move v7, v4

    div-int/2addr v6, v7

    int-to-double v6, v6

    iput-wide v6, v5, Ljavafx/animation/Animation;->targetFramerate:D

    .line 1046
    move-object v5, v1

    move-object v6, v3

    iput-object v6, v5, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1047
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    .line 1048
    return-void
.end method

.method static synthetic access$000(Ljavafx/animation/Animation;)J
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/animation/Animation;->startTime:J

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/animation/Animation;
    return-wide v0
.end method

.method static synthetic access$100(Ljavafx/animation/Animation;)Ljava/security/AccessControlContext;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/Animation;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/animation/Animation;)V
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/Animation;->updateTotalDuration()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/animation/Animation;)Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/Animation;->isRunningEmbedded()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/animation/Animation;
    return v0
.end method

.method static synthetic access$300(Ljavafx/animation/Animation;)D
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/animation/Animation;->oldRate:D

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/animation/Animation;
    return-wide v0
.end method

.method static synthetic access$302(Ljavafx/animation/Animation;D)D
    .locals 13

    .prologue
    .line 92
    move-object v1, p0

    .local v1, "x0":Ljavafx/animation/Animation;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Ljavafx/animation/Animation;->oldRate:D

    move-wide v1, v4

    .end local v1    # "x0":Ljavafx/animation/Animation;
    return-wide v1
.end method

.method static synthetic access$400(Ljavafx/animation/Animation;)Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/animation/Animation;->lastPlayedForward:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/animation/Animation;
    return v0
.end method

.method static synthetic access$402(Ljavafx/animation/Animation;Z)Z
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/animation/Animation;->lastPlayedForward:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/animation/Animation;
    return v0
.end method

.method static synthetic access$500(Ljavafx/animation/Animation;D)V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation;->setCurrentRate(D)V

    return-void
.end method

.method private addPulseReceiver()V
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v2

    iput-object v2, v1, Ljavafx/animation/Animation;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 148
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    invoke-virtual {v1, v2}, Lcom/sun/scenario/animation/AbstractMasterTimer;->addPulseReceiver(Lcom/sun/scenario/animation/shared/PulseReceiver;)V

    .line 149
    return-void
.end method

.method private isRunningEmbedded()Z
    .locals 3

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-nez v1, :cond_0

    .line 349
    const/4 v1, 0x0

    move v0, v1

    .line 351
    .end local v0    # "this":Ljavafx/animation/Animation;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/animation/Animation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    invoke-virtual {v1}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v1

    sget-object v2, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    invoke-direct {v1}, Ljavafx/animation/Animation;->isRunningEmbedded()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private now()J
    .locals 4

    .prologue
    .line 141
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    invoke-virtual {v2}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/animation/TickCalculation;->fromNano(J)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/Animation;
    return-wide v1
.end method

.method private setCurrentRate(D)V
    .locals 9

    .prologue
    .line 370
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 371
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/Animation;->currentRateProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v4

    check-cast v4, Ljavafx/animation/Animation$CurrentRateProperty;

    move-wide v5, v2

    invoke-static {v4, v5, v6}, Ljavafx/animation/Animation$CurrentRateProperty;->access$600(Ljavafx/animation/Animation$CurrentRateProperty;D)V

    .line 373
    :cond_1
    return-void
.end method

.method private syncClipEnvelope()V
    .locals 6

    .prologue
    .line 1062
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/Animation;->getCycleCount()I

    move-result v3

    move v1, v3

    .line 1063
    .local v1, "publicCycleCount":I
    move v3, v1

    if-gtz v3, :cond_0

    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 1065
    .local v2, "internalCycleCount":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setCycleCount(I)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v4

    iput-object v4, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1066
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/animation/Animation;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setCycleDuration(Ljavafx/util/Duration;)Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-result-object v3

    .line 1067
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/animation/Animation;->isAutoReverse()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->setAutoReverse(Z)V

    .line 1068
    return-void

    .line 1063
    .end local v2    # "internalCycleCount":I
    :cond_0
    move v3, v1

    goto :goto_0
.end method

.method private updateTotalDuration()V
    .locals 8

    .prologue
    .line 446
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getCycleCount()I

    move-result v5

    move v2, v5

    .line 447
    .local v2, "cycleCount":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v5

    move-object v3, v5

    .line 448
    .local v3, "cycleDuration":Ljavafx/util/Duration;
    sget-object v5, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    .line 451
    :goto_0
    move-object v4, v5

    .line 452
    .local v4, "newTotalDuration":Ljavafx/util/Duration;
    move-object v5, v1

    iget-object v5, v5, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v5, :cond_0

    sget-object v5, Ljavafx/animation/Animation;->DEFAULT_TOTAL_DURATION:Ljavafx/util/Duration;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 453
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/Animation;->totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v5

    check-cast v5, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    move-object v6, v4

    invoke-static {v5, v6}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->access$800(Ljavafx/animation/Animation$AnimationReadOnlyProperty;Ljava/lang/Object;)V

    .line 455
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v5

    sget-object v6, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v5, v6, :cond_2

    .line 456
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/animation/Animation;->syncClipEnvelope()V

    .line 457
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/Animation;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 458
    move-object v5, v1

    iget-object v5, v5, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-object v6, v4

    invoke-static {v6}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 461
    :cond_2
    return-void

    .line 448
    .end local v4    # "newTotalDuration":Ljavafx/util/Duration;
    :cond_3
    move v5, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    sget-object v5, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    goto :goto_0

    :cond_4
    move v5, v2

    const/4 v6, 0x1

    if-gt v5, v6, :cond_5

    move-object v5, v3

    goto :goto_0

    :cond_5
    move-object v5, v3

    move v6, v2

    int-to-double v6, v6

    .line 451
    invoke-virtual {v5, v6, v7}, Ljavafx/util/Duration;->multiply(D)Ljavafx/util/Duration;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public final autoReverseProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 635
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "autoReverse"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    .line 637
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0
.end method

.method public final currentRateProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 7

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    if-nez v1, :cond_0

    .line 381
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Animation$CurrentRateProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation$CurrentRateProperty;-><init>(Ljavafx/animation/Animation;Ljavafx/animation/Animation$1;)V

    iput-object v2, v1, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    .line 383
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0
.end method

.method public final currentTimeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

    if-nez v1, :cond_0

    .line 500
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Animation$CurrentTimeProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation$CurrentTimeProperty;-><init>(Ljavafx/animation/Animation;Ljavafx/animation/Animation$1;)V

    iput-object v2, v1, Ljavafx/animation/Animation;->currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

    .line 502
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0
.end method

.method public final cycleCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 584
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Animation$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation$4;-><init>(Ljavafx/animation/Animation;I)V

    iput-object v2, v1, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    .line 602
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0
.end method

.method public final cycleDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v1, :cond_0

    .line 413
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "cycleDuration"

    sget-object v6, Ljavafx/animation/Animation;->DEFAULT_CYCLE_DURATION:Ljavafx/util/Duration;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;-><init>(Ljavafx/animation/Animation;Ljava/lang/String;Ljava/lang/Object;Ljavafx/animation/Animation$1;)V

    iput-object v2, v1, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    .line 415
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0
.end method

.method public final delayProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 527
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Animation$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/animation/Animation;->DEFAULT_DELAY:Ljavafx/util/Duration;

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation$3;-><init>(Ljavafx/animation/Animation;Ljavafx/util/Duration;)V

    iput-object v2, v1, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    .line 553
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0
.end method

.method public final getCuePoints()Ljavafx/collections/ObservableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->cuePoints:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0
.end method

.method public final getCurrentRate()D
    .locals 4

    .prologue
    .line 376
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/Animation;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/Animation;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/Animation;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getCurrentTime()Ljavafx/util/Duration;
    .locals 4

    .prologue
    .line 495
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/animation/Animation;->currentTicks:J

    invoke-static {v2, v3}, Lcom/sun/javafx/animation/TickCalculation;->toDuration(J)Ljavafx/util/Duration;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljavafx/animation/Animation;
    return-object v1
.end method

.method public final getCycleCount()I
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return v0

    .restart local v0    # "this":Ljavafx/animation/Animation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getCycleDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/Animation;->DEFAULT_CYCLE_DURATION:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/Animation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getDelay()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/Animation;->DEFAULT_DELAY:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/Animation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getOnFinished()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/Animation;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/Animation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getRate()D
    .locals 4

    .prologue
    .line 292
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/animation/Animation;
    return-wide v1

    .restart local v1    # "this":Ljavafx/animation/Animation;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getStatus()Ljavafx/animation/Animation$Status;
    .locals 2

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/Animation;->DEFAULT_STATUS:Ljavafx/animation/Animation$Status;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/Animation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/animation/Animation$Status;

    goto :goto_0
.end method

.method public final getTargetFramerate()D
    .locals 3

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/animation/Animation;->targetFramerate:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-wide v0
.end method

.method public final getTotalDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/animation/Animation;->DEFAULT_TOTAL_DURATION:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0

    .restart local v0    # "this":Ljavafx/animation/Animation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method final impl_finished()V
    .locals 9

    .prologue
    .line 1127
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 1128
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/Animation;->impl_stop()V

    .line 1129
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v3

    move-object v1, v3

    .line 1130
    .local v1, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 1132
    move-object v3, v1

    :try_start_0
    new-instance v4, Ljavafx/event/ActionEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v3, v4}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1133
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1134
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method abstract impl_jumpTo(JJZ)V
.end method

.method impl_pause()V
    .locals 8

    .prologue
    .line 1079
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/Animation;->getCurrentRate()D

    move-result-wide v3

    move-wide v1, v3

    .line 1080
    .local v1, "currentRate":D
    move-wide v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 1081
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/animation/Animation;->getCurrentRate()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Ljavafx/animation/Animation;->lastPlayedForward:Z

    .line 1083
    :cond_0
    move-object v3, v0

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation;->setCurrentRate(D)V

    .line 1084
    move-object v3, v0

    sget-object v4, Ljavafx/animation/Animation$Status;->PAUSED:Ljavafx/animation/Animation$Status;

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->setStatus(Ljavafx/animation/Animation$Status;)V

    .line 1085
    return-void

    .line 1081
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method abstract impl_playTo(JJ)V
.end method

.method impl_resume()V
    .locals 4

    .prologue
    .line 1088
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    sget-object v2, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    invoke-virtual {v1, v2}, Ljavafx/animation/Animation;->setStatus(Ljavafx/animation/Animation$Status;)V

    .line 1089
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/animation/Animation;->lastPlayedForward:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v2

    :goto_0
    invoke-direct {v1, v2, v3}, Ljavafx/animation/Animation;->setCurrentRate(D)V

    .line 1090
    return-void

    .line 1089
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v2

    neg-double v2, v2

    goto :goto_0
.end method

.method impl_setCurrentRate(D)V
    .locals 7

    .prologue
    .line 1122
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-wide v1, p1

    .local v1, "currentRate":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation;->setCurrentRate(D)V

    .line 1124
    return-void
.end method

.method impl_setCurrentTicks(J)V
    .locals 7

    .prologue
    .line 1114
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-wide v1, p1

    .local v1, "ticks":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/Animation;->currentTicks:J

    .line 1115
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/Animation;->currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

    if-eqz v3, :cond_0

    .line 1116
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/Animation;->currentTime:Ljavafx/animation/Animation$CurrentTimeProperty;

    invoke-virtual {v3}, Ljavafx/animation/Animation$CurrentTimeProperty;->fireValueChangedEvent()V

    .line 1118
    :cond_0
    return-void
.end method

.method impl_start(Z)V
    .locals 6

    .prologue
    .line 1071
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move v2, p1

    .local v2, "forceSync":Z
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->impl_sync(Z)V

    .line 1072
    move-object v3, v1

    sget-object v4, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->setStatus(Ljavafx/animation/Animation$Status;)V

    .line 1073
    move-object v3, v1

    iget-object v3, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v3}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->start()V

    .line 1074
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v4}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->getCurrentRate()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljavafx/animation/Animation;->setCurrentRate(D)V

    .line 1075
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Ljavafx/animation/Animation;->lastPulse:J

    .line 1076
    return-void
.end method

.method impl_startable(Z)Z
    .locals 6

    .prologue
    .line 1051
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move v1, p1

    .local v1, "forceSync":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    .line 1052
    invoke-virtual {v2}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->wasSynched()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/animation/Animation;
    return v0

    .restart local v0    # "this":Ljavafx/animation/Animation;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method impl_stop()V
    .locals 4

    .prologue
    .line 1093
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/animation/Animation;->paused:Z

    if-nez v1, :cond_0

    .line 1094
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    invoke-virtual {v1, v2}, Lcom/sun/scenario/animation/AbstractMasterTimer;->removePulseReceiver(Lcom/sun/scenario/animation/shared/PulseReceiver;)V

    .line 1096
    :cond_0
    move-object v1, v0

    sget-object v2, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    invoke-virtual {v1, v2}, Ljavafx/animation/Animation;->setStatus(Ljavafx/animation/Animation$Status;)V

    .line 1097
    move-object v1, v0

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/animation/Animation;->setCurrentRate(D)V

    .line 1098
    return-void
.end method

.method impl_sync(Z)V
    .locals 3

    .prologue
    .line 1056
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move v1, p1

    .local v1, "forceSync":Z
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v2}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->wasSynched()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1057
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/animation/Animation;->syncClipEnvelope()V

    .line 1059
    :cond_1
    return-void
.end method

.method impl_timePulse(J)V
    .locals 9

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-wide v1, p1

    .local v1, "elapsedTime":J
    move-object v3, v0

    iget v3, v3, Ljavafx/animation/Animation;->resolution:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1102
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->timePulse(J)V

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    move-wide v3, v1

    move-object v5, v0

    iget-wide v5, v5, Ljavafx/animation/Animation;->lastPulse:J

    sub-long/2addr v3, v5

    move-object v5, v0

    iget v5, v5, Ljavafx/animation/Animation;->resolution:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 1104
    move-object v3, v0

    move-wide v4, v1

    move-object v6, v0

    iget v6, v6, Ljavafx/animation/Animation;->resolution:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    move-object v6, v0

    iget v6, v6, Ljavafx/animation/Animation;->resolution:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iput-wide v4, v3, Ljavafx/animation/Animation;->lastPulse:J

    .line 1105
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->timePulse(J)V

    goto :goto_0
.end method

.method public final isAutoReverse()Z
    .locals 2

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return v0

    .restart local v0    # "this":Ljavafx/animation/Animation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public jumpTo(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "cuePoint":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 800
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "CuePoint needs to be specified"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 802
    :cond_0
    const-string v3, "start"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 803
    move-object v3, v0

    sget-object v4, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    .line 812
    :cond_1
    :goto_0
    return-void

    .line 804
    :cond_2
    const-string v3, "end"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 805
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    goto :goto_0

    .line 807
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/Animation;->getCuePoints()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/util/Duration;

    move-object v2, v3

    .line 808
    .local v2, "target":Ljavafx/util/Duration;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 809
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    goto :goto_0
.end method

.method public jumpTo(Ljavafx/util/Duration;)V
    .locals 10

    .prologue
    .line 750
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v2, p1

    .local v2, "time":Ljavafx/util/Duration;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 751
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Time needs to be specified."

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 753
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 754
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "The time is invalid"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 756
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v6, :cond_2

    .line 757
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Cannot jump when embedded in another animation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 760
    :cond_2
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    .line 762
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v6

    move-object v3, v6

    .line 763
    .local v3, "totalDuration":Ljavafx/util/Duration;
    move-object v6, v2

    sget-object v7, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v6, v7}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    .line 764
    :goto_0
    move-object v2, v6

    .line 765
    move-object v6, v2

    invoke-static {v6}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v6

    move-wide v4, v6

    .line 767
    .local v4, "ticks":J
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v6

    sget-object v7, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-ne v6, v7, :cond_3

    .line 768
    move-object v6, v1

    invoke-direct {v6}, Ljavafx/animation/Animation;->syncClipEnvelope()V

    .line 770
    :cond_3
    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->jumpTo(J)V

    .line 771
    return-void

    .line 763
    .end local v4    # "ticks":J
    :cond_4
    move-object v6, v2

    move-object v7, v3

    .line 764
    invoke-virtual {v6, v7}, Ljavafx/util/Duration;->greaterThan(Ljavafx/util/Duration;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v3

    goto :goto_0

    :cond_5
    move-object v6, v2

    goto :goto_0
.end method

.method public final onFinishedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 703
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "onFinished"

    sget-object v6, Ljavafx/animation/Animation;->DEFAULT_ON_FINISHED:Ljavafx/event/EventHandler;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    .line 705
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v1, :cond_0

    .line 999
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Cannot pause when embedded in another animation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1001
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v1

    sget-object v2, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v1, v2, :cond_1

    .line 1002
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v1}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->abortCurrentPulse()V

    .line 1003
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation;->pauseReceiver()V

    .line 1004
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation;->impl_pause()V

    .line 1006
    :cond_1
    return-void
.end method

.method pauseReceiver()V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/animation/Animation;->paused:Z

    if-nez v1, :cond_0

    .line 159
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/animation/Animation;->now()J

    move-result-wide v2

    iput-wide v2, v1, Ljavafx/animation/Animation;->pauseTime:J

    .line 160
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/animation/Animation;->paused:Z

    .line 161
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->pulseReceiver:Lcom/sun/scenario/animation/shared/PulseReceiver;

    invoke-virtual {v1, v2}, Lcom/sun/scenario/animation/AbstractMasterTimer;->removePulseReceiver(Lcom/sun/scenario/animation/shared/PulseReceiver;)V

    .line 163
    :cond_0
    return-void
.end method

.method public play()V
    .locals 10

    .prologue
    .line 902
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v4, :cond_0

    .line 903
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Cannot start when embedded in another animation"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 905
    :cond_0
    sget-object v4, Ljavafx/animation/Animation$5;->$SwitchMap$javafx$animation$Animation$Status:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/animation/Animation$Status;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 933
    :cond_1
    :goto_0
    return-void

    .line 907
    :pswitch_0
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/animation/Animation;->impl_startable(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 908
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v4

    move-wide v2, v4

    .line 909
    .local v2, "rate":D
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/animation/Animation;->lastPlayedFinished:Z

    if-eqz v4, :cond_2

    .line 910
    move-object v4, v1

    move-wide v5, v2

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getTotalDuration()Ljavafx/util/Duration;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    .line 912
    :cond_2
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/animation/Animation;->impl_start(Z)V

    .line 913
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/animation/Animation;->getDelay()Ljavafx/util/Duration;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/animation/Animation;->startReceiver(J)V

    .line 914
    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 915
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/Animation;->pauseReceiver()V

    .line 919
    :cond_3
    goto :goto_0

    .line 910
    :cond_4
    sget-object v5, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    goto :goto_1

    .line 920
    .end local v2    # "rate":D
    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/Animation;->getOnFinished()Ljavafx/event/EventHandler;

    move-result-object v4

    move-object v2, v4

    .line 921
    .local v2, "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v4, v2

    if-eqz v4, :cond_6

    .line 922
    move-object v4, v2

    new-instance v5, Ljavafx/event/ActionEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    invoke-interface {v4, v5}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 925
    :cond_6
    goto :goto_0

    .line 927
    .end local v2    # "handler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    :pswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/Animation;->impl_resume()V

    .line 928
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 929
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/Animation;->resumeReceiver()V

    goto :goto_0

    .line 905
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playFrom(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 839
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "cuePoint":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/Animation;->jumpTo(Ljava/lang/String;)V

    .line 840
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->play()V

    .line 841
    return-void
.end method

.method public playFrom(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "time":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    .line 869
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->play()V

    .line 870
    return-void
.end method

.method public playFromStart()V
    .locals 4

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation;->stop()V

    .line 959
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->getRate()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/animation/Animation;->setRate(D)V

    .line 960
    move-object v1, v0

    sget-object v2, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v1, v2}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    .line 961
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation;->play()V

    .line 962
    return-void
.end method

.method public final rateProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 296
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 297
    move-object v2, v1

    new-instance v3, Ljavafx/animation/Animation$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/animation/Animation$2;-><init>(Ljavafx/animation/Animation;D)V

    iput-object v3, v2, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    .line 344
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/animation/Animation;
    return-object v1
.end method

.method resumeReceiver()V
    .locals 10

    .prologue
    .line 166
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/animation/Animation;->paused:Z

    if-eqz v4, :cond_0

    .line 167
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/animation/Animation;->now()J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/Animation;->pauseTime:J

    sub-long/2addr v4, v6

    move-wide v2, v4

    .line 168
    .local v2, "deltaTime":J
    move-object v4, v1

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget-wide v5, v5, Ljavafx/animation/Animation;->startTime:J

    move-wide v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v4, Ljavafx/animation/Animation;->startTime:J

    .line 169
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/animation/Animation;->paused:Z

    .line 170
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/animation/Animation;->addPulseReceiver()V

    .line 172
    .end local v2    # "deltaTime":J
    :cond_0
    return-void
.end method

.method public final setAutoReverse(Z)V
    .locals 4

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->autoReverse:Ljavafx/beans/property/BooleanProperty;

    if-nez v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_1

    .line 625
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->autoReverseProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 627
    :cond_1
    return-void
.end method

.method public final setCycleCount(I)V
    .locals 4

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v2, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 574
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->cycleCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 576
    :cond_1
    return-void
.end method

.method protected final setCycleDuration(Ljavafx/util/Duration;)V
    .locals 6

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/Animation;->DEFAULT_CYCLE_DURATION:Ljavafx/util/Duration;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 399
    :cond_0
    move-object v2, v1

    sget-object v3, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cycle duration cannot be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->cycleDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->access$800(Ljavafx/animation/Animation$AnimationReadOnlyProperty;Ljava/lang/Object;)V

    .line 403
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/animation/Animation;->updateTotalDuration()V

    .line 405
    :cond_2
    return-void
.end method

.method public final setDelay(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->delay:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/Animation;->DEFAULT_DELAY:Ljavafx/util/Duration;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 517
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->delayProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 519
    :cond_1
    return-void
.end method

.method public final setOnFinished(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->onFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 693
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->onFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 695
    :cond_1
    return-void
.end method

.method public final setRate(D)V
    .locals 9

    .prologue
    .line 286
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Animation;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/animation/Animation;->rate:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3d719799812dea11L    # 1.0E-12

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 287
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/animation/Animation;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 289
    :cond_1
    return-void
.end method

.method protected final setStatus(Ljavafx/animation/Animation$Status;)V
    .locals 4

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, p1

    .local v1, "value":Ljavafx/animation/Animation$Status;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/animation/Animation;->DEFAULT_STATUS:Ljavafx/animation/Animation$Status;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/Animation$Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 651
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation;->statusProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->access$800(Ljavafx/animation/Animation$AnimationReadOnlyProperty;Ljava/lang/Object;)V

    .line 653
    :cond_1
    return-void
.end method

.method startReceiver(J)V
    .locals 9

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-wide v1, p1

    .local v1, "delay":J
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/animation/Animation;->paused:Z

    .line 153
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/animation/Animation;->now()J

    move-result-wide v4

    move-wide v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v3, Ljavafx/animation/Animation;->startTime:J

    .line 154
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/animation/Animation;->addPulseReceiver()V

    .line 155
    return-void
.end method

.method public final statusProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/animation/Animation$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v1, :cond_0

    .line 661
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "status"

    sget-object v6, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;-><init>(Ljavafx/animation/Animation;Ljava/lang/String;Ljava/lang/Object;Ljavafx/animation/Animation$1;)V

    iput-object v2, v1, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    .line 663
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->status:Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 976
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->parent:Ljavafx/animation/Animation;

    if-eqz v1, :cond_0

    .line 977
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Cannot stop when embedded in another animation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 979
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v1

    sget-object v2, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v1, v2, :cond_1

    .line 980
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->clipEnvelope:Lcom/sun/scenario/animation/shared/ClipEnvelope;

    invoke-virtual {v1}, Lcom/sun/scenario/animation/shared/ClipEnvelope;->abortCurrentPulse()V

    .line 981
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/Animation;->impl_stop()V

    .line 982
    move-object v1, v0

    sget-object v2, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v1, v2}, Ljavafx/animation/Animation;->jumpTo(Ljavafx/util/Duration;)V

    .line 984
    :cond_1
    return-void
.end method

.method public final totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    if-nez v1, :cond_0

    .line 438
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Animation$AnimationReadOnlyProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "totalDuration"

    sget-object v6, Ljavafx/animation/Animation;->DEFAULT_TOTAL_DURATION:Ljavafx/util/Duration;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;-><init>(Ljavafx/animation/Animation;Ljava/lang/String;Ljava/lang/Object;Ljavafx/animation/Animation$1;)V

    iput-object v2, v1, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    .line 440
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation;
    return-object v0
.end method
