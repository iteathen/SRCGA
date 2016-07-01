.class final enum Ljava/time/temporal/IsoFields$Unit;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/IsoFields$Unit;",
        ">;",
        "Ljava/time/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/IsoFields$Unit;

.field public static final enum QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

.field public static final enum WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;


# instance fields
.field private final duration:Ljava/time/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 565
    new-instance v1, Ljava/time/temporal/IsoFields$Unit;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string v3, "WEEK_BASED_YEARS"

    const/4 v4, 0x0

    const-string v5, "WeekBasedYears"

    const-wide/32 v6, 0x1e18558

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    .line 566
    new-instance v1, Ljava/time/temporal/IsoFields$Unit;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string v3, "QUARTER_YEARS"

    const/4 v4, 0x1

    const-string v5, "QuarterYears"

    const-wide/32 v6, 0x786156

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    .line 564
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/time/temporal/IsoFields$Unit;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x0

    sget-object v4, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    aput-object v4, v2, v3

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const/4 v3, 0x1

    sget-object v4, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    aput-object v4, v2, v3

    sput-object v1, Ljava/time/temporal/IsoFields$Unit;->$VALUES:[Ljava/time/temporal/IsoFields$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Unit;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, p4

    .local v4, "estimatedDuration":Ljava/time/Duration;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 572
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/time/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    .line 573
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/time/temporal/IsoFields$Unit;->duration:Ljava/time/Duration;

    .line 574
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/IsoFields$Unit;
    .locals 3

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/temporal/IsoFields$Unit;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/IsoFields$Unit;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/temporal/IsoFields$Unit;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->$VALUES:[Ljava/time/temporal/IsoFields$Unit;

    invoke-virtual {v0}, [Ljava/time/temporal/IsoFields$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/IsoFields$Unit;

    return-object v0
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 604
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/IsoFields$Unit;
    move-object v2, p1

    .local v2, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    move-wide/from16 v3, p2

    .local v3, "periodToAdd":J
    sget-object v7, Ljava/time/temporal/IsoFields$1;->$SwitchMap$java$time$temporal$IsoFields$Unit:[I

    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 612
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Unreachable"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 606
    :pswitch_0
    move-object v7, v2

    sget-object v8, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v7, v8}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v7

    int-to-long v7, v7

    move-wide v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v7

    move-wide v5, v7

    .line 607
    .local v5, "added":J
    move-object v7, v2

    sget-object v8, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    move-wide v9, v5

    invoke-interface {v7, v8, v9, v10}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v7

    move-object v1, v7

    .line 610
    .end local v1    # "this":Ljava/time/temporal/IsoFields$Unit;
    .end local v5    # "added":J
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljava/time/temporal/IsoFields$Unit;
    :pswitch_1
    move-object v7, v2

    move-wide v8, v3

    const-wide/16 v10, 0x100

    div-long/2addr v8, v10

    sget-object v10, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v7

    move-wide v8, v3

    const-wide/16 v10, 0x100

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x3

    mul-long/2addr v8, v10

    sget-object v10, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J
    .locals 9

    .prologue
    .line 618
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/IsoFields$Unit;
    move-object v2, p1

    .local v2, "temporal1":Ljava/time/temporal/Temporal;
    move-object v3, p2

    .local v3, "temporal2":Ljava/time/temporal/Temporal;
    sget-object v4, Ljava/time/temporal/IsoFields$1;->$SwitchMap$java$time$temporal$IsoFields$Unit:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 624
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Unreachable"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 620
    :pswitch_0
    move-object v4, v3

    sget-object v5, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v4, v5}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-object v6, v2

    sget-object v7, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v6, v7}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v4

    move-wide v1, v4

    .line 622
    .end local v1    # "this":Ljava/time/temporal/IsoFields$Unit;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljava/time/temporal/IsoFields$Unit;
    :pswitch_1
    move-object v4, v2

    move-object v5, v3

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v4, v5, v6}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    div-long/2addr v4, v6

    move-wide v1, v4

    goto :goto_0

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDuration()Ljava/time/Duration;
    .locals 2

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Unit;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/IsoFields$Unit;->duration:Ljava/time/Duration;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Unit;
    return-object v0
.end method

.method public isDateBased()Z
    .locals 2

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Unit;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Unit;
    return v0
.end method

.method public isDurationEstimated()Z
    .locals 2

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Unit;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Unit;
    return v0
.end method

.method public isSupportedBy(Ljava/time/temporal/Temporal;)Z
    .locals 4

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Unit;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/Temporal;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Unit;
    return v0
.end method

.method public isTimeBased()Z
    .locals 2

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Unit;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Unit;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Unit;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Unit;
    return-object v0
.end method
