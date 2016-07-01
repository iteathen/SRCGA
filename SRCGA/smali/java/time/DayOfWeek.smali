.class public final enum Ljava/time/DayOfWeek;
.super Ljava/lang/Enum;
.source "DayOfWeek.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/DayOfWeek;",
        ">;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/DayOfWeek;

.field private static final ENUMS:[Ljava/time/DayOfWeek;

.field public static final enum FRIDAY:Ljava/time/DayOfWeek;

.field public static final FROM:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/DayOfWeek;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MONDAY:Ljava/time/DayOfWeek;

.field public static final enum SATURDAY:Ljava/time/DayOfWeek;

.field public static final enum SUNDAY:Ljava/time/DayOfWeek;

.field public static final enum THURSDAY:Ljava/time/DayOfWeek;

.field public static final enum TUESDAY:Ljava/time/DayOfWeek;

.field public static final enum WEDNESDAY:Ljava/time/DayOfWeek;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 85
    new-instance v0, Ljava/time/DayOfWeek;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MONDAY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    .line 90
    new-instance v0, Ljava/time/DayOfWeek;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TUESDAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->TUESDAY:Ljava/time/DayOfWeek;

    .line 95
    new-instance v0, Ljava/time/DayOfWeek;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WEDNESDAY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->WEDNESDAY:Ljava/time/DayOfWeek;

    .line 100
    new-instance v0, Ljava/time/DayOfWeek;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "THURSDAY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->THURSDAY:Ljava/time/DayOfWeek;

    .line 105
    new-instance v0, Ljava/time/DayOfWeek;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FRIDAY"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->FRIDAY:Ljava/time/DayOfWeek;

    .line 110
    new-instance v0, Ljava/time/DayOfWeek;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SATURDAY"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    .line 115
    new-instance v0, Ljava/time/DayOfWeek;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SUNDAY"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/time/DayOfWeek;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/time/DayOfWeek;->TUESDAY:Ljava/time/DayOfWeek;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/time/DayOfWeek;->WEDNESDAY:Ljava/time/DayOfWeek;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/time/DayOfWeek;->THURSDAY:Ljava/time/DayOfWeek;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljava/time/DayOfWeek;->FRIDAY:Ljava/time/DayOfWeek;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/DayOfWeek;->$VALUES:[Ljava/time/DayOfWeek;

    .line 119
    new-instance v0, Ljava/time/DayOfWeek$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/time/DayOfWeek$1;-><init>()V

    sput-object v0, Ljava/time/DayOfWeek;->FROM:Ljava/time/temporal/TemporalQuery;

    .line 128
    invoke-static {}, Ljava/time/DayOfWeek;->values()[Ljava/time/DayOfWeek;

    move-result-object v0

    sput-object v0, Ljava/time/DayOfWeek;->ENUMS:[Ljava/time/DayOfWeek;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljava/time/DayOfWeek;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/DayOfWeek;
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    instance-of v2, v2, Ljava/time/DayOfWeek;

    if-eqz v2, :cond_0

    .line 167
    move-object v2, v0

    check-cast v2, Ljava/time/DayOfWeek;

    move-object v0, v2

    .line 170
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :goto_0
    return-object v0

    .restart local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    move-object v2, v0

    :try_start_0
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    invoke-static {v2}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 171
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 172
    .local v1, "ex":Ljava/time/DateTimeException;
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain DayOfWeek from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 173
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static of(I)Ljava/time/DayOfWeek;
    .locals 6

    .prologue
    .line 143
    move v0, p0

    .local v0, "dayOfWeek":I
    move v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v0

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    .line 144
    :cond_0
    new-instance v1, Ljava/time/DateTimeException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for DayOfWeek: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_1
    sget-object v1, Ljava/time/DayOfWeek;->ENUMS:[Ljava/time/DayOfWeek;

    move v2, v0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "dayOfWeek":I
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/DayOfWeek;
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/DayOfWeek;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/DayOfWeek;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/DayOfWeek;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Ljava/time/DayOfWeek;->$VALUES:[Ljava/time/DayOfWeek;

    invoke-virtual {v0}, [Ljava/time/DayOfWeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/DayOfWeek;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Ljava/time/DayOfWeek;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/DayOfWeek;->getValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/DayOfWeek;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 7

    .prologue
    .line 292
    move-object v1, p0

    .local v1, "this":Ljava/time/DayOfWeek;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v3, v2

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne v3, v4, :cond_0

    .line 293
    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/DayOfWeek;->getValue()I

    move-result v3

    move v1, v3

    .line 295
    .end local v1    # "this":Ljava/time/DayOfWeek;
    :goto_0
    return v1

    .restart local v1    # "this":Ljava/time/DayOfWeek;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/DayOfWeek;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/DayOfWeek;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    move v1, v3

    goto :goto_0
.end method

.method public getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljava/time/DayOfWeek;
    move-object v1, p1

    .local v1, "style":Ljava/time/format/TextStyle;
    move-object v2, p2

    .local v2, "locale":Ljava/util/Locale;
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/DayOfWeek;
    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Ljava/time/DayOfWeek;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 322
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/DayOfWeek;->getValue()I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    .line 326
    .end local v0    # "this":Ljava/time/DayOfWeek;
    :goto_0
    return-wide v0

    .line 323
    .restart local v0    # "this":Ljava/time/DayOfWeek;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 324
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public getValue()I
    .locals 3

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljava/time/DayOfWeek;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/DayOfWeek;
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljava/time/DayOfWeek;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 230
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 232
    .end local v0    # "this":Ljava/time/DayOfWeek;
    :goto_1
    return v0

    .line 230
    .restart local v0    # "this":Ljava/time/DayOfWeek;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 232
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public minus(J)Ljava/time/DayOfWeek;
    .locals 9

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljava/time/DayOfWeek;
    move-wide v1, p1

    .local v1, "days":J
    move-object v3, v0

    move-wide v4, v1

    const-wide/16 v6, 0x7

    rem-long/2addr v4, v6

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/DayOfWeek;
    return-object v0
.end method

.method public plus(J)Ljava/time/DayOfWeek;
    .locals 9

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljava/time/DayOfWeek;
    move-wide v1, p1

    .local v1, "days":J
    move-wide v4, v1

    const-wide/16 v6, 0x7

    rem-long/2addr v4, v6

    long-to-int v4, v4

    move v3, v4

    .line 343
    .local v3, "amount":I
    sget-object v4, Ljava/time/DayOfWeek;->ENUMS:[Ljava/time/DayOfWeek;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v5

    move v6, v3

    const/4 v7, 0x7

    add-int/lit8 v6, v6, 0x7

    add-int/2addr v5, v6

    const/4 v6, 0x7

    rem-int/lit8 v5, v5, 0x7

    aget-object v4, v4, v5

    move-object v0, v4

    .end local v0    # "this":Ljava/time/DayOfWeek;
    return-object v0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljava/time/DayOfWeek;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 384
    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    .line 389
    .end local v0    # "this":Ljava/time/DayOfWeek;
    :goto_0
    return-object v0

    .line 385
    .restart local v0    # "this":Ljava/time/DayOfWeek;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    .line 386
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 387
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 389
    :cond_2
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 7

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljava/time/DayOfWeek;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 259
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .line 263
    .end local v0    # "this":Ljava/time/DayOfWeek;
    :goto_0
    return-object v0

    .line 260
    .restart local v0    # "this":Ljava/time/DayOfWeek;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 261
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
