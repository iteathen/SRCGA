.class public final enum Ljava/time/Month;
.super Ljava/lang/Enum;
.source "Month.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/Month;",
        ">;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/Month;

.field public static final enum APRIL:Ljava/time/Month;

.field public static final enum AUGUST:Ljava/time/Month;

.field public static final enum DECEMBER:Ljava/time/Month;

.field private static final ENUMS:[Ljava/time/Month;

.field public static final enum FEBRUARY:Ljava/time/Month;

.field public static final FROM:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/Month;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum JANUARY:Ljava/time/Month;

.field public static final enum JULY:Ljava/time/Month;

.field public static final enum JUNE:Ljava/time/Month;

.field public static final enum MARCH:Ljava/time/Month;

.field public static final enum MAY:Ljava/time/Month;

.field public static final enum NOVEMBER:Ljava/time/Month;

.field public static final enum OCTOBER:Ljava/time/Month;

.field public static final enum SEPTEMBER:Ljava/time/Month;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 81
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "JANUARY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    .line 86
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FEBRUARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    .line 91
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MARCH"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->MARCH:Ljava/time/Month;

    .line 96
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "APRIL"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->APRIL:Ljava/time/Month;

    .line 101
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MAY"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->MAY:Ljava/time/Month;

    .line 106
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "JUNE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->JUNE:Ljava/time/Month;

    .line 111
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "JULY"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->JULY:Ljava/time/Month;

    .line 116
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "AUGUST"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->AUGUST:Ljava/time/Month;

    .line 121
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SEPTEMBER"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->SEPTEMBER:Ljava/time/Month;

    .line 126
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OCTOBER"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->OCTOBER:Ljava/time/Month;

    .line 131
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NOVEMBER"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->NOVEMBER:Ljava/time/Month;

    .line 136
    new-instance v0, Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DECEMBER"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/Month;->DECEMBER:Ljava/time/Month;

    .line 75
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/time/Month;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/time/Month;->MARCH:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/time/Month;->APRIL:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljava/time/Month;->MAY:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljava/time/Month;->JUNE:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Ljava/time/Month;->JULY:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Ljava/time/Month;->AUGUST:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Ljava/time/Month;->SEPTEMBER:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Ljava/time/Month;->OCTOBER:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    sget-object v3, Ljava/time/Month;->NOVEMBER:Ljava/time/Month;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    sget-object v3, Ljava/time/Month;->DECEMBER:Ljava/time/Month;

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/Month;->$VALUES:[Ljava/time/Month;

    .line 140
    new-instance v0, Ljava/time/Month$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/time/Month$1;-><init>()V

    sput-object v0, Ljava/time/Month;->FROM:Ljava/time/temporal/TemporalQuery;

    .line 149
    invoke-static {}, Ljava/time/Month;->values()[Ljava/time/Month;

    move-result-object v0

    sput-object v0, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

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
    .line 75
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Month;
    .locals 7

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    instance-of v2, v2, Ljava/time/Month;

    if-eqz v2, :cond_0

    .line 190
    move-object v2, v0

    check-cast v2, Ljava/time/Month;

    move-object v0, v2

    .line 196
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :goto_0
    return-object v0

    .line 193
    .restart local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    :try_start_0
    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v3, v0

    invoke-static {v3}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    move-object v2, v0

    invoke-static {v2}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .line 196
    :cond_1
    move-object v2, v0

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    invoke-static {v2}, Ljava/time/Month;->of(I)Ljava/time/Month;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 197
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 198
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

    const-string v5, "Unable to obtain Month from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 199
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

.method public static of(I)Ljava/time/Month;
    .locals 6

    .prologue
    .line 164
    move v0, p0

    .local v0, "month":I
    move v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    .line 165
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

    const-string v4, "Invalid value for MonthOfYear: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_1
    sget-object v1, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

    move v2, v0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "month":I
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/Month;
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/Month;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/Month;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/Month;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Ljava/time/Month;->$VALUES:[Ljava/time/Month;

    invoke-virtual {v0}, [Ljava/time/Month;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/Month;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 7

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Adjustment only supported on ISO date-time"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 590
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/Month;->getValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Month;
    return-object v0
.end method

.method public firstDayOfYear(Z)I
    .locals 5

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move v1, p1

    .local v1, "leapYear":Z
    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 472
    .local v2, "leap":I
    sget-object v3, Ljava/time/Month$2;->$SwitchMap$java$time$Month:[I

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/Month;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 497
    const/16 v3, 0x14f

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Ljava/time/Month;
    :goto_1
    return v0

    .line 471
    .end local v2    # "leap":I
    .restart local v0    # "this":Ljava/time/Month;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 474
    .restart local v2    # "leap":I
    :pswitch_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 476
    :pswitch_1
    const/16 v3, 0x20

    move v0, v3

    goto :goto_1

    .line 478
    :pswitch_2
    const/16 v3, 0x3c

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_1

    .line 480
    :pswitch_3
    const/16 v3, 0x5b

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_1

    .line 482
    :pswitch_4
    const/16 v3, 0x79

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_1

    .line 484
    :pswitch_5
    const/16 v3, 0x98

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_1

    .line 486
    :pswitch_6
    const/16 v3, 0xb6

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_1

    .line 488
    :pswitch_7
    const/16 v3, 0xd5

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_1

    .line 490
    :pswitch_8
    const/16 v3, 0xf4

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_1

    .line 492
    :pswitch_9
    const/16 v3, 0x112

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_1

    .line 494
    :pswitch_a
    const/16 v3, 0x131

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    goto :goto_1

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public firstMonthOfQuarter()Ljava/time/Month;
    .locals 4

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    sget-object v1, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/Month;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    mul-int/lit8 v2, v2, 0x3

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Month;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 7

    .prologue
    .line 318
    move-object v1, p0

    .local v1, "this":Ljava/time/Month;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v3, v2

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne v3, v4, :cond_0

    .line 319
    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/Month;->getValue()I

    move-result v3

    move v1, v3

    .line 321
    .end local v1    # "this":Ljava/time/Month;
    :goto_0
    return v1

    .restart local v1    # "this":Ljava/time/Month;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/Month;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/Month;->getLong(Ljava/time/temporal/TemporalField;)J

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
    .line 230
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move-object v1, p1

    .local v1, "style":Ljava/time/format/TextStyle;
    move-object v2, p2

    .local v2, "locale":Ljava/util/Locale;
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

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

    .end local v0    # "this":Ljava/time/Month;
    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 348
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/Month;->getValue()I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    .line 352
    .end local v0    # "this":Ljava/time/Month;
    :goto_0
    return-wide v0

    .line 349
    .restart local v0    # "this":Ljava/time/Month;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 350
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

    .line 352
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
    .line 213
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/Month;
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 256
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 258
    .end local v0    # "this":Ljava/time/Month;
    :goto_1
    return v0

    .line 256
    .restart local v0    # "this":Ljava/time/Month;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 258
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

.method public length(Z)I
    .locals 4

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move v1, p1

    .local v1, "leapYear":Z
    sget-object v2, Ljava/time/Month$2;->$SwitchMap$java$time$Month:[I

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/Month;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 410
    const/16 v2, 0x1f

    move v0, v2

    .end local v0    # "this":Ljava/time/Month;
    :goto_0
    return v0

    .line 403
    .restart local v0    # "this":Ljava/time/Month;
    :pswitch_0
    move v2, v1

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x1c

    goto :goto_1

    .line 408
    :pswitch_1
    const/16 v2, 0x1e

    move v0, v2

    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public maxLength()I
    .locals 3

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    sget-object v1, Ljava/time/Month$2;->$SwitchMap$java$time$Month:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/Month;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 456
    const/16 v1, 0x1f

    move v0, v1

    .end local v0    # "this":Ljava/time/Month;
    :goto_0
    return v0

    .line 449
    .restart local v0    # "this":Ljava/time/Month;
    :pswitch_0
    const/16 v1, 0x1d

    move v0, v1

    goto :goto_0

    .line 454
    :pswitch_1
    const/16 v1, 0x1e

    move v0, v1

    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public minLength()I
    .locals 3

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    sget-object v1, Ljava/time/Month$2;->$SwitchMap$java$time$Month:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/Month;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 433
    const/16 v1, 0x1f

    move v0, v1

    .end local v0    # "this":Ljava/time/Month;
    :goto_0
    return v0

    .line 426
    .restart local v0    # "this":Ljava/time/Month;
    :pswitch_0
    const/16 v1, 0x1c

    move v0, v1

    goto :goto_0

    .line 431
    :pswitch_1
    const/16 v1, 0x1e

    move v0, v1

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public minus(J)Ljava/time/Month;
    .locals 9

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move-wide v1, p1

    .local v1, "months":J
    move-object v3, v0

    move-wide v4, v1

    const-wide/16 v6, 0xc

    rem-long/2addr v4, v6

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Month;->plus(J)Ljava/time/Month;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Month;
    return-object v0
.end method

.method public plus(J)Ljava/time/Month;
    .locals 9

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move-wide v1, p1

    .local v1, "months":J
    move-wide v4, v1

    const-wide/16 v6, 0xc

    rem-long/2addr v4, v6

    long-to-int v4, v4

    move v3, v4

    .line 369
    .local v3, "amount":I
    sget-object v4, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/time/Month;->ordinal()I

    move-result v5

    move v6, v3

    const/16 v7, 0xc

    add-int/lit8 v6, v6, 0xc

    add-int/2addr v5, v6

    const/16 v6, 0xc

    rem-int/lit8 v5, v5, 0xc

    aget-object v4, v4, v5

    move-object v0, v4

    .end local v0    # "this":Ljava/time/Month;
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
    .line 539
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 540
    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v0, v2

    .line 547
    .end local v0    # "this":Ljava/time/Month;
    :goto_0
    return-object v0

    .line 541
    .restart local v0    # "this":Ljava/time/Month;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 542
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    goto :goto_0

    .line 543
    :cond_1
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    .line 544
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 545
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 547
    :cond_3
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
    .line 284
    move-object v0, p0

    .local v0, "this":Ljava/time/Month;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 285
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .line 289
    .end local v0    # "this":Ljava/time/Month;
    :goto_0
    return-object v0

    .line 286
    .restart local v0    # "this":Ljava/time/Month;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 287
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

    .line 289
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
