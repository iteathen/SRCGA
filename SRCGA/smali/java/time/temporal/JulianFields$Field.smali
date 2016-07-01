.class final enum Ljava/time/temporal/JulianFields$Field;
.super Ljava/lang/Enum;
.source "JulianFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/JulianFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/JulianFields$Field;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/JulianFields$Field;

.field public static final enum JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

.field public static final enum MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

.field public static final enum RATA_DIE:Ljava/time/temporal/JulianFields$Field;


# instance fields
.field private final baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final name:Ljava/lang/String;

.field private final offset:J

.field private final range:Ljava/time/temporal/ValueRange;

.field private final rangeUnit:Ljava/time/temporal/TemporalUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 156
    new-instance v1, Ljava/time/temporal/JulianFields$Field;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "JULIAN_DAY"

    const/4 v4, 0x0

    const-string v5, "JulianDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v8, 0x253d8c

    invoke-direct/range {v2 .. v9}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v1, Ljava/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    .line 161
    new-instance v1, Ljava/time/temporal/JulianFields$Field;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "MODIFIED_JULIAN_DAY"

    const/4 v4, 0x1

    const-string v5, "ModifiedJulianDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v8, 0x9e8b

    invoke-direct/range {v2 .. v9}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v1, Ljava/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    .line 165
    new-instance v1, Ljava/time/temporal/JulianFields$Field;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "RATA_DIE"

    const/4 v4, 0x2

    const-string v5, "RataDie"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v8, 0xaf93b

    invoke-direct/range {v2 .. v9}, Ljava/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V

    sput-object v1, Ljava/time/temporal/JulianFields$Field;->RATA_DIE:Ljava/time/temporal/JulianFields$Field;

    .line 151
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/time/temporal/JulianFields$Field;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x0

    sget-object v4, Ljava/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x1

    sget-object v4, Ljava/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x2

    sget-object v4, Ljava/time/temporal/JulianFields$Field;->RATA_DIE:Ljava/time/temporal/JulianFields$Field;

    aput-object v4, v2, v3

    sput-object v1, Ljava/time/temporal/JulianFields$Field;->$VALUES:[Ljava/time/temporal/JulianFields$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/TemporalUnit;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 175
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/temporal/JulianFields$Field;
    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    .local v4, "name":Ljava/lang/String;
    move-object/from16 v5, p4

    .local v5, "baseUnit":Ljava/time/temporal/TemporalUnit;
    move-object/from16 v6, p5

    .local v6, "rangeUnit":Ljava/time/temporal/TemporalUnit;
    move-wide/from16 v7, p6

    .local v7, "offset":J
    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    move-object v9, v1

    move-object v10, v4

    iput-object v10, v9, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    .line 177
    move-object v9, v1

    move-object v10, v5

    iput-object v10, v9, Ljava/time/temporal/JulianFields$Field;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 178
    move-object v9, v1

    move-object v10, v6

    iput-object v10, v9, Ljava/time/temporal/JulianFields$Field;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 179
    move-object v9, v1

    const-wide v10, -0x550a313cdaL

    move-wide v12, v7

    add-long/2addr v10, v12

    const-wide v12, 0x550a1b48f7L

    move-wide v14, v7

    add-long/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v10

    iput-object v10, v9, Ljava/time/temporal/JulianFields$Field;->range:Ljava/time/temporal/ValueRange;

    .line 180
    move-object v9, v1

    move-wide v10, v7

    iput-wide v10, v9, Ljava/time/temporal/JulianFields$Field;->offset:J

    .line 181
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/JulianFields$Field;
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/temporal/JulianFields$Field;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/JulianFields$Field;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/temporal/JulianFields$Field;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->$VALUES:[Ljava/time/temporal/JulianFields$Field;

    invoke-virtual {v0}, [Ljava/time/temporal/JulianFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/JulianFields$Field;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    move-object v1, p1

    .local v1, "dateTime":Ljava/time/temporal/Temporal;, "TR;"
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    new-instance v4, Ljava/time/DateTimeException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_0
    move-object v4, v1

    sget-object v5, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    move-wide v6, v2

    move-object v8, v0

    iget-wide v8, v8, Ljava/time/temporal/JulianFields$Field;->offset:J

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return-object v0
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/JulianFields$Field;->baseUnit:Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v1

    const-string v3, "locale"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 240
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/temporal/JulianFields$Field;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return-object v0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 6

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    move-object v4, v0

    iget-wide v4, v4, Ljava/time/temporal/JulianFields$Field;->offset:J

    add-long/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return-wide v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/JulianFields$Field;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return-object v0
.end method

.method public isDateBased()Z
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return v0
.end method

.method public isTimeBased()Z
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return v0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/JulianFields$Field;->range:Ljava/time/temporal/ValueRange;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 7

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/temporal/JulianFields$Field;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
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

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/temporal/JulianFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return-object v0
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    move-object v1, p1

    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object v2, p2

    .local v2, "partialTemporal":Ljava/time/temporal/TemporalAccessor;
    move-object v3, p3

    .local v3, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v7, v1

    move-object v8, v0

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide v4, v7

    .line 248
    .local v4, "value":J
    move-object v7, v2

    invoke-static {v7}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v7

    move-object v6, v7

    .line 249
    .local v6, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v7, v6

    move-wide v8, v4

    move-object v10, v0

    iget-wide v10, v10, Ljava/time/temporal/JulianFields$Field;->offset:J

    invoke-static {v8, v9, v10, v11}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/time/chrono/AbstractChronology;->dateEpochDay(J)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields$Field;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/JulianFields$Field;
    return-object v0
.end method
