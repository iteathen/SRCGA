.class public final Ljava/time/chrono/MinguoChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "MinguoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Ljava/time/chrono/MinguoChronology;

.field static final YEARS_DIFFERENCE:I = 0x777

.field private static final serialVersionUID:J = 0xe6dfcf4568e9fbbL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Ljava/time/chrono/MinguoChronology;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/chrono/MinguoChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/MinguoChronology;->INSTANCE:Ljava/time/chrono/MinguoChronology;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 117
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    sget-object v1, Ljava/time/chrono/MinguoChronology;->INSTANCE:Ljava/time/chrono/MinguoChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic date(III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/chrono/Era;III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 10

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/time/chrono/MinguoChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/MinguoDate;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/MinguoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/MinguoDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/MinguoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/MinguoDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public date(III)Ljava/time/chrono/MinguoDate;
    .locals 10

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move v1, p1

    .local v1, "prolepticYear":I
    move v2, p2

    .local v2, "month":I
    move v3, p3

    .local v3, "dayOfMonth":I
    new-instance v4, Ljava/time/chrono/MinguoDate;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    const/16 v7, 0x777

    add-int/lit16 v6, v6, 0x777

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/chrono/MinguoDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public date(Ljava/time/chrono/Era;III)Ljava/time/chrono/MinguoDate;
    .locals 10

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
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

    check-cast v5, Ljava/time/chrono/MinguoDate;

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/MinguoDate;
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/chrono/MinguoDate;

    if-eqz v2, :cond_0

    .line 190
    move-object v2, v1

    check-cast v2, Ljava/time/chrono/MinguoDate;

    move-object v0, v2

    .line 192
    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/MinguoChronology;
    :cond_0
    new-instance v2, Ljava/time/chrono/MinguoDate;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-static {v4}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/chrono/MinguoDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic dateEpochDay(J)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/MinguoChronology;->dateEpochDay(J)Ljava/time/chrono/MinguoDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public dateEpochDay(J)Ljava/time/chrono/MinguoDate;
    .locals 9

    .prologue
    .line 183
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/MinguoChronology;
    move-wide v2, p1

    .local v2, "epochDay":J
    new-instance v4, Ljava/time/chrono/MinguoDate;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/chrono/MinguoDate;-><init>(Ljava/time/LocalDate;)V

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v1
.end method

.method public bridge synthetic dateNow()Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/MinguoChronology;->dateNow()Ljava/time/chrono/MinguoDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/MinguoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/MinguoDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/MinguoChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/MinguoDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public dateNow()Ljava/time/chrono/MinguoDate;
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, v0

    invoke-super {v1}, Ljava/time/chrono/AbstractChronology;->dateNow()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/MinguoDate;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/Clock;)Ljava/time/chrono/MinguoDate;
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    .local v1, "clock":Ljava/time/Clock;
    move-object v2, v1

    const-string v3, "clock"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 227
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/MinguoDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/MinguoDate;
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/MinguoDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/MinguoChronology;->dateYearDay(II)Ljava/time/chrono/MinguoDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public bridge synthetic dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/MinguoChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/MinguoDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public dateYearDay(II)Ljava/time/chrono/MinguoDate;
    .locals 8

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move v1, p1

    .local v1, "prolepticYear":I
    move v2, p2

    .local v2, "dayOfYear":I
    new-instance v3, Ljava/time/chrono/MinguoDate;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    const/16 v6, 0x777

    add-int/lit16 v5, v5, 0x777

    move v6, v2

    invoke-static {v5, v6}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/chrono/MinguoDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/MinguoDate;
    .locals 8

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
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

    check-cast v4, Ljava/time/chrono/MinguoDate;

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljava/time/chrono/Era;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/MinguoChronology;->eraOf(I)Ljava/time/chrono/MinguoEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public eraOf(I)Ljava/time/chrono/MinguoEra;
    .locals 3

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move v1, p1

    .local v1, "eraValue":I
    move v2, v1

    invoke-static {v2}, Ljava/time/chrono/MinguoEra;->of(I)Ljava/time/chrono/MinguoEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
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
    .line 261
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    invoke-static {}, Ljava/time/chrono/MinguoEra;->values()[Ljava/time/chrono/MinguoEra;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    const-string v1, "roc"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    const-string v1, "Minguo"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 9

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-wide v1, p1

    .local v1, "prolepticYear":J
    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-wide v4, v1

    const-wide/16 v6, 0x777

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return v0
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
            "Ljava/time/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public prolepticYear(Ljava/time/chrono/Era;I)I
    .locals 7

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move-object v3, v1

    instance-of v3, v3, Ljava/time/chrono/MinguoEra;

    if-nez v3, :cond_0

    .line 249
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Era must be MinguoEra"

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 251
    :cond_0
    move-object v3, v1

    sget-object v4, Ljava/time/chrono/MinguoEra;->ROC:Ljava/time/chrono/MinguoEra;

    if-ne v3, v4, :cond_1

    move v3, v2

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return v0

    .restart local v0    # "this":Ljava/time/chrono/MinguoChronology;
    :cond_1
    const/4 v3, 0x1

    move v4, v2

    rsub-int/lit8 v3, v4, 0x1

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .locals 12

    .prologue
    .line 267
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/MinguoChronology;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/ChronoField;
    sget-object v4, Ljava/time/chrono/MinguoChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 281
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/MinguoChronology;
    :goto_0
    return-object v1

    .line 269
    .restart local v1    # "this":Ljava/time/chrono/MinguoChronology;
    :pswitch_0
    sget-object v4, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v3, v4

    .line 270
    .local v3, "range":Ljava/time/temporal/ValueRange;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    const-wide/16 v6, 0x5994

    sub-long/2addr v4, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    const-wide/16 v8, 0x5994

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 273
    .end local v3    # "range":Ljava/time/temporal/ValueRange;
    :pswitch_1
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v3, v4

    .line 274
    .restart local v3    # "range":Ljava/time/temporal/ValueRange;
    const-wide/16 v4, 0x1

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    const-wide/16 v8, 0x777

    sub-long/2addr v6, v8

    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v8

    neg-long v8, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const-wide/16 v10, 0x777

    add-long/2addr v8, v10

    invoke-static/range {v4 .. v9}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 277
    .end local v3    # "range":Ljava/time/temporal/ValueRange;
    :pswitch_2
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v3, v4

    .line 278
    .restart local v3    # "range":Ljava/time/temporal/ValueRange;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    const-wide/16 v6, 0x777

    sub-long/2addr v4, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    const-wide/16 v8, 0x777

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/MinguoChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/MinguoDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/MinguoDate;
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
            "Ljava/time/chrono/MinguoDate;"
        }
    .end annotation

    .prologue
    .line 286
    move-object/from16 v3, p0

    .local v3, "this":Ljava/time/chrono/MinguoChronology;
    move-object/from16 v4, p1

    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v5, p2

    .local v5, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 287
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/MinguoChronology;->dateEpochDay(J)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v3, v15

    .line 429
    .end local v3    # "this":Ljava/time/chrono/MinguoChronology;
    :goto_0
    return-object v3

    .line 291
    .restart local v3    # "this":Ljava/time/chrono/MinguoChronology;
    :cond_0
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v6, v15

    .line 292
    .local v6, "prolepticMonth":Ljava/lang/Long;
    move-object v15, v6

    if-eqz v15, :cond_2

    .line 293
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 294
    sget-object v15, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v15

    .line 296
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

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 297
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0xc

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 301
    :cond_2
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v7, v15

    .line 302
    .local v7, "yoeLong":Ljava/lang/Long;
    move-object v15, v7

    if-eqz v15, :cond_d

    .line 303
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 304
    sget-object v15, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v15

    .line 306
    :cond_3
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v8, v15

    .line 307
    .local v8, "era":Ljava/lang/Long;
    move-object v15, v8

    if-nez v15, :cond_a

    .line 308
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v9, v15

    .line 309
    .local v9, "year":Ljava/lang/Long;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 311
    move-object v15, v9

    if-eqz v15, :cond_6

    .line 312
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
    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 321
    .line 328
    .line 333
    .end local v8    # "era":Ljava/lang/Long;
    .end local v9    # "year":Ljava/lang/Long;
    :cond_4
    :goto_2
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 334
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 335
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 336
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

    .line 337
    .local v8, "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 338
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

    .line 339
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

    .line 340
    .local v11, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/MinguoDate;->plusMonths(J)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v11

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/MinguoDate;->plusDays(J)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 312
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

    .line 315
    :cond_6
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v7

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_2

    .line 319
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
    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    :cond_9
    const-wide/16 v18, 0x1

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v18

    goto :goto_3

    .line 321
    .end local v9    # "year":Ljava/lang/Long;
    :cond_a
    move-object v15, v8

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    cmp-long v15, v15, v17

    if-nez v15, :cond_b

    .line 322
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 323
    :cond_b
    move-object v15, v8

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_c

    .line 324
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v18, 0x1

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/MinguoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 326
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

    .line 328
    .end local v8    # "era":Ljava/lang/Long;
    :cond_d
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 329
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

    .line 342
    .local v8, "y":I
    :cond_e
    move-object v15, v3

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/MinguoChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

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

    .line 343
    .local v9, "moy":I
    move-object v15, v3

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/MinguoChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

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

    .line 344
    .local v10, "dom":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_f

    move v15, v10

    const/16 v16, 0x1c

    move/from16 v0, v16

    if-le v15, v0, :cond_f

    .line 345
    move v15, v10

    move-object/from16 v16, v3

    move/from16 v17, v8

    move/from16 v18, v9

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/time/chrono/MinguoDate;->lengthOfMonth()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move v10, v15

    .line 347
    :cond_f
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 350
    .end local v8    # "y":I
    .end local v9    # "moy":I
    .end local v10    # "dom":I
    :cond_10
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 351
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 352
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

    .line 353
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 354
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

    .line 355
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

    .line 356
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

    .line 357
    .local v13, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v13

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 359
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

    .line 360
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

    .line 361
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

    .line 362
    .local v11, "ad":I
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

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

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v12, v15

    .line 363
    .local v12, "date":Ljava/time/chrono/MinguoDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_12

    move-object v15, v12

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/MinguoDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v9

    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    .line 364
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 366
    :cond_12
    move-object v15, v12

    move-object v3, v15

    goto/16 :goto_0

    .line 368
    .end local v8    # "y":I
    .end local v9    # "moy":I
    .end local v10    # "aw":I
    .end local v11    # "ad":I
    .end local v12    # "date":Ljava/time/chrono/MinguoDate;
    :cond_13
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 369
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

    .line 370
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 371
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

    .line 372
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

    .line 373
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

    .line 374
    .restart local v13    # "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v13

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 376
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

    .line 377
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

    .line 378
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

    .line 379
    .local v11, "dow":I
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move/from16 v16, v11

    invoke-static/range {v16 .. v16}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/MinguoDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v12, v15

    .line 380
    .restart local v12    # "date":Ljava/time/chrono/MinguoDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_15

    move-object v15, v12

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/MinguoDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v9

    move/from16 v0, v16

    if-eq v15, v0, :cond_15

    .line 381
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 383
    :cond_15
    move-object v15, v12

    move-object v3, v15

    goto/16 :goto_0

    .line 387
    .end local v8    # "y":I
    .end local v9    # "moy":I
    .end local v10    # "aw":I
    .end local v11    # "dow":I
    .end local v12    # "date":Ljava/time/chrono/MinguoDate;
    :cond_16
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 388
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

    .line 389
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 390
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

    .line 391
    .local v9, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/MinguoChronology;->dateYearDay(II)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/MinguoDate;->plusDays(J)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 393
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

    .line 394
    .local v9, "doy":I
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/MinguoChronology;->dateYearDay(II)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 396
    .end local v8    # "y":I
    .end local v9    # "doy":I
    :cond_18
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 397
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 398
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

    .line 399
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 400
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

    .line 401
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

    .line 402
    .local v11, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 404
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

    .line 405
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

    .line 406
    .local v10, "ad":I
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

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

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/MinguoDate;->plusDays(J)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v11, v15

    .line 407
    .local v11, "date":Ljava/time/chrono/MinguoDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1a

    move-object v15, v11

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/MinguoDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v8

    move/from16 v0, v16

    if-eq v15, v0, :cond_1a

    .line 408
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 410
    :cond_1a
    move-object v15, v11

    move-object v3, v15

    goto/16 :goto_0

    .line 412
    .end local v8    # "y":I
    .end local v9    # "aw":I
    .end local v10    # "ad":I
    .end local v11    # "date":Ljava/time/chrono/MinguoDate;
    :cond_1b
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 413
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

    .line 414
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1c

    .line 415
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

    .line 416
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

    .line 417
    .local v11, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 419
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

    .line 420
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

    .line 421
    .local v10, "dow":I
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoChronology;->date(III)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move/from16 v16, v9

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/MinguoDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move/from16 v16, v10

    invoke-static/range {v16 .. v16}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/MinguoDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/MinguoDate;

    move-result-object v15

    move-object v11, v15

    .line 422
    .local v11, "date":Ljava/time/chrono/MinguoDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1d

    move-object v15, v11

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/MinguoDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v8

    move/from16 v0, v16

    if-eq v15, v0, :cond_1d

    .line 423
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 425
    :cond_1d
    move-object v15, v11

    move-object v3, v15

    goto/16 :goto_0

    .line 429
    .end local v8    # "y":I
    .end local v9    # "aw":I
    .end local v10    # "dow":I
    .end local v11    # "date":Ljava/time/chrono/MinguoDate;
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
            "Ljava/time/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
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

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
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
            "Ljava/time/chrono/MinguoDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoChronology;
    return-object v0
.end method
