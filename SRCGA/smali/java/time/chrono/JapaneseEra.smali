.class public final Ljava/time/chrono/JapaneseEra;
.super Ljava/time/jdk8/DefaultInterfaceEra;
.source "JapaneseEra.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ERA_CONFIG:[Lsun/util/calendar/Era;

.field static final ERA_OFFSET:I = 0x2

.field public static final HEISEI:Ljava/time/chrono/JapaneseEra;

.field private static final KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

.field public static final MEIJI:Ljava/time/chrono/JapaneseEra;

.field private static final N_ERA_CONSTANTS:I

.field public static final SHOWA:Ljava/time/chrono/JapaneseEra;

.field public static final TAISHO:Ljava/time/chrono/JapaneseEra;

.field private static final serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field private final eraValue:I

.field private final transient since:Ljava/time/LocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 80
    new-instance v4, Ljava/time/chrono/JapaneseEra;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, -0x1

    const/16 v7, 0x74c

    const/16 v8, 0x9

    const/16 v9, 0x8

    invoke-static {v7, v8, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v4, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    .line 85
    new-instance v4, Ljava/time/chrono/JapaneseEra;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const/16 v7, 0x778

    const/4 v8, 0x7

    const/16 v9, 0x1e

    invoke-static {v7, v8, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v4, Ljava/time/chrono/JapaneseEra;->TAISHO:Ljava/time/chrono/JapaneseEra;

    .line 90
    new-instance v4, Ljava/time/chrono/JapaneseEra;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const/16 v7, 0x786

    const/16 v8, 0xc

    const/16 v9, 0x19

    invoke-static {v7, v8, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v4, Ljava/time/chrono/JapaneseEra;->SHOWA:Ljava/time/chrono/JapaneseEra;

    .line 95
    new-instance v4, Ljava/time/chrono/JapaneseEra;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const/16 v7, 0x7c5

    const/4 v8, 0x1

    const/16 v9, 0x8

    invoke-static {v7, v8, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v4, Ljava/time/chrono/JapaneseEra;->HEISEI:Ljava/time/chrono/JapaneseEra;

    .line 99
    sget-object v4, Ljava/time/chrono/JapaneseEra;->HEISEI:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v4}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    sput v4, Ljava/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    .line 110
    const-string v4, "japanese"

    invoke-static {v4}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v4

    check-cast v4, Lsun/util/calendar/LocalGregorianCalendar;

    move-object v0, v4

    .line 111
    .local v0, "jcal":Lsun/util/calendar/LocalGregorianCalendar;
    move-object v4, v0

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v4

    sput-object v4, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    .line 113
    sget-object v4, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v4, v4

    new-array v4, v4, [Ljava/time/chrono/JapaneseEra;

    sput-object v4, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    .line 114
    sget-object v4, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    const/4 v5, 0x0

    sget-object v6, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    aput-object v6, v4, v5

    .line 115
    sget-object v4, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    const/4 v5, 0x1

    sget-object v6, Ljava/time/chrono/JapaneseEra;->TAISHO:Ljava/time/chrono/JapaneseEra;

    aput-object v6, v4, v5

    .line 116
    sget-object v4, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    const/4 v5, 0x2

    sget-object v6, Ljava/time/chrono/JapaneseEra;->SHOWA:Ljava/time/chrono/JapaneseEra;

    aput-object v6, v4, v5

    .line 117
    sget-object v4, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    const/4 v5, 0x3

    sget-object v6, Ljava/time/chrono/JapaneseEra;->HEISEI:Ljava/time/chrono/JapaneseEra;

    aput-object v6, v4, v5

    .line 118
    sget v4, Ljava/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    move v1, v4

    .local v1, "i":I
    :goto_0
    move v4, v1

    sget-object v5, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 119
    sget-object v4, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    move v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    move-object v2, v4

    .line 120
    .local v2, "date":Lsun/util/calendar/CalendarDate;
    move-object v4, v2

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v4

    move-object v3, v4

    .line 121
    .local v3, "isoDate":Ljava/time/LocalDate;
    sget-object v4, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    move v5, v1

    new-instance v6, Ljava/time/chrono/JapaneseEra;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v1

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    aput-object v6, v4, v5

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "date":Lsun/util/calendar/CalendarDate;
    .end local v3    # "isoDate":Ljava/time/LocalDate;
    :cond_0
    return-void
.end method

.method private constructor <init>(ILjava/time/LocalDate;)V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    move v1, p1

    .local v1, "eraValue":I
    move-object v2, p2

    .local v2, "since":Ljava/time/LocalDate;
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/jdk8/DefaultInterfaceEra;-><init>()V

    .line 141
    move-object v3, v0

    move v4, v1

    iput v4, v3, Ljava/time/chrono/JapaneseEra;->eraValue:I

    .line 142
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    .line 143
    return-void
.end method

.method static from(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseEra;
    .locals 8

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "date":Ljava/time/LocalDate;
    move-object v3, v0

    sget-object v4, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    iget-object v4, v4, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date too early: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_0
    sget-object v3, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    if-ltz v3, :cond_2

    .line 240
    sget-object v3, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 241
    .local v2, "era":Ljava/time/chrono/JapaneseEra;
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 242
    move-object v3, v2

    move-object v0, v3

    .line 245
    .end local v0    # "date":Ljava/time/LocalDate;
    .end local v2    # "era":Ljava/time/chrono/JapaneseEra;
    :goto_1
    return-object v0

    .line 239
    .restart local v0    # "date":Ljava/time/LocalDate;
    .restart local v2    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 245
    .end local v2    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public static of(I)Ljava/time/chrono/JapaneseEra;
    .locals 5

    .prologue
    .line 187
    move v0, p0

    .local v0, "japaneseEra":I
    move v1, v0

    sget-object v2, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    iget v2, v2, Ljava/time/chrono/JapaneseEra;->eraValue:I

    if-lt v1, v2, :cond_0

    move v1, v0

    const/4 v2, 0x2

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 188
    :cond_0
    new-instance v1, Ljava/time/DateTimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "japaneseEra is invalid"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_1
    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    move v2, v0

    invoke-static {v2}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v2

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "japaneseEra":I
    return-object v0
.end method

.method private static ordinal(I)I
    .locals 3

    .prologue
    .line 277
    move v0, p0

    .local v0, "eraValue":I
    move v1, v0

    const/4 v2, 0x2

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    .end local v0    # "eraValue":I
    return v0
.end method

.method static privateEraFrom(Ljava/time/LocalDate;)Lsun/util/calendar/Era;
    .locals 8

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "isoDate":Ljava/time/LocalDate;
    move-object v3, v0

    sget-object v4, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    iget-object v4, v4, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Date too early: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    :cond_0
    sget-object v3, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    if-ltz v3, :cond_2

    .line 262
    sget-object v3, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 263
    .local v2, "era":Ljava/time/chrono/JapaneseEra;
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 264
    sget-object v3, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    move v4, v1

    aget-object v3, v3, v4

    move-object v0, v3

    .line 267
    .end local v0    # "isoDate":Ljava/time/LocalDate;
    .end local v2    # "era":Ljava/time/chrono/JapaneseEra;
    :goto_1
    return-object v0

    .line 261
    .restart local v0    # "isoDate":Ljava/time/LocalDate;
    .restart local v2    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 267
    .end local v2    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseEra;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v2, v0

    invoke-interface {v2}, Ljava/io/DataInput;->readByte()B

    move-result v2

    move v1, v2

    .line 354
    .local v1, "eraValue":B
    move v2, v1

    invoke-static {v2}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    move-object v3, v0

    :try_start_0
    iget v3, v3, Ljava/time/chrono/JapaneseEra;->eraValue:I

    invoke-static {v3}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseEra;
    return-object v0

    .line 156
    .restart local v0    # "this":Ljava/time/chrono/JapaneseEra;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 157
    .local v1, "e":Ljava/time/DateTimeException;
    new-instance v3, Ljava/io/InvalidObjectException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid era"

    invoke-direct {v4, v5}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 158
    .local v2, "ex":Ljava/io/InvalidObjectException;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 159
    move-object v3, v2

    throw v3
.end method

.method static toJapaneseEra(Lsun/util/calendar/Era;)Ljava/time/chrono/JapaneseEra;
    .locals 4

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "privateEra":Lsun/util/calendar/Era;
    sget-object v2, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v2, v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    if-ltz v2, :cond_1

    .line 250
    sget-object v2, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    move v3, v1

    aget-object v2, v2, v3

    move-object v3, v0

    invoke-virtual {v2, v3}, Lsun/util/calendar/Era;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    sget-object v2, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .line 254
    .end local v0    # "privateEra":Lsun/util/calendar/Era;
    :goto_1
    return-object v0

    .line 249
    .restart local v0    # "privateEra":Lsun/util/calendar/Era;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 254
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/chrono/JapaneseEra;
    .locals 10

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "japaneseEra":Ljava/lang/String;
    move-object v5, v0

    const-string v6, "japaneseEra"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 205
    sget-object v5, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 206
    .local v4, "era":Ljava/time/chrono/JapaneseEra;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "japaneseEra":Ljava/lang/String;
    return-object v0

    .line 205
    .restart local v0    # "japaneseEra":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .end local v4    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Era not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static values()[Ljava/time/chrono/JapaneseEra;
    .locals 2

    .prologue
    .line 225
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/chrono/JapaneseEra;

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    new-instance v1, Ljava/time/chrono/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseEra;
    return-object v0
.end method


# virtual methods
.method endDate()Ljava/time/LocalDate;
    .locals 6

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/JapaneseEra;->eraValue:I

    invoke-static {v3}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v3

    move v1, v3

    .line 294
    .local v1, "ordinal":I
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v3

    move-object v2, v3

    .line 295
    .local v2, "eras":[Ljava/time/chrono/JapaneseEra;
    move v3, v1

    move-object v4, v2

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_0

    .line 296
    sget-object v3, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    move-object v0, v3

    .line 298
    .end local v0    # "this":Ljava/time/chrono/JapaneseEra;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/JapaneseEra;
    :cond_0
    move-object v3, v2

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method getAbbreviation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v2

    move v1, v2

    .line 327
    .local v1, "index":I
    move v2, v1

    if-nez v2, :cond_0

    .line 328
    const-string v2, ""

    move-object v0, v2

    .line 330
    .end local v0    # "this":Ljava/time/chrono/JapaneseEra;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/JapaneseEra;
    :cond_0
    sget-object v2, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    move v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v2

    move v1, v2

    .line 335
    .local v1, "index":I
    sget-object v2, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    move v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseEra;
    return-object v0
.end method

.method getPrivateEra()Lsun/util/calendar/Era;
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    sget-object v1, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/JapaneseEra;->eraValue:I

    invoke-static {v2}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v2

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseEra;
    return-object v0
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    move-object v1, v0

    iget v1, v1, Ljava/time/chrono/JapaneseEra;->eraValue:I

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseEra;
    return v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 319
    sget-object v2, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .line 321
    .end local v0    # "this":Ljava/time/chrono/JapaneseEra;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/JapaneseEra;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceEra;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method startDate()Ljava/time/LocalDate;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseEra;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseEra;
    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseEra;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 350
    return-void
.end method
