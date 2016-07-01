.class Lcom/sun/scenario/animation/AnimationPulse$PulseData;
.super Ljava/lang/Object;
.source "AnimationPulse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/animation/AnimationPulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PulseData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;
    }
.end annotation


# static fields
.field static final AnimationDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

.field static final PaintingDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

.field static final PaintingFinalizationDuration:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

.field static final PaintingPreparationDuration:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

.field static final PulseDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

.field static final PulseEndAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

.field static final PulseStartAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

.field static final ScenePaintingDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;


# instance fields
.field private animationEndNanos:J

.field private endNanos:J

.field private paintingEndNanos:J

.field private paintingStartNanos:J

.field private scenePaintingEndNanos:J

.field private scenePaintingStartNanos:J

.field private final scheduledNanos:J

.field private final startNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$$Lambda$1;->lambdaFactory$()Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    move-result-object v0

    sput-object v0, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseStartAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    .line 124
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$$Lambda$2;->lambdaFactory$()Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    move-result-object v0

    sput-object v0, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->AnimationDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    .line 126
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$$Lambda$3;->lambdaFactory$()Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    move-result-object v0

    sput-object v0, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PaintingDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    .line 128
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$$Lambda$4;->lambdaFactory$()Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    move-result-object v0

    sput-object v0, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->ScenePaintingDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    .line 130
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$$Lambda$5;->lambdaFactory$()Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    move-result-object v0

    sput-object v0, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseDurationAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    .line 132
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$$Lambda$6;->lambdaFactory$()Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    move-result-object v0

    sput-object v0, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PulseEndAccessor:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    .line 134
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$$Lambda$7;->lambdaFactory$()Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    move-result-object v0

    sput-object v0, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PaintingPreparationDuration:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    .line 136
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse$PulseData$$Lambda$8;->lambdaFactory$()Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    move-result-object v0

    sput-object v0, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->PaintingFinalizationDuration:Lcom/sun/scenario/animation/AnimationPulse$PulseData$Accessor;

    return-void
.end method

.method constructor <init>(J)V
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-wide v1, p1

    .local v1, "shiftNanos":J
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v3, v0

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->animationEndNanos:J

    .line 50
    move-object v3, v0

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->paintingStartNanos:J

    .line 51
    move-object v3, v0

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->paintingEndNanos:J

    .line 52
    move-object v3, v0

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scenePaintingStartNanos:J

    .line 53
    move-object v3, v0

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scenePaintingEndNanos:J

    .line 54
    move-object v3, v0

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->endNanos:J

    .line 57
    move-object v3, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->startNanos:J

    .line 58
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->startNanos:J

    move-wide v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scheduledNanos:J

    .line 59
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->lambda$static$457(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->lambda$static$458(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->lambda$static$459(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->lambda$static$460(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->lambda$static$461(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method static synthetic access$lambda$5(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->lambda$static$462(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method static synthetic access$lambda$6(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->lambda$static$463(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method static synthetic access$lambda$7(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->lambda$static$464(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method private static synthetic lambda$static$457(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPulseStart(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0
.end method

.method private static synthetic lambda$static$458(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getAnimationDuration(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0
.end method

.method private static synthetic lambda$static$459(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPaintingDuration(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0
.end method

.method private static synthetic lambda$static$460(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getScenePaintingDuration(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0
.end method

.method private static synthetic lambda$static$461(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPulseDuration(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0
.end method

.method private static synthetic lambda$static$462(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPulseEnd(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0
.end method

.method private static synthetic lambda$static$463(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPaintingDuration(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0
.end method

.method private static synthetic lambda$static$464(Lcom/sun/scenario/animation/AnimationPulse$PulseData;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPaintingFinalizationDuration(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "pulseData1":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0
.end method


# virtual methods
.method getAnimationDuration(Ljava/util/concurrent/TimeUnit;)J
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->animationEndNanos:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->animationEndNanos:J

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->startNanos:J

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 72
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0

    .restart local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPaintingDuration(Ljava/util/concurrent/TimeUnit;)J
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->paintingEndNanos:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->paintingStartNanos:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->paintingEndNanos:J

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->paintingStartNanos:J

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0

    .restart local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPaintingFinalizationDuration(Ljava/util/concurrent/TimeUnit;)J
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scenePaintingEndNanos:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->paintingEndNanos:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->paintingEndNanos:J

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scenePaintingEndNanos:J

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 90
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0

    .restart local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPulseDuration(Ljava/util/concurrent/TimeUnit;)J
    .locals 8

    .prologue
    .line 99
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v2, p1

    .local v2, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->endNanos:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->startNanos:J

    sub-long/2addr v4, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    move-wide v1, v3

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v1
.end method

.method getPulseEnd(Ljava/util/concurrent/TimeUnit;)J
    .locals 8

    .prologue
    .line 104
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v2, p1

    .local v2, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->endNanos:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scheduledNanos:J

    sub-long/2addr v4, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    move-wide v1, v3

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v1
.end method

.method getPulseStart(Ljava/util/concurrent/TimeUnit;)J
    .locals 8

    .prologue
    .line 63
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v2, p1

    .local v2, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->startNanos:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scheduledNanos:J

    sub-long/2addr v4, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    move-wide v1, v3

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v1
.end method

.method getPulseStartFromNow(Ljava/util/concurrent/TimeUnit;)J
    .locals 8

    .prologue
    .line 109
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v2, p1

    .local v2, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->startNanos:J

    sub-long/2addr v4, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    move-wide v1, v3

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v1
.end method

.method getScenePaintingDuration(Ljava/util/concurrent/TimeUnit;)J
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, p1

    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scenePaintingEndNanos:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scenePaintingStartNanos:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scenePaintingEndNanos:J

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->scenePaintingStartNanos:J

    sub-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 84
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v0

    .restart local v0    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getSkippedPulses()J
    .locals 6

    .prologue
    .line 114
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v2, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->getPulseEnd(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 115
    invoke-static {}, Lcom/sun/scenario/animation/AnimationPulse;->getDefaultBean()Lcom/sun/scenario/animation/AnimationPulse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/animation/AnimationPulse;->getPULSE_DURATION()J

    move-result-wide v4

    div-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    return-wide v1
.end method

.method recordAnimationEnd()V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->animationEndNanos:J

    .line 68
    return-void
.end method

.method recordEnd()V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/AnimationPulse$PulseData;
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/scenario/animation/AbstractMasterTimer;->nanos()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/scenario/animation/AnimationPulse$PulseData;->endNanos:J

    .line 96
    return-void
.end method
