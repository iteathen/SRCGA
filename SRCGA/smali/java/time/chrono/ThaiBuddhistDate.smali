.class public final Ljava/time/chrono/ThaiBuddhistDate;
.super Ljava/time/chrono/ChronoDateImpl;
.source "ThaiBuddhistDate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoDateImpl",
        "<",
        "Ljava/time/chrono/ThaiBuddhistDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x790bcfffa3423007L


# instance fields
.field private final isoDate:Ljava/time/LocalDate;


# direct methods
.method constructor <init>(Ljava/time/LocalDate;)V
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "date":Ljava/time/LocalDate;
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/chrono/ChronoDateImpl;-><init>()V

    .line 178
    move-object v2, v1

    const-string v3, "date"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 179
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    .line 180
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    sget-object v1, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/time/chrono/ThaiBuddhistChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object v0
.end method

.method private getProlepticMonth()J
    .locals 6

    .prologue
    .line 242
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v2, v1

    invoke-direct {v2}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    move-object v4, v1

    iget-object v4, v4, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v4}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-wide v1
.end method

.method private getProlepticYear()I
    .locals 3

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    const/16 v2, 0x21f

    add-int/lit16 v1, v1, 0x21f

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return v0
.end method

.method public static now()Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/ThaiBuddhistDate;->now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "clock":Ljava/time/Clock;
    new-instance v1, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-static {v3}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v1

    .end local v0    # "clock":Ljava/time/Clock;
    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/chrono/ThaiBuddhistDate;->now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(III)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 7

    .prologue
    .line 147
    move v0, p0

    .local v0, "prolepticYear":I
    move v1, p1

    .local v1, "month":I
    move v2, p2

    .local v2, "dayOfMonth":I
    sget-object v3, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    move v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "prolepticYear":I
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v4

    move v1, v4

    .line 374
    .local v1, "year":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readByte()B

    move-result v4

    move v2, v4

    .line 375
    .local v2, "month":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readByte()B

    move-result v4

    move v3, v4

    .line 376
    .local v3, "dayOfMonth":I
    sget-object v4, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method private with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 6

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "newDate":Ljava/time/LocalDate;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_0
    new-instance v2, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    new-instance v1, Ljava/time/chrono/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x7

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method


# virtual methods
.method public final atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<",
            "Ljava/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "localTime":Ljava/time/LocalTime;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 346
    const/4 v3, 0x1

    move v0, v3

    .line 352
    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    :goto_0
    return v0

    .line 348
    .restart local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/chrono/ThaiBuddhistDate;

    if-eqz v3, :cond_1

    .line 349
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v2, v3

    .line 350
    .local v2, "otherDate":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 352
    .end local v2    # "otherDate":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/AbstractChronology;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/ThaiBuddhistChronology;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    sget-object v1, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public bridge synthetic getEra()Ljava/time/chrono/Era;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/ThaiBuddhistDate;->getEra()Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public getEra()Ljava/time/chrono/ThaiBuddhistEra;
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, v0

    invoke-super {v1}, Ljava/time/chrono/ChronoDateImpl;->getEra()Ljava/time/chrono/Era;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/ThaiBuddhistEra;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 6

    .prologue
    .line 223
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v4, v2

    instance-of v4, v4, Ljava/time/temporal/ChronoField;

    if-eqz v4, :cond_2

    .line 224
    sget-object v4, Ljava/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v5, v2

    check-cast v5, Ljava/time/temporal/ChronoField;

    invoke-virtual {v5}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 236
    move-object v4, v1

    iget-object v4, v4, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-wide v1, v4

    .line 238
    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    :goto_0
    return-wide v1

    .line 226
    .restart local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    :pswitch_0
    move-object v4, v1

    invoke-direct {v4}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0

    .line 228
    :pswitch_1
    move-object v4, v1

    invoke-direct {v4}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v4

    move v3, v4

    .line 229
    .local v3, "prolepticYear":I
    move v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    move v4, v3

    :goto_1
    int-to-long v4, v4

    move-wide v1, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move v5, v3

    rsub-int/lit8 v4, v5, 0x1

    goto :goto_1

    .line 232
    .end local v3    # "prolepticYear":I
    :pswitch_2
    move-object v4, v1

    invoke-direct {v4}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v4

    int-to-long v4, v4

    move-wide v1, v4

    goto :goto_0

    .line 234
    :pswitch_3
    move-object v4, v1

    invoke-direct {v4}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_2
    int-to-long v4, v4

    move-wide v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 238
    :cond_2
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/chrono/ThaiBuddhistChronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return v0
.end method

.method public lengthOfMonth()I
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ThaiBuddhistDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 9

    .prologue
    .line 302
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v2, p1

    .local v2, "amountToAdd":J
    move-object v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-super {v5, v6, v7, v8}, Ljava/time/chrono/ChronoDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v1
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 4

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ThaiBuddhistDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoDateImpl;
    .locals 9

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v1
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 9

    .prologue
    .line 292
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v2, p1

    .local v2, "amountToAdd":J
    move-object v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-super {v5, v6, v7, v8}, Ljava/time/chrono/ChronoDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v1
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method bridge synthetic plusDays(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ThaiBuddhistDate;->plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 9

    .prologue
    .line 318
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v2, p1

    .local v2, "days":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v1
.end method

.method bridge synthetic plusMonths(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 9

    .prologue
    .line 313
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v2, p1

    .local v2, "months":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v1
.end method

.method bridge synthetic plusYears(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ThaiBuddhistDate;->plusYears(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method plusYears(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 9

    .prologue
    .line 308
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-wide v2, p1

    .local v2, "years":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v1
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 11

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v6, v1

    instance-of v6, v6, Ljava/time/temporal/ChronoField;

    if-eqz v6, :cond_2

    .line 201
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/time/chrono/ThaiBuddhistDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 202
    move-object v6, v1

    check-cast v6, Ljava/time/temporal/ChronoField;

    move-object v2, v6

    .line 203
    .local v2, "f":Ljava/time/temporal/ChronoField;
    sget-object v6, Ljava/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v7, v2

    invoke-virtual {v7}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 214
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v0, v6

    .line 218
    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    .end local v2    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v0

    .line 207
    .restart local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    .restart local v2    # "f":Ljava/time/temporal/ChronoField;
    :pswitch_0
    move-object v6, v0

    iget-object v6, v6, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/time/LocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 209
    :pswitch_1
    sget-object v6, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v3, v6

    .line 210
    .local v3, "range":Ljava/time/temporal/ValueRange;
    move-object v6, v0

    invoke-direct {v6}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v6

    if-gtz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v6

    const-wide/16 v8, 0x21f

    add-long/2addr v6, v8

    neg-long v6, v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    :goto_1
    move-wide v4, v6

    .line 211
    .local v4, "max":J
    const-wide/16 v6, 0x1

    move-wide v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 210
    .end local v4    # "max":J
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    const-wide/16 v8, 0x21f

    add-long/2addr v6, v8

    goto :goto_1

    .line 216
    .end local v2    # "f":Ljava/time/temporal/ChronoField;
    .end local v3    # "range":Ljava/time/temporal/ValueRange;
    :cond_1
    new-instance v6, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported field: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 218
    :cond_2
    move-object v6, v1

    move-object v7, v0

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 3

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-wide v0
.end method

.method public bridge synthetic until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-wide v0
.end method

.method public until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .locals 7

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "endDate":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/Period;

    move-result-object v3

    move-object v2, v3

    .line 334
    .local v2, "period":Ljava/time/Period;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/Period;->getYears()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/Period;->getMonths()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/Period;->getDays()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/chrono/ThaiBuddhistChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 12

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v6, v1

    instance-of v6, v6, Ljava/time/temporal/ChronoField;

    if-eqz v6, :cond_2

    .line 258
    move-object v6, v1

    check-cast v6, Ljava/time/temporal/ChronoField;

    move-object v4, v6

    .line 259
    .local v4, "f":Ljava/time/temporal/ChronoField;
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/time/chrono/ThaiBuddhistDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 260
    move-object v6, v0

    move-object v0, v6

    .line 282
    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v0

    .line 262
    .restart local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    .restart local v4    # "f":Ljava/time/temporal/ChronoField;
    :cond_0
    sget-object v6, Ljava/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v7, v4

    invoke-virtual {v7}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 280
    :goto_1
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    move-object v8, v1

    move-wide v9, v2

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 264
    :pswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-wide v7, v2

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v6

    .line 265
    move-object v6, v0

    move-wide v7, v2

    move-object v9, v0

    invoke-direct {v9}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 269
    :pswitch_1
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-wide v7, v2

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v6

    move v5, v6

    .line 270
    .local v5, "nvalue":I
    sget-object v6, Ljava/time/chrono/ThaiBuddhistDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v7, v4

    invoke-virtual {v7}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    :pswitch_2
    goto :goto_1

    .line 272
    :pswitch_3
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    move-object v8, v0

    invoke-direct {v8}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_1

    move v8, v5

    :goto_2
    const/16 v9, 0x21f

    add-int/lit16 v8, v8, -0x21f

    invoke-virtual {v7, v8}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    move v9, v5

    rsub-int/lit8 v8, v9, 0x1

    goto :goto_2

    .line 274
    :pswitch_4
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    move v8, v5

    const/16 v9, 0x21f

    add-int/lit16 v8, v8, -0x21f

    invoke-virtual {v7, v8}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 276
    :pswitch_5
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    const/4 v8, 0x1

    move-object v9, v0

    invoke-direct {v9}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v9

    rsub-int/lit8 v8, v9, 0x1

    const/16 v9, 0x21f

    add-int/lit16 v8, v8, -0x21f

    invoke-virtual {v7, v8}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 282
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    .end local v5    # "nvalue":I
    :cond_2
    move-object v6, v1

    move-object v7, v0

    move-wide v8, v2

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    check-cast v6, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v0, v6

    goto/16 :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 368
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 369
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 370
    return-void
.end method
