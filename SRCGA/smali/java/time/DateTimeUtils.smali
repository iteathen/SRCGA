.class public final Ljava/time/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljava/time/DateTimeUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static toDate(Ljava/time/Instant;)Ljava/util/Date;
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "instant":Ljava/time/Instant;
    :try_start_0
    new-instance v2, Ljava/util/Date;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .end local v0    # "instant":Ljava/time/Instant;
    return-object v0

    .line 76
    .restart local v0    # "instant":Ljava/time/Instant;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 77
    .local v1, "ex":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static toGregorianCalendar(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;
    .locals 11

    .prologue
    .line 120
    move-object v1, p0

    .local v1, "zdt":Ljava/time/ZonedDateTime;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v5

    invoke-static {v5}, Ljava/time/DateTimeUtils;->toTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object v5

    move-object v2, v5

    .line 121
    .local v2, "zone":Ljava/util/TimeZone;
    new-instance v5, Ljava/util/GregorianCalendar;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    move-object v3, v5

    .line 122
    .local v3, "cal":Ljava/util/GregorianCalendar;
    move-object v5, v3

    new-instance v6, Ljava/util/Date;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-wide/high16 v8, -0x8000000000000000L

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 123
    move-object v5, v3

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 124
    move-object v5, v3

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 126
    move-object v5, v3

    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    move-object v5, v3

    move-object v1, v5

    .end local v1    # "zdt":Ljava/time/ZonedDateTime;
    return-object v1

    .line 127
    .restart local v1    # "zdt":Ljava/time/ZonedDateTime;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 128
    .local v4, "ex":Ljava/lang/ArithmeticException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static toInstant(Ljava/sql/Timestamp;)Ljava/time/Instant;
    .locals 6

    .prologue
    .line 266
    move-object v1, p0

    .local v1, "sqlTimestamp":Ljava/sql/Timestamp;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/sql/Timestamp;->getNanos()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "sqlTimestamp":Ljava/sql/Timestamp;
    return-object v1
.end method

.method public static toInstant(Ljava/util/Calendar;)Ljava/time/Instant;
    .locals 4

    .prologue
    .line 89
    move-object v1, p0

    .local v1, "calendar":Ljava/util/Calendar;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "calendar":Ljava/util/Calendar;
    return-object v1
.end method

.method public static toInstant(Ljava/util/Date;)Ljava/time/Instant;
    .locals 4

    .prologue
    .line 61
    move-object v1, p0

    .local v1, "utilDate":Ljava/util/Date;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "utilDate":Ljava/util/Date;
    return-object v1
.end method

.method public static toLocalDate(Ljava/sql/Date;)Ljava/time/LocalDate;
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "sqlDate":Ljava/sql/Date;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/sql/Date;->getYear()I

    move-result v1

    const/16 v2, 0x76c

    add-int/lit16 v1, v1, 0x76c

    move-object v2, v0

    invoke-virtual {v2}, Ljava/sql/Date;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/sql/Date;->getDate()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "sqlDate":Ljava/sql/Date;
    return-object v0
.end method

.method public static toLocalDateTime(Ljava/sql/Timestamp;)Ljava/time/LocalDateTime;
    .locals 8

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "sqlTimestamp":Ljava/sql/Timestamp;
    move-object v1, v0

    .line 234
    invoke-virtual {v1}, Ljava/sql/Timestamp;->getYear()I

    move-result v1

    const/16 v2, 0x76c

    add-int/lit16 v1, v1, 0x76c

    move-object v2, v0

    .line 235
    invoke-virtual {v2}, Ljava/sql/Timestamp;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    .line 236
    invoke-virtual {v3}, Ljava/sql/Timestamp;->getDate()I

    move-result v3

    move-object v4, v0

    .line 237
    invoke-virtual {v4}, Ljava/sql/Timestamp;->getHours()I

    move-result v4

    move-object v5, v0

    .line 238
    invoke-virtual {v5}, Ljava/sql/Timestamp;->getMinutes()I

    move-result v5

    move-object v6, v0

    .line 239
    invoke-virtual {v6}, Ljava/sql/Timestamp;->getSeconds()I

    move-result v6

    move-object v7, v0

    .line 240
    invoke-virtual {v7}, Ljava/sql/Timestamp;->getNanos()I

    move-result v7

    .line 233
    invoke-static/range {v1 .. v7}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "sqlTimestamp":Ljava/sql/Timestamp;
    return-object v0
.end method

.method public static toLocalTime(Ljava/sql/Time;)Ljava/time/LocalTime;
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "sqlTime":Ljava/sql/Time;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/sql/Time;->getHours()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/sql/Time;->getMinutes()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/sql/Time;->getSeconds()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "sqlTime":Ljava/sql/Time;
    return-object v0
.end method

.method public static toSqlDate(Ljava/time/LocalDate;)Ljava/sql/Date;
    .locals 7

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "date":Ljava/time/LocalDate;
    new-instance v1, Ljava/sql/Date;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    const/16 v4, 0x76c

    add-int/lit16 v3, v3, -0x76c

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v0

    invoke-virtual {v5}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/sql/Date;-><init>(III)V

    move-object v0, v1

    .end local v0    # "date":Ljava/time/LocalDate;
    return-object v0
.end method

.method public static toSqlTime(Ljava/time/LocalTime;)Ljava/sql/Time;
    .locals 7

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "time":Ljava/time/LocalTime;
    new-instance v1, Ljava/sql/Time;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/time/LocalTime;->getSecond()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/sql/Time;-><init>(III)V

    move-object v0, v1

    .end local v0    # "time":Ljava/time/LocalTime;
    return-object v0
.end method

.method public static toSqlTimestamp(Ljava/time/Instant;)Ljava/sql/Timestamp;
    .locals 9

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "instant":Ljava/time/Instant;
    :try_start_0
    new-instance v2, Ljava/sql/Timestamp;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v1, v2

    .line 252
    .local v1, "ts":Ljava/sql/Timestamp;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/Instant;->getNano()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/sql/Timestamp;->setNanos(I)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "instant":Ljava/time/Instant;
    return-object v0

    .line 254
    .end local v1    # "ts":Ljava/sql/Timestamp;
    .restart local v0    # "instant":Ljava/time/Instant;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 255
    .local v1, "ex":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static toSqlTimestamp(Ljava/time/LocalDateTime;)Ljava/sql/Timestamp;
    .locals 11

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "dateTime":Ljava/time/LocalDateTime;
    new-instance v1, Ljava/sql/Timestamp;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    move-object v3, v0

    .line 216
    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getYear()I

    move-result v3

    const/16 v4, 0x76c

    add-int/lit16 v3, v3, -0x76c

    move-object v4, v0

    .line 217
    invoke-virtual {v4}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v0

    .line 218
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v5

    move-object v6, v0

    .line 219
    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getHour()I

    move-result v6

    move-object v7, v0

    .line 220
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v7

    move-object v8, v0

    .line 221
    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v8

    move-object v9, v0

    .line 222
    invoke-virtual {v9}, Ljava/time/LocalDateTime;->getNano()I

    move-result v9

    invoke-direct/range {v2 .. v9}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    move-object v0, v1

    .end local v0    # "dateTime":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public static toTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "zoneId":Ljava/time/ZoneId;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 152
    .local v1, "tzid":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 157
    :cond_1
    :goto_0
    move-object v2, v1

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "zoneId":Ljava/time/ZoneId;
    return-object v0

    .line 154
    .restart local v0    # "zoneId":Ljava/time/ZoneId;
    :cond_2
    move-object v2, v1

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    const-string v2, "UTC"

    move-object v1, v2

    goto :goto_0
.end method

.method public static toZoneId(Ljava/util/TimeZone;)Ljava/time/ZoneId;
    .locals 3

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "timeZone":Ljava/util/TimeZone;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;Ljava/util/Map;)Ljava/time/ZoneId;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "timeZone":Ljava/util/TimeZone;
    return-object v0
.end method

.method public static toZonedDateTime(Ljava/util/Calendar;)Ljava/time/ZonedDateTime;
    .locals 6

    .prologue
    .line 102
    move-object v1, p0

    .local v1, "calendar":Ljava/util/Calendar;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    move-object v2, v4

    .line 103
    .local v2, "instant":Ljava/time/Instant;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/time/DateTimeUtils;->toZoneId(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    move-result-object v4

    move-object v3, v4

    .line 104
    .local v3, "zone":Ljava/time/ZoneId;
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "calendar":Ljava/util/Calendar;
    return-object v1
.end method
