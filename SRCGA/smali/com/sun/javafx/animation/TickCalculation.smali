.class public Lcom/sun/javafx/animation/TickCalculation;
.super Ljava/lang/Object;
.source "TickCalculation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TICKS_PER_MILI:D = 6.0

.field private static final TICKS_PER_NANO:D = 6.0E-6

.field public static final TICKS_PER_SECOND:I = 0x1770


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sun/javafx/animation/TickCalculation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/animation/TickCalculation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/animation/TickCalculation;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(JJ)J
    .locals 14

    .prologue
    .line 38
    move-wide v0, p0

    .local v0, "op1":J
    move-wide/from16 v2, p2

    .local v2, "op2":J
    sget-boolean v6, Lcom/sun/javafx/animation/TickCalculation;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 40
    :cond_0
    move-wide v6, v0

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move-wide v6, v2

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 41
    :cond_1
    const-wide v6, 0x7fffffffffffffffL

    move-wide v0, v6

    .line 50
    .end local v0    # "op1":J
    :goto_0
    return-wide v0

    .line 42
    .restart local v0    # "op1":J
    :cond_2
    move-wide v6, v2

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 43
    const-wide/16 v6, 0x0

    move-wide v0, v6

    goto :goto_0

    .line 46
    :cond_3
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    .line 47
    move-wide v6, v0

    move-wide v8, v2

    add-long/2addr v6, v8

    move-wide v4, v6

    .line 48
    .local v4, "result":J
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    const-wide v6, 0x7fffffffffffffffL

    :goto_1
    move-wide v0, v6

    goto :goto_0

    :cond_4
    move-wide v6, v4

    goto :goto_1

    .line 50
    .end local v4    # "result":J
    :cond_5
    const-wide/16 v6, 0x0

    move-wide v8, v0

    move-wide v10, v2

    add-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v0, v6

    goto :goto_0
.end method

.method public static fromDuration(Ljavafx/util/Duration;)J
    .locals 4

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "duration":Ljavafx/util/Duration;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/animation/TickCalculation;->fromMillis(D)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "duration":Ljavafx/util/Duration;
    return-wide v1
.end method

.method public static fromDuration(Ljavafx/util/Duration;D)J
    .locals 9

    .prologue
    .line 86
    move-object v1, p0

    .local v1, "duration":Ljavafx/util/Duration;
    move-wide v2, p1

    .local v2, "rate":D
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v6

    mul-double/2addr v4, v6

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "duration":Ljavafx/util/Duration;
    return-wide v1
.end method

.method public static fromMillis(D)J
    .locals 6

    .prologue
    .line 74
    move-wide v0, p0

    .local v0, "millis":D
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    move-wide v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "millis":D
    return-wide v0
.end method

.method public static fromNano(J)J
    .locals 6

    .prologue
    .line 78
    move-wide v0, p0

    .local v0, "nano":J
    const-wide v2, 0x3ed92a737110e454L    # 6.0E-6

    move-wide v4, v0

    long-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "nano":J
    return-wide v0
.end method

.method public static sub(JJ)J
    .locals 14

    .prologue
    .line 56
    move-wide v0, p0

    .local v0, "op1":J
    move-wide/from16 v2, p2

    .local v2, "op2":J
    sget-boolean v6, Lcom/sun/javafx/animation/TickCalculation;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 58
    :cond_0
    move-wide v6, v0

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move-wide v6, v2

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 59
    :cond_1
    const-wide v6, 0x7fffffffffffffffL

    move-wide v0, v6

    .line 68
    .end local v0    # "op1":J
    :goto_0
    return-wide v0

    .line 60
    .restart local v0    # "op1":J
    :cond_2
    move-wide v6, v2

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 61
    const-wide/16 v6, 0x0

    move-wide v0, v6

    goto :goto_0

    .line 64
    :cond_3
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 65
    const-wide/16 v6, 0x0

    move-wide v8, v0

    move-wide v10, v2

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v0, v6

    goto :goto_0

    .line 67
    :cond_4
    move-wide v6, v0

    move-wide v8, v2

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 68
    .local v4, "result":J
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    const-wide v6, 0x7fffffffffffffffL

    :goto_1
    move-wide v0, v6

    goto :goto_0

    :cond_5
    move-wide v6, v4

    goto :goto_1
.end method

.method public static toDuration(J)Ljavafx/util/Duration;
    .locals 4

    .prologue
    .line 90
    move-wide v0, p0

    .local v0, "ticks":J
    move-wide v2, v0

    invoke-static {v2, v3}, Lcom/sun/javafx/animation/TickCalculation;->toMillis(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "ticks":J
    return-object v0
.end method

.method public static toMillis(J)D
    .locals 6

    .prologue
    .line 94
    move-wide v0, p0

    .local v0, "ticks":J
    move-wide v2, v0

    long-to-double v2, v2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "ticks":J
    return-wide v0
.end method
