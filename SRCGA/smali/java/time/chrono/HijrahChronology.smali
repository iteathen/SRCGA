.class public final Ljava/time/chrono/HijrahChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "HijrahChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_NARROW_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_SHORT_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Ljava/time/chrono/HijrahChronology;

.field private static final serialVersionUID:J = 0x2b668b59cb61d531L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 176
    new-instance v0, Ljava/time/chrono/HijrahChronology;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/time/chrono/HijrahChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/HijrahChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/HijrahChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/HijrahChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    .line 207
    sget-object v0, Ljava/time/chrono/HijrahChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    const-string v1, "en"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "BH"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "HE"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    sget-object v0, Ljava/time/chrono/HijrahChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    const-string v1, "en"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "B.H."

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "H.E."

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    sget-object v0, Ljava/time/chrono/HijrahChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    const-string v1, "en"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "Before Hijrah"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "Hijrah Era"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 216
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    sget-object v1, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic date(III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/chrono/Era;III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 10

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/HijrahDate;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public date(III)Ljava/time/chrono/HijrahDate;
    .locals 7

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move v1, p1

    .local v1, "prolepticYear":I
    move v2, p2

    .local v2, "month":I
    move v3, p3

    .local v3, "dayOfMonth":I
    move v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Ljava/time/chrono/HijrahDate;->of(III)Ljava/time/chrono/HijrahDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public date(Ljava/time/chrono/Era;III)Ljava/time/chrono/HijrahDate;
    .locals 10

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move v3, p3

    .local v3, "month":I
    move v4, p4

    .local v4, "dayOfMonth":I
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Ljava/time/chrono/AbstractChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/HijrahDate;

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/chrono/HijrahDate;

    if-eqz v2, :cond_0

    .line 289
    move-object v2, v1

    check-cast v2, Ljava/time/chrono/HijrahDate;

    move-object v0, v2

    .line 291
    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/chrono/HijrahDate;->ofEpochDay(J)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic dateEpochDay(J)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 7

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/HijrahChronology;->dateEpochDay(J)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public dateEpochDay(J)Ljava/time/chrono/HijrahDate;
    .locals 7

    .prologue
    .line 282
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahChronology;
    move-wide v2, p1

    .local v2, "epochDay":J
    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v4

    invoke-static {v4}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/LocalDate;)Ljava/time/chrono/HijrahDate;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v1
.end method

.method public bridge synthetic dateNow()Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/HijrahChronology;->dateNow()Ljava/time/chrono/HijrahDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public dateNow()Ljava/time/chrono/HijrahDate;
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, v0

    invoke-super {v1}, Ljava/time/chrono/AbstractChronology;->dateNow()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/HijrahDate;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;
    .locals 4

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    .local v1, "clock":Ljava/time/Clock;
    move-object v2, v1

    const-string v3, "clock"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 326
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/HijrahDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;
    .locals 4

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/HijrahDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/HijrahChronology;->dateYearDay(II)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public bridge synthetic dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/HijrahChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/HijrahDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public dateYearDay(II)Ljava/time/chrono/HijrahDate;
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move v1, p1

    .local v1, "prolepticYear":I
    move v2, p2

    .local v2, "dayOfYear":I
    move v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ljava/time/chrono/HijrahDate;->of(III)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/HijrahDate;
    .locals 8

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move v3, p3

    .local v3, "dayOfYear":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Ljava/time/chrono/AbstractChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    check-cast v4, Ljava/time/chrono/HijrahDate;

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljava/time/chrono/Era;
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahChronology;->eraOf(I)Ljava/time/chrono/HijrahEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public eraOf(I)Ljava/time/chrono/HijrahEra;
    .locals 6

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move v1, p1

    .local v1, "eraValue":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 351
    new-instance v2, Ljava/time/DateTimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "invalid Hijrah era"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    :pswitch_0
    sget-object v2, Ljava/time/chrono/HijrahEra;->BEFORE_AH:Ljava/time/chrono/HijrahEra;

    move-object v0, v2

    .line 349
    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/HijrahChronology;
    :pswitch_1
    sget-object v2, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    move-object v0, v2

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public eras()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    invoke-static {}, Ljava/time/chrono/HijrahEra;->values()[Ljava/time/chrono/HijrahEra;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    const-string v1, "islamic-umalqura"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    const-string v1, "Hijrah-umalqura"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 7

    .prologue
    .line 332
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahChronology;
    move-wide v2, p1

    .local v2, "prolepticYear":J
    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/time/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v4

    move v1, v4

    .end local v1    # "this":Ljava/time/chrono/HijrahChronology;
    return v1
.end method

.method public localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public prolepticYear(Ljava/time/chrono/Era;I)I
    .locals 7

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move-object v3, v1

    instance-of v3, v3, Ljava/time/chrono/HijrahEra;

    if-nez v3, :cond_0

    .line 338
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Era must be HijrahEra"

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 340
    :cond_0
    move-object v3, v1

    sget-object v4, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    if-ne v3, v4, :cond_1

    move v3, v2

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return v0

    .restart local v0    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_1
    const/4 v3, 0x1

    move v4, v2

    rsub-int/lit8 v3, v4, 0x1

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .locals 3

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/ChronoField;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 6

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/HijrahChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/HijrahDate;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/HijrahDate;"
        }
    .end annotation

    .prologue
    .line 368
    move-object/from16 v3, p0

    .local v3, "this":Ljava/time/chrono/HijrahChronology;
    move-object/from16 v4, p1

    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v5, p2

    .local v5, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 369
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/HijrahChronology;->dateEpochDay(J)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v3, v15

    .line 511
    .end local v3    # "this":Ljava/time/chrono/HijrahChronology;
    :goto_0
    return-object v3

    .line 373
    .restart local v3    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_0
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v6, v15

    .line 374
    .local v6, "prolepticMonth":Ljava/lang/Long;
    move-object v15, v6

    if-eqz v15, :cond_2

    .line 375
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 376
    sget-object v15, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v15

    .line 378
    :cond_1
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const/16 v20, 0xc

    invoke-static/range {v18 .. v20}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 379
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0xc

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 383
    :cond_2
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v7, v15

    .line 384
    .local v7, "yoeLong":Ljava/lang/Long;
    move-object v15, v7

    if-eqz v15, :cond_d

    .line 385
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 386
    sget-object v15, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v15

    .line 388
    :cond_3
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v8, v15

    .line 389
    .local v8, "era":Ljava/lang/Long;
    move-object v15, v8

    if-nez v15, :cond_a

    .line 390
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v9, v15

    .line 391
    .local v9, "year":Ljava/lang/Long;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 393
    move-object v15, v9

    if-eqz v15, :cond_6

    .line 394
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_5

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    :goto_1
    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 403
    .line 410
    .line 415
    .end local v8    # "era":Ljava/lang/Long;
    .end local v9    # "year":Ljava/lang/Long;
    :cond_4
    :goto_2
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 416
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 417
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 418
    sget-object v15, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v8, v15

    .line 419
    .local v8, "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 420
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v9, v15

    .line 421
    .local v9, "months":J
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v11, v15

    .line 422
    .local v11, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v11

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 394
    .end local v11    # "days":J
    .local v8, "era":Ljava/lang/Long;
    .local v9, "year":Ljava/lang/Long;
    :cond_5
    const-wide/16 v18, 0x1

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v18

    goto/16 :goto_1

    .line 397
    :cond_6
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v7

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_2

    .line 401
    :cond_7
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v18, v9

    if-eqz v18, :cond_8

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_9

    :cond_8
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    :goto_3
    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    :cond_9
    const-wide/16 v18, 0x1

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v18

    goto :goto_3

    .line 403
    .end local v9    # "year":Ljava/lang/Long;
    :cond_a
    move-object v15, v8

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    cmp-long v15, v15, v17

    if-nez v15, :cond_b

    .line 404
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 405
    :cond_b
    move-object v15, v8

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_c

    .line 406
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v18, 0x1

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/HijrahChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 408
    :cond_c
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid value for era: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 410
    .end local v8    # "era":Ljava/lang/Long;
    :cond_d
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 411
    sget-object v15, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v15

    goto/16 :goto_2

    .line 424
    .local v8, "y":I
    :cond_e
    move-object v15, v3

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/HijrahChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v15

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v18, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v18}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v15

    move v9, v15

    .line 425
    .local v9, "moy":I
    move-object v15, v3

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/HijrahChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v15

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v18, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v18}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v15

    move v10, v15

    .line 426
    .local v10, "dom":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_f

    move v15, v10

    const/16 v16, 0x1c

    move/from16 v0, v16

    if-le v15, v0, :cond_f

    .line 427
    move v15, v10

    move-object/from16 v16, v3

    move/from16 v17, v8

    move/from16 v18, v9

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move v10, v15

    .line 429
    :cond_f
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 432
    .end local v8    # "y":I
    .end local v9    # "moy":I
    .end local v10    # "dom":I
    :cond_10
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 433
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 434
    sget-object v15, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v8, v15

    .line 435
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 436
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v9, v15

    .line 437
    .local v9, "months":J
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v11, v15

    .line 438
    .local v11, "weeks":J
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v13, v15

    .line 439
    .local v13, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v13

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 441
    .end local v9    # "months":J
    .end local v11    # "weeks":J
    .end local v13    # "days":J
    :cond_11
    sget-object v15, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v9, v15

    .line 442
    .local v9, "moy":I
    sget-object v15, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v10, v15

    .line 443
    .local v10, "aw":I
    sget-object v15, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v11, v15

    .line 444
    .local v11, "ad":I
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x7

    mul-int/lit8 v16, v16, 0x7

    move/from16 v17, v11

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v12, v15

    .line 445
    .local v12, "date":Ljava/time/chrono/HijrahDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_12

    move-object v15, v12

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v9

    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    .line 446
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 448
    :cond_12
    move-object v15, v12

    move-object v3, v15

    goto/16 :goto_0

    .line 450
    .end local v8    # "y":I
    .end local v9    # "moy":I
    .end local v10    # "aw":I
    .end local v11    # "ad":I
    .end local v12    # "date":Ljava/time/chrono/HijrahDate;
    :cond_13
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 451
    sget-object v15, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v8, v15

    .line 452
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 453
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v9, v15

    .line 454
    .local v9, "months":J
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v11, v15

    .line 455
    .local v11, "weeks":J
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v13, v15

    .line 456
    .restart local v13    # "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v13

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 458
    .end local v9    # "months":J
    .end local v11    # "weeks":J
    .end local v13    # "days":J
    :cond_14
    sget-object v15, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v9, v15

    .line 459
    .local v9, "moy":I
    sget-object v15, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v10, v15

    .line 460
    .restart local v10    # "aw":I
    sget-object v15, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v11, v15

    .line 461
    .local v11, "dow":I
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move/from16 v16, v11

    invoke-static/range {v16 .. v16}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v12, v15

    .line 462
    .restart local v12    # "date":Ljava/time/chrono/HijrahDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_15

    move-object v15, v12

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v9

    move/from16 v0, v16

    if-eq v15, v0, :cond_15

    .line 463
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 465
    :cond_15
    move-object v15, v12

    move-object v3, v15

    goto/16 :goto_0

    .line 469
    .end local v8    # "y":I
    .end local v9    # "moy":I
    .end local v10    # "aw":I
    .end local v11    # "dow":I
    .end local v12    # "date":Ljava/time/chrono/HijrahDate;
    :cond_16
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 470
    sget-object v15, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v8, v15

    .line 471
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 472
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v9, v15

    .line 473
    .local v9, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/HijrahChronology;->dateYearDay(II)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 475
    .end local v9    # "days":J
    :cond_17
    sget-object v15, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v9, v15

    .line 476
    .local v9, "doy":I
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/HijrahChronology;->dateYearDay(II)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 478
    .end local v8    # "y":I
    .end local v9    # "doy":I
    :cond_18
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 479
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 480
    sget-object v15, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v8, v15

    .line 481
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 482
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v9, v15

    .line 483
    .local v9, "weeks":J
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v11, v15

    .line 484
    .local v11, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 486
    .end local v9    # "weeks":J
    .end local v11    # "days":J
    :cond_19
    sget-object v15, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v9, v15

    .line 487
    .local v9, "aw":I
    sget-object v15, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v10, v15

    .line 488
    .local v10, "ad":I
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move/from16 v16, v9

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x7

    mul-int/lit8 v16, v16, 0x7

    move/from16 v17, v10

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v11, v15

    .line 489
    .local v11, "date":Ljava/time/chrono/HijrahDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1a

    move-object v15, v11

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v8

    move/from16 v0, v16

    if-eq v15, v0, :cond_1a

    .line 490
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 492
    :cond_1a
    move-object v15, v11

    move-object v3, v15

    goto/16 :goto_0

    .line 494
    .end local v8    # "y":I
    .end local v9    # "aw":I
    .end local v10    # "ad":I
    .end local v11    # "date":Ljava/time/chrono/HijrahDate;
    :cond_1b
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 495
    sget-object v15, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v8, v15

    .line 496
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1c

    .line 497
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v9, v15

    .line 498
    .local v9, "weeks":J
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    move-wide v11, v15

    .line 499
    .local v11, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 501
    .end local v9    # "weeks":J
    .end local v11    # "days":J
    :cond_1c
    sget-object v15, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v9, v15

    .line 502
    .local v9, "aw":I
    sget-object v15, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v15

    move v10, v15

    .line 503
    .local v10, "dow":I
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move/from16 v16, v9

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move/from16 v16, v10

    invoke-static/range {v16 .. v16}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;

    move-result-object v15

    move-object v11, v15

    .line 504
    .local v11, "date":Ljava/time/chrono/HijrahDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1d

    move-object v15, v11

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v8

    move/from16 v0, v16

    if-eq v15, v0, :cond_1d

    .line 505
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 507
    :cond_1d
    move-object v15, v11

    move-object v3, v15

    goto/16 :goto_0

    .line 511
    .end local v8    # "y":I
    .end local v9    # "aw":I
    .end local v10    # "dow":I
    .end local v11    # "date":Ljava/time/chrono/HijrahDate;
    :cond_1e
    const/4 v15, 0x0

    move-object v3, v15

    goto/16 :goto_0
.end method

.method public zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v2, p2

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method

.method public zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahChronology;
    return-object v0
.end method
