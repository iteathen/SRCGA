.class public final Ljava/time/chrono/ThaiBuddhistChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "ThaiBuddhistChronology.java"

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

.field public static final INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

.field private static final TARGET_LANGUAGE:Ljava/lang/String; = "th"

.field static final YEARS_DIFFERENCE:I = 0x21f

.field private static final serialVersionUID:J = 0x26862bec417f21daL


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 103
    new-instance v0, Ljava/time/chrono/ThaiBuddhistChronology;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/time/chrono/ThaiBuddhistChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    .line 137
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    const-string v1, "en"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "BB"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "BE"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_NARROW_NAMES:Ljava/util/HashMap;

    const-string v1, "th"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "BB"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "BE"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    const-string v1, "en"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "B.B."

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "B.E."

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_SHORT_NAMES:Ljava/util/HashMap;

    const-string v1, "th"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "\u0e1e.\u0e28."

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "\u0e1b\u0e35\u0e01\u0e48\u0e2d\u0e19\u0e04\u0e23\u0e34\u0e2a\u0e15\u0e4c\u0e01\u0e32\u0e25\u0e17\u0e35\u0e48"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    const-string v1, "en"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "Before Buddhist"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "Budhhist Era"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->ERA_FULL_NAMES:Ljava/util/HashMap;

    const-string v1, "th"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "\u0e1e\u0e38\u0e17\u0e18\u0e28\u0e31\u0e01\u0e23\u0e32\u0e0a"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "\u0e1b\u0e35\u0e01\u0e48\u0e2d\u0e19\u0e04\u0e23\u0e34\u0e2a\u0e15\u0e4c\u0e01\u0e32\u0e25\u0e17\u0e35\u0e48"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 153
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    sget-object v1, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic date(III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/chrono/Era;III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 10

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/time/chrono/ThaiBuddhistChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public date(III)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 10

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move v1, p1

    .local v1, "prolepticYear":I
    move v2, p2

    .local v2, "month":I
    move v3, p3

    .local v3, "dayOfMonth":I
    new-instance v4, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    const/16 v7, 0x21f

    add-int/lit16 v6, v6, -0x21f

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 10

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
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

    check-cast v5, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 6

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/chrono/ThaiBuddhistDate;

    if-eqz v2, :cond_0

    .line 226
    move-object v2, v1

    check-cast v2, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v0, v2

    .line 228
    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    :cond_0
    new-instance v2, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-static {v4}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic dateEpochDay(J)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ThaiBuddhistChronology;->dateEpochDay(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public dateEpochDay(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 9

    .prologue
    .line 219
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-wide v2, p1

    .local v2, "epochDay":J
    new-instance v4, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v1
.end method

.method public bridge synthetic dateNow()Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/ThaiBuddhistChronology;->dateNow()Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public dateNow()Ljava/time/chrono/ThaiBuddhistDate;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, v0

    invoke-super {v1}, Ljava/time/chrono/AbstractChronology;->dateNow()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    .local v1, "clock":Ljava/time/Clock;
    move-object v2, v1

    const-string v3, "clock"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ThaiBuddhistChronology;->dateYearDay(II)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public bridge synthetic dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/ThaiBuddhistChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public dateYearDay(II)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 8

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move v1, p1

    .local v1, "prolepticYear":I
    move v2, p2

    .local v2, "dayOfYear":I
    new-instance v3, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    const/16 v6, 0x21f

    add-int/lit16 v5, v5, -0x21f

    move v6, v2

    invoke-static {v5, v6}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 8

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
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

    check-cast v4, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljava/time/chrono/Era;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ThaiBuddhistChronology;->eraOf(I)Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public eraOf(I)Ljava/time/chrono/ThaiBuddhistEra;
    .locals 3

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move v1, p1

    .local v1, "eraValue":I
    move v2, v1

    invoke-static {v2}, Ljava/time/chrono/ThaiBuddhistEra;->of(I)Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
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
    .line 297
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistEra;->values()[Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    const-string v1, "buddhist"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    const-string v1, "ThaiBuddhist"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 9

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-wide v1, p1

    .local v1, "prolepticYear":J
    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-wide v4, v1

    const-wide/16 v6, 0x21f

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
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
            "Ljava/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public prolepticYear(Ljava/time/chrono/Era;I)I
    .locals 7

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move-object v3, v1

    instance-of v3, v3, Ljava/time/chrono/ThaiBuddhistEra;

    if-nez v3, :cond_0

    .line 285
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Era must be BuddhistEra"

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    :cond_0
    move-object v3, v1

    sget-object v4, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    if-ne v3, v4, :cond_1

    move v3, v2

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return v0

    .restart local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    :cond_1
    const/4 v3, 0x1

    move v4, v2

    rsub-int/lit8 v3, v4, 0x1

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .locals 12

    .prologue
    .line 303
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/ChronoField;
    sget-object v4, Ljava/time/chrono/ThaiBuddhistChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 317
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    :goto_0
    return-object v1

    .line 305
    .restart local v1    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    :pswitch_0
    sget-object v4, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v3, v4

    .line 306
    .local v3, "range":Ljava/time/temporal/ValueRange;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    const-wide/16 v6, 0x1974

    add-long/2addr v4, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    const-wide/16 v8, 0x1974

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 309
    .end local v3    # "range":Ljava/time/temporal/ValueRange;
    :pswitch_1
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v3, v4

    .line 310
    .restart local v3    # "range":Ljava/time/temporal/ValueRange;
    const-wide/16 v4, 0x1

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v6

    const-wide/16 v8, 0x21f

    add-long/2addr v6, v8

    neg-long v6, v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    const-wide/16 v10, 0x21f

    add-long/2addr v8, v10

    invoke-static/range {v4 .. v9}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 313
    .end local v3    # "range":Ljava/time/temporal/ValueRange;
    :pswitch_2
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v3, v4

    .line 314
    .restart local v3    # "range":Ljava/time/temporal/ValueRange;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    const-wide/16 v6, 0x21f

    add-long/2addr v4, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    const-wide/16 v8, 0x21f

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 303
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
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ThaiBuddhistChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ThaiBuddhistDate;
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
            "Ljava/time/chrono/ThaiBuddhistDate;"
        }
    .end annotation

    .prologue
    .line 322
    move-object/from16 v3, p0

    .local v3, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object/from16 v4, p1

    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v5, p2

    .local v5, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 323
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/ThaiBuddhistChronology;->dateEpochDay(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v3, v15

    .line 465
    .end local v3    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    :goto_0
    return-object v3

    .line 327
    .restart local v3    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    :cond_0
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v6, v15

    .line 328
    .local v6, "prolepticMonth":Ljava/lang/Long;
    move-object v15, v6

    if-eqz v15, :cond_2

    .line 329
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 330
    sget-object v15, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v15

    .line 332
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

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/ThaiBuddhistChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 333
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0xc

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/ThaiBuddhistChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 337
    :cond_2
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v7, v15

    .line 338
    .local v7, "yoeLong":Ljava/lang/Long;
    move-object v15, v7

    if-eqz v15, :cond_d

    .line 339
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 340
    sget-object v15, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v15

    .line 342
    :cond_3
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v8, v15

    .line 343
    .local v8, "era":Ljava/lang/Long;
    move-object v15, v8

    if-nez v15, :cond_a

    .line 344
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object v9, v15

    .line 345
    .local v9, "year":Ljava/lang/Long;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 347
    move-object v15, v9

    if-eqz v15, :cond_6

    .line 348
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
    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/ThaiBuddhistChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 357
    .line 364
    .line 369
    .end local v8    # "era":Ljava/lang/Long;
    .end local v9    # "year":Ljava/lang/Long;
    :cond_4
    :goto_2
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 370
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 371
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 372
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

    .line 373
    .local v8, "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 374
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

    .line 375
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

    .line 376
    .local v11, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v11

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/ThaiBuddhistDate;->plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 348
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

    .line 351
    :cond_6
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v7

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_2

    .line 355
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
    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/ThaiBuddhistChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    :cond_9
    const-wide/16 v18, 0x1

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v18

    goto :goto_3

    .line 357
    .end local v9    # "year":Ljava/lang/Long;
    :cond_a
    move-object v15, v8

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    cmp-long v15, v15, v17

    if-nez v15, :cond_b

    .line 358
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/ThaiBuddhistChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 359
    :cond_b
    move-object v15, v8

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_c

    .line 360
    move-object v15, v3

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v18, 0x1

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v18

    invoke-virtual/range {v15 .. v19}, Ljava/time/chrono/ThaiBuddhistChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 362
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

    .line 364
    .end local v8    # "era":Ljava/lang/Long;
    :cond_d
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 365
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

    .line 378
    .local v8, "y":I
    :cond_e
    move-object v15, v3

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

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

    .line 379
    .local v9, "moy":I
    move-object v15, v3

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

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

    .line 380
    .local v10, "dom":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_f

    move v15, v10

    const/16 v16, 0x1c

    move/from16 v0, v16

    if-le v15, v0, :cond_f

    .line 381
    move v15, v10

    move-object/from16 v16, v3

    move/from16 v17, v8

    move/from16 v18, v9

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/time/chrono/ThaiBuddhistDate;->lengthOfMonth()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move v10, v15

    .line 383
    :cond_f
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 386
    .end local v8    # "y":I
    .end local v9    # "moy":I
    .end local v10    # "dom":I
    :cond_10
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 387
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

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

    if-ne v15, v0, :cond_11

    .line 390
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

    .line 391
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

    .line 392
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

    .line 393
    .local v13, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v13

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 395
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

    .line 396
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

    .line 397
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

    .line 398
    .local v11, "ad":I
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

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

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v12, v15

    .line 399
    .local v12, "date":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_12

    move-object v15, v12

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v9

    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    .line 400
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 402
    :cond_12
    move-object v15, v12

    move-object v3, v15

    goto/16 :goto_0

    .line 404
    .end local v8    # "y":I
    .end local v9    # "moy":I
    .end local v10    # "aw":I
    .end local v11    # "ad":I
    .end local v12    # "date":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_13
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 405
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

    .line 406
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 407
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

    .line 408
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

    .line 409
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

    .line 410
    .restart local v13    # "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v13

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 412
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

    .line 413
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

    .line 414
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

    .line 415
    .local v11, "dow":I
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move/from16 v16, v11

    invoke-static/range {v16 .. v16}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v12, v15

    .line 416
    .restart local v12    # "date":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_15

    move-object v15, v12

    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v9

    move/from16 v0, v16

    if-eq v15, v0, :cond_15

    .line 417
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 419
    :cond_15
    move-object v15, v12

    move-object v3, v15

    goto/16 :goto_0

    .line 423
    .end local v8    # "y":I
    .end local v9    # "moy":I
    .end local v10    # "aw":I
    .end local v11    # "dow":I
    .end local v12    # "date":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_16
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 424
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

    .line 425
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 426
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

    .line 427
    .local v9, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/ThaiBuddhistChronology;->dateYearDay(II)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/ThaiBuddhistDate;->plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 429
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

    .line 430
    .local v9, "doy":I
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/ThaiBuddhistChronology;->dateYearDay(II)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 432
    .end local v8    # "y":I
    .end local v9    # "doy":I
    :cond_18
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 433
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

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

    if-ne v15, v0, :cond_19

    .line 436
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

    .line 437
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

    .line 438
    .local v11, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 440
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

    .line 441
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

    .line 442
    .local v10, "ad":I
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

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

    invoke-virtual/range {v15 .. v17}, Ljava/time/chrono/ThaiBuddhistDate;->plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v11, v15

    .line 443
    .local v11, "date":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1a

    move-object v15, v11

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v8

    move/from16 v0, v16

    if-eq v15, v0, :cond_1a

    .line 444
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 446
    :cond_1a
    move-object v15, v11

    move-object v3, v15

    goto/16 :goto_0

    .line 448
    .end local v8    # "y":I
    .end local v9    # "aw":I
    .end local v10    # "ad":I
    .end local v11    # "date":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_1b
    move-object v15, v4

    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 449
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

    .line 450
    .restart local v8    # "y":I
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1c

    .line 451
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

    .line 452
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

    .line 453
    .local v11, "days":J
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v9

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-wide/from16 v16, v11

    sget-object v18, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v3, v15

    goto/16 :goto_0

    .line 455
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

    .line 456
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

    .line 457
    .local v10, "dow":I
    move-object v15, v3

    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move/from16 v16, v9

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sget-object v18, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v15 .. v18}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move/from16 v16, v10

    invoke-static/range {v16 .. v16}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v15

    move-object v11, v15

    .line 458
    .local v11, "date":Ljava/time/chrono/ThaiBuddhistDate;
    move-object v15, v5

    sget-object v16, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1d

    move-object v15, v11

    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v15 .. v16}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v15

    move/from16 v16, v8

    move/from16 v0, v16

    if-eq v15, v0, :cond_1d

    .line 459
    new-instance v15, Ljava/time/DateTimeException;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v16 .. v17}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 461
    :cond_1d
    move-object v15, v11

    move-object v3, v15

    goto/16 :goto_0

    .line 465
    .end local v8    # "y":I
    .end local v9    # "aw":I
    .end local v10    # "dow":I
    .end local v11    # "date":Ljava/time/chrono/ThaiBuddhistDate;
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
            "Ljava/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
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

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
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
            "Ljava/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ThaiBuddhistChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ThaiBuddhistChronology;
    return-object v0
.end method
