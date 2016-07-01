.class public final Ljava/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatter$ClassicFormat;
    }
.end annotation


# static fields
.field public static final BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/Period;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private final chrono:Ljava/time/chrono/Chronology;

.field private final decimalStyle:Ljava/time/format/DecimalStyle;

.field private final locale:Ljava/util/Locale;

.field private final printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

.field private final resolverFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field private final resolverStyle:Ljava/time/format/ResolverStyle;

.field private final zone:Ljava/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 128
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x4

    const/16 v6, 0xa

    sget-object v7, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 129
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    .line 130
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x2

    .line 131
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    .line 132
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x2

    .line 133
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 134
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 154
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 155
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 156
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 158
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE:Ljava/time/format/DateTimeFormatter;

    .line 181
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 182
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 183
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 186
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_DATE:Ljava/time/format/DateTimeFormatter;

    .line 215
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x2

    .line 216
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    .line 217
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x2

    .line 218
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    .line 220
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x2

    .line 221
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/4 v7, 0x1

    .line 223
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 224
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 244
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 245
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 246
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 247
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 248
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

    .line 271
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 272
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 273
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 274
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 276
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_TIME:Ljava/time/format/DateTimeFormatter;

    .line 295
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 296
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 297
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x54

    .line 298
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 299
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 300
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 320
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 321
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 322
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 323
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 324
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 347
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 348
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 349
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x5b

    .line 350
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 351
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 352
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    .line 353
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 354
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 382
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v4, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 383
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 384
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 385
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 386
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x5b

    .line 387
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 388
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 389
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    .line 390
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 391
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 419
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 420
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x4

    const/16 v6, 0xa

    sget-object v7, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 421
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    .line 422
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x3

    .line 423
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 424
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 426
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 458
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 459
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    const/4 v5, 0x4

    const/16 v6, 0xa

    sget-object v7, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 460
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const-string v4, "-W"

    .line 461
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    const/4 v5, 0x2

    .line 462
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    .line 463
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x1

    .line 464
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 465
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 466
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 467
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    .line 504
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 505
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 506
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInstant()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 507
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    .line 535
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 536
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x4

    .line 537
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x2

    .line 538
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x2

    .line 539
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 540
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const-string v4, "+HHMMss"

    const-string v5, "Z"

    .line 541
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 542
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

    .line 588
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 589
    .local v1, "dow":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object v3, v1

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Mon"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 590
    move-object v3, v1

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Tue"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 591
    move-object v3, v1

    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Wed"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 592
    move-object v3, v1

    const-wide/16 v4, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Thu"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 593
    move-object v3, v1

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Fri"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 594
    move-object v3, v1

    const-wide/16 v4, 0x6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Sat"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 595
    move-object v3, v1

    const-wide/16 v4, 0x7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Sun"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 596
    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 597
    .local v2, "moy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object v3, v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Jan"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 598
    move-object v3, v2

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Feb"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 599
    move-object v3, v2

    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Mar"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 600
    move-object v3, v2

    const-wide/16 v4, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Apr"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 601
    move-object v3, v2

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "May"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 602
    move-object v3, v2

    const-wide/16 v4, 0x6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Jun"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 603
    move-object v3, v2

    const-wide/16 v4, 0x7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Jul"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 604
    move-object v3, v2

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Aug"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 605
    move-object v3, v2

    const-wide/16 v4, 0x9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Sep"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 606
    move-object v3, v2

    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Oct"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 607
    move-object v3, v2

    const-wide/16 v4, 0xb

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Nov"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 608
    move-object v3, v2

    const-wide/16 v4, 0xc

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Dec"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 609
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 610
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 611
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->parseLenient()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 612
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object v5, v1

    .line 613
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const-string v4, ", "

    .line 614
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 615
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x1

    const/4 v6, 0x2

    sget-object v7, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    .line 616
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x20

    .line 617
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v5, v2

    .line 618
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x20

    .line 619
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x4

    .line 620
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x20

    .line 621
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x2

    .line 622
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    .line 623
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x2

    .line 624
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 625
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    .line 626
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const/4 v5, 0x2

    .line 627
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    .line 628
    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const/16 v4, 0x20

    .line 629
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    const-string v4, "+HHMM"

    const-string v5, "GMT"

    .line 630
    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    sget-object v4, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    .line 631
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    sput-object v3, Ljava/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 935
    new-instance v3, Ljava/time/format/DateTimeFormatter$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatter$1;-><init>()V

    sput-object v3, Ljava/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;

    .line 978
    new-instance v3, Ljava/time/format/DateTimeFormatter$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatter$2;-><init>()V

    sput-object v3, Ljava/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method constructor <init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;",
            "Ljava/util/Locale;",
            "Ljava/time/format/DecimalStyle;",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/ZoneId;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1032
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "printerParser":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    move-object v2, p2

    .local v2, "locale":Ljava/util/Locale;
    move-object v3, p3

    .local v3, "decimalStyle":Ljava/time/format/DecimalStyle;
    move-object v4, p4

    .local v4, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object/from16 v5, p5

    .local v5, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    move-object/from16 v6, p6

    .local v6, "chrono":Ljava/time/chrono/Chronology;
    move-object/from16 v7, p7

    .local v7, "zone":Ljava/time/ZoneId;
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 1033
    move-object v8, v0

    move-object v9, v1

    const-string v10, "printerParser"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object v9, v8, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    .line 1034
    move-object v8, v0

    move-object v9, v2

    const-string v10, "locale"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Locale;

    iput-object v9, v8, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 1035
    move-object v8, v0

    move-object v9, v3

    const-string v10, "decimalStyle"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/time/format/DecimalStyle;

    iput-object v9, v8, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    .line 1036
    move-object v8, v0

    move-object v9, v4

    const-string v10, "resolverStyle"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/time/format/ResolverStyle;

    iput-object v9, v8, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    .line 1037
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    .line 1038
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    .line 1039
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    .line 1040
    return-void
.end method

.method static synthetic access$000(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeBuilder;
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "x0":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "x2":Ljava/text/ParsePosition;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeBuilder;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method static synthetic access$100(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext$Parsed;
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "x0":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "x2":Ljava/text/ParsePosition;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method private createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;
    .locals 11

    .prologue
    .line 1554
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v4, ""

    move-object v3, v4

    .line 1555
    .local v3, "abbr":Ljava/lang/String;
    move-object v4, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x40

    if-le v4, v5, :cond_0

    .line 1556
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x40

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1560
    :goto_0
    new-instance v4, Ljava/time/format/DateTimeParseException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Text \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' could not be parsed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    move-object v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0

    .line 1558
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public static ofLocalizedDate(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 5

    .prologue
    .line 812
    move-object v0, p0

    .local v0, "dateStyle":Ljava/time/format/FormatStyle;
    move-object v1, v0

    const-string v2, "dateStyle"

    invoke-static {v1, v2}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 813
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 814
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "dateStyle":Ljava/time/format/FormatStyle;
    return-object v0
.end method

.method public static ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 5

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "dateTimeStyle":Ljava/time/format/FormatStyle;
    move-object v1, v0

    const-string v2, "dateTimeStyle"

    invoke-static {v1, v2}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 861
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 862
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "dateTimeStyle":Ljava/time/format/FormatStyle;
    return-object v0
.end method

.method public static ofLocalizedDateTime(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 6

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "dateStyle":Ljava/time/format/FormatStyle;
    move-object v1, p1

    .local v1, "timeStyle":Ljava/time/format/FormatStyle;
    move-object v2, v0

    const-string v3, "dateStyle"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 886
    move-object v2, v1

    const-string v3, "timeStyle"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 887
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 888
    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "dateStyle":Ljava/time/format/FormatStyle;
    return-object v0
.end method

.method public static ofLocalizedTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 5

    .prologue
    .line 836
    move-object v0, p0

    .local v0, "timeStyle":Ljava/time/format/FormatStyle;
    move-object v1, v0

    const-string v2, "timeStyle"

    invoke-static {v1, v2}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 837
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v2, 0x0

    move-object v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 838
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "timeStyle":Ljava/time/format/FormatStyle;
    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;
    .locals 4

    .prologue
    .line 768
    move-object v0, p0

    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "pattern":Ljava/lang/String;
    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 5

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "pattern":Ljava/lang/String;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "pattern":Ljava/lang/String;
    return-object v0
.end method

.method private parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeBuilder;
    .locals 12

    .prologue
    .line 1578
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "position":Ljava/text/ParsePosition;
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    :goto_0
    move-object v3, v6

    .line 1579
    .local v3, "pos":Ljava/text/ParsePosition;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v6

    move-object v4, v6

    .line 1580
    .local v4, "result":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v6

    if-gez v6, :cond_0

    move-object v6, v2

    if-nez v6, :cond_4

    move-object v6, v3

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    move-object v7, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 1581
    :cond_0
    const-string v6, ""

    move-object v5, v6

    .line 1582
    .local v5, "abbr":Ljava/lang/String;
    move-object v6, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x40

    if-le v6, v7, :cond_2

    .line 1583
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    const/4 v8, 0x0

    const/16 v9, 0x40

    invoke-interface {v7, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1587
    :goto_1
    move-object v6, v3

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v6

    if-ltz v6, :cond_3

    .line 1588
    new-instance v6, Ljava/time/format/DateTimeParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Text \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' could not be parsed at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    .line 1589
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v6

    .line 1578
    .end local v3    # "pos":Ljava/text/ParsePosition;
    .end local v4    # "result":Ljava/time/format/DateTimeParseContext$Parsed;
    .end local v5    # "abbr":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/text/ParsePosition;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/text/ParsePosition;-><init>(I)V

    goto/16 :goto_0

    .line 1585
    .restart local v3    # "pos":Ljava/text/ParsePosition;
    .restart local v4    # "result":Ljava/time/format/DateTimeParseContext$Parsed;
    .restart local v5    # "abbr":Ljava/lang/String;
    :cond_2
    move-object v6, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 1591
    :cond_3
    new-instance v6, Ljava/time/format/DateTimeParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Text \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    .line 1592
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v6

    .line 1595
    .end local v5    # "abbr":Ljava/lang/String;
    :cond_4
    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/format/DateTimeParseContext$Parsed;->toBuilder()Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method private parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext$Parsed;
    .locals 10

    .prologue
    .line 1642
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "position":Ljava/text/ParsePosition;
    move-object v5, v1

    const-string v6, "text"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1643
    move-object v5, v2

    const-string v6, "position"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1644
    new-instance v5, Ljava/time/format/DateTimeParseContext;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/time/format/DateTimeParseContext;-><init>(Ljava/time/format/DateTimeFormatter;)V

    move-object v3, v5

    .line 1645
    .local v3, "context":Ljava/time/format/DateTimeParseContext;
    move-object v5, v2

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    move v4, v5

    .line 1646
    .local v4, "pos":I
    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v6, v3

    move-object v7, v1

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v5

    move v4, v5

    .line 1647
    move v5, v4

    if-gez v5, :cond_0

    .line 1648
    move-object v5, v2

    move v6, v4

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1649
    const/4 v5, 0x0

    move-object v0, v5

    .line 1652
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :goto_0
    return-object v0

    .line 1651
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :cond_0
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1652
    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/format/DateTimeParseContext;->toParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public static final parsedExcessDays()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/Period;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    sget-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final parsedLeapSecond()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 976
    sget-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1359
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .line 1360
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V

    .line 1361
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method public formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    .locals 10

    .prologue
    .line 1381
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, p2

    .local v2, "appendable":Ljava/lang/Appendable;
    move-object v5, v1

    const-string v6, "temporal"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1382
    move-object v5, v2

    const-string v6, "appendable"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1384
    :try_start_0
    new-instance v5, Ljava/time/format/DateTimePrintContext;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v0

    invoke-direct {v6, v7, v8}, Ljava/time/format/DateTimePrintContext;-><init>(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)V

    move-object v3, v5

    .line 1385
    .local v3, "context":Ljava/time/format/DateTimePrintContext;
    move-object v5, v2

    instance-of v5, v5, Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    .line 1386
    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v6, v3

    move-object v7, v2

    check-cast v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v5

    .line 1395
    .line 1396
    :goto_0
    return-void

    .line 1389
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v5

    .line 1390
    .local v4, "buf":Ljava/lang/StringBuilder;
    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v5

    .line 1391
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1393
    .end local v3    # "context":Ljava/time/format/DateTimePrintContext;
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1394
    .local v3, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/time/DateTimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getChronology()Ljava/time/chrono/Chronology;
    .locals 2

    .prologue
    .line 1109
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method public getDecimalStyle()Ljava/time/format/DecimalStyle;
    .locals 2

    .prologue
    .line 1080
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 1052
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method public getResolverFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1244
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method public getResolverStyle()Ljava/time/format/ResolverStyle;
    .locals 2

    .prologue
    .line 1202
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 2

    .prologue
    .line 1154
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/time/temporal/TemporalQuery",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1489
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "type":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TT;>;"
    move-object v4, v1

    const-string v5, "text"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1490
    move-object v4, v2

    const-string v5, "type"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1492
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {v4, v5, v6}, Ljava/time/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeBuilder;->resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/format/DateTimeBuilder;

    move-result-object v4

    move-object v3, v4

    .line 1493
    .local v3, "builder":Ljava/time/format/DateTimeBuilder;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeBuilder;->build(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0

    .line 1494
    .end local v3    # "builder":Ljava/time/format/DateTimeBuilder;
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1495
    .local v3, "ex":Ljava/time/format/DateTimeParseException;
    move-object v4, v3

    throw v4

    .line 1496
    .end local v3    # "ex":Ljava/time/format/DateTimeParseException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 1497
    .local v3, "ex":Ljava/lang/RuntimeException;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v4

    throw v4
.end method

.method public parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;
    .locals 6

    .prologue
    .line 1415
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v3, v1

    const-string v4, "text"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1417
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeBuilder;->resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/format/DateTimeBuilder;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0

    .line 1418
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1419
    .local v2, "ex":Ljava/time/format/DateTimeParseException;
    move-object v3, v2

    throw v3

    .line 1420
    .end local v2    # "ex":Ljava/time/format/DateTimeParseException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1421
    .local v2, "ex":Ljava/lang/RuntimeException;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v3

    throw v3
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .locals 7

    .prologue
    .line 1456
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "position":Ljava/text/ParsePosition;
    move-object v4, v1

    const-string v5, "text"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1457
    move-object v4, v2

    const-string v5, "position"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1459
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    :try_start_0
    invoke-direct {v4, v5, v6}, Ljava/time/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeBuilder;->resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/format/DateTimeBuilder;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0

    .line 1460
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1461
    .local v3, "ex":Ljava/time/format/DateTimeParseException;
    move-object v4, v3

    throw v4

    .line 1462
    .end local v3    # "ex":Ljava/time/format/DateTimeParseException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 1463
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    move-object v4, v3

    throw v4

    .line 1464
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 1465
    .local v3, "ex":Ljava/lang/RuntimeException;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v4

    throw v4
.end method

.method public varargs parseBest(Ljava/lang/CharSequence;[Ljava/time/temporal/TemporalQuery;)Ljava/time/temporal/TemporalAccessor;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/time/temporal/TemporalQuery",
            "<*>;)",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .prologue
    .line 1531
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object/from16 v2, p2

    .local v2, "types":[Ljava/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    move-object v9, v1

    const-string v10, "text"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1532
    move-object v9, v2

    const-string v10, "types"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1533
    move-object v9, v2

    array-length v9, v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    .line 1534
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "At least two types must be specified"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1537
    :cond_0
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    :try_start_0
    invoke-direct {v9, v10, v11}, Ljava/time/format/DateTimeFormatter;->parseToBuilder(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v11, v0

    iget-object v11, v11, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v9, v10, v11}, Ljava/time/format/DateTimeBuilder;->resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/format/DateTimeBuilder;

    move-result-object v9

    move-object v3, v9

    .line 1538
    .local v3, "builder":Ljava/time/format/DateTimeBuilder;
    move-object v9, v2

    move-object v4, v9

    move-object v9, v4

    array-length v9, v9

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_1

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v7, v9

    .line 1540
    .local v7, "type":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    move-object v9, v3

    move-object v10, v7

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/time/format/DateTimeBuilder;->build(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/time/temporal/TemporalAccessor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v9

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0

    .line 1541
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 1538
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1545
    .end local v7    # "type":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    :cond_1
    :try_start_2
    new-instance v9, Ljava/time/DateTimeException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to convert parsed text to any specified type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1546
    .end local v3    # "builder":Ljava/time/format/DateTimeBuilder;
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 1547
    .local v3, "ex":Ljava/time/format/DateTimeParseException;
    move-object v9, v3

    throw v9

    .line 1548
    .end local v3    # "ex":Ljava/time/format/DateTimeParseException;
    :catch_2
    move-exception v9

    move-object v3, v9

    .line 1549
    .local v3, "ex":Ljava/lang/RuntimeException;
    move-object v9, v0

    move-object v10, v1

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v9

    throw v9
.end method

.method public parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .locals 6

    .prologue
    .line 1638
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "position":Ljava/text/ParsePosition;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method public toFormat()Ljava/text/Format;
    .locals 6

    .prologue
    .line 1680
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    new-instance v1, Ljava/time/format/DateTimeFormatter$ClassicFormat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method public toFormat(Ljava/time/temporal/TemporalQuery;)Ljava/text/Format;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalQuery",
            "<*>;)",
            "Ljava/text/Format;"
        }
    .end annotation

    .prologue
    .line 1700
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    move-object v2, v1

    const-string v3, "query"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1701
    new-instance v2, Ljava/time/format/DateTimeFormatter$ClassicFormat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .locals 4

    .prologue
    .line 1663
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move v1, p1

    .local v1, "optional":Z
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->withOptional(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1712
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1713
    .local v1, "pattern":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :cond_0
    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .locals 12

    .prologue
    .line 1137
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "chrono":Ljava/time/chrono/Chronology;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1138
    move-object v2, v0

    move-object v0, v2

    .line 1140
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :cond_0
    new-instance v2, Ljava/time/format/DateTimeFormatter;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v3 .. v10}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 12

    .prologue
    .line 1092
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "decimalStyle":Ljava/time/format/DecimalStyle;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/format/DecimalStyle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1093
    move-object v2, v0

    move-object v0, v2

    .line 1095
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :cond_0
    new-instance v2, Ljava/time/format/DateTimeFormatter;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v3 .. v10}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 12

    .prologue
    .line 1067
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    move-object v2, v0

    move-object v0, v2

    .line 1070
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :cond_0
    new-instance v2, Ljava/time/format/DateTimeFormatter;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v3 .. v10}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public withResolverFields(Ljava/util/Set;)Ljava/time/format/DateTimeFormatter;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/format/DateTimeFormatter;"
        }
    .end annotation

    .prologue
    .line 1338
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1339
    new-instance v2, Ljava/time/format/DateTimeFormatter;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v3 .. v10}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v2

    .line 1345
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :goto_0
    return-object v0

    .line 1341
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1342
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 1344
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    move-object v1, v2

    .line 1345
    new-instance v2, Ljava/time/format/DateTimeFormatter;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v3 .. v10}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public varargs withResolverFields([Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatter;
    .locals 13

    .prologue
    .line 1287
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "resolverFields":[Ljava/time/temporal/TemporalField;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1288
    new-instance v3, Ljava/time/format/DateTimeFormatter;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v11, v0

    iget-object v11, v11, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v4 .. v11}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v3

    .line 1295
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :goto_0
    return-object v0

    .line 1290
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 1291
    .local v2, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1292
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 1294
    :cond_1
    move-object v3, v2

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    move-object v2, v3

    .line 1295
    new-instance v3, Ljava/time/format/DateTimeFormatter;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v11, v0

    iget-object v11, v11, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v4 .. v11}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public withResolverStyle(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 12

    .prologue
    .line 1225
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v2, v1

    const-string v3, "resolverStyle"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1226
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1227
    move-object v2, v0

    move-object v0, v2

    .line 1229
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :cond_0
    new-instance v2, Ljava/time/format/DateTimeFormatter;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v3 .. v10}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;
    .locals 12

    .prologue
    .line 1184
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1185
    move-object v2, v0

    move-object v0, v2

    .line 1187
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter;
    :cond_0
    new-instance v2, Ljava/time/format/DateTimeFormatter;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v2

    goto :goto_0
.end method
