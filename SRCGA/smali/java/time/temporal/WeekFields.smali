.class public final Ljava/time/temporal/WeekFields;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/WeekFields$ComputedDayOfField;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/temporal/WeekFields;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISO:Ljava/time/temporal/WeekFields;

.field public static final SUNDAY_START:Ljava/time/temporal/WeekFields;

.field private static final serialVersionUID:J = -0x1056d36d74f0f639L


# instance fields
.field private final transient dayOfWeek:Ljava/time/temporal/TemporalField;

.field private final firstDayOfWeek:Ljava/time/DayOfWeek;

.field private final minimalDays:I

.field private final transient weekBasedYear:Ljava/time/temporal/TemporalField;

.field private final transient weekOfMonth:Ljava/time/temporal/TemporalField;

.field private final transient weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

.field private final transient weekOfYear:Ljava/time/temporal/TemporalField;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 144
    new-instance v0, Ljava/time/temporal/WeekFields;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljava/time/temporal/WeekFields;-><init>(Ljava/time/DayOfWeek;I)V

    sput-object v0, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    .line 153
    sget-object v0, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields;->SUNDAY_START:Ljava/time/temporal/WeekFields;

    return-void
.end method

.method private constructor <init>(Ljava/time/DayOfWeek;I)V
    .locals 7

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v1, p1

    .local v1, "firstDayOfWeek":Ljava/time/DayOfWeek;
    move v2, p2

    .local v2, "minimalDaysInFirstWeek":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 172
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofDayOfWeekField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v4

    iput-object v4, v3, Ljava/time/temporal/WeekFields;->dayOfWeek:Ljava/time/temporal/TemporalField;

    .line 176
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfMonthField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v4

    iput-object v4, v3, Ljava/time/temporal/WeekFields;->weekOfMonth:Ljava/time/temporal/TemporalField;

    .line 180
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v4

    iput-object v4, v3, Ljava/time/temporal/WeekFields;->weekOfYear:Ljava/time/temporal/TemporalField;

    .line 184
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v4

    iput-object v4, v3, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

    .line 188
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v4

    iput-object v4, v3, Ljava/time/temporal/WeekFields;->weekBasedYear:Ljava/time/temporal/TemporalField;

    .line 250
    move-object v3, v1

    const-string v4, "firstDayOfWeek"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 251
    move v3, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    move v3, v2

    const/4 v4, 0x7

    if-le v3, v4, :cond_1

    .line 252
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Minimal number of days is invalid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    .line 255
    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljava/time/temporal/WeekFields;->minimalDays:I

    .line 256
    return-void
.end method

.method static synthetic access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljava/time/temporal/WeekFields;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method public static of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;
    .locals 9

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "firstDayOfWeek":Ljava/time/DayOfWeek;
    move v1, p1

    .local v1, "minimalDaysInFirstWeek":I
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 232
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/WeekFields;

    move-object v3, v4

    .line 233
    .local v3, "rules":Ljava/time/temporal/WeekFields;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 234
    new-instance v4, Ljava/time/temporal/WeekFields;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v1

    invoke-direct {v5, v6, v7}, Ljava/time/temporal/WeekFields;-><init>(Ljava/time/DayOfWeek;I)V

    move-object v3, v4

    .line 235
    sget-object v4, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 236
    sget-object v4, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/WeekFields;

    move-object v3, v4

    .line 238
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "firstDayOfWeek":Ljava/time/DayOfWeek;
    return-object v0
.end method

.method public static of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;
    .locals 10

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    move-object v5, v0

    const-string v6, "locale"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 200
    new-instance v5, Ljava/util/Locale;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 203
    new-instance v5, Ljava/util/GregorianCalendar;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    move-object v1, v5

    .line 204
    .local v1, "gcal":Ljava/util/GregorianCalendar;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v5

    move v2, v5

    .line 205
    .local v2, "calDow":I
    sget-object v5, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v5

    move-object v3, v5

    .line 206
    .local v3, "dow":Ljava/time/DayOfWeek;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v5

    move v4, v5

    .line 207
    .local v4, "minDays":I
    move-object v5, v3

    move v6, v4

    invoke-static {v5, v6}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "locale":Ljava/util/Locale;
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    move-object v3, v0

    iget v3, v3, Ljava/time/temporal/WeekFields;->minimalDays:I

    invoke-static {v2, v3}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    return-object v0

    .line 267
    .restart local v0    # "this":Ljava/time/temporal/WeekFields;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 268
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/InvalidObjectException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid WeekFields"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public dayOfWeek()Ljava/time/temporal/TemporalField;
    .locals 2

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields;->dayOfWeek:Ljava/time/temporal/TemporalField;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 519
    const/4 v2, 0x1

    move v0, v2

    .line 524
    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    :goto_0
    return v0

    .line 521
    .restart local v0    # "this":Ljava/time/temporal/WeekFields;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/WeekFields;

    if-eqz v2, :cond_2

    .line 522
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/temporal/WeekFields;->hashCode()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 524
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getFirstDayOfWeek()Ljava/time/DayOfWeek;
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v1, v0

    iget v1, v1, Ljava/time/temporal/WeekFields;->minimalDays:I

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    mul-int/lit8 v1, v1, 0x7

    move-object v2, v0

    iget v2, v2, Ljava/time/temporal/WeekFields;->minimalDays:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeekFields["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/temporal/WeekFields;->minimalDays:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method public weekBasedYear()Ljava/time/temporal/TemporalField;
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields;->weekBasedYear:Ljava/time/temporal/TemporalField;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method public weekOfMonth()Ljava/time/temporal/TemporalField;
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields;->weekOfMonth:Ljava/time/temporal/TemporalField;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method public weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;
    .locals 2

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method public weekOfYear()Ljava/time/temporal/TemporalField;
    .locals 2

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields;->weekOfYear:Ljava/time/temporal/TemporalField;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields;
    return-object v0
.end method
