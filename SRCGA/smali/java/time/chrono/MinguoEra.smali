.class public final enum Ljava/time/chrono/MinguoEra;
.super Ljava/lang/Enum;
.source "MinguoEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/chrono/MinguoEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/chrono/MinguoEra;

.field public static final enum BEFORE_ROC:Ljava/time/chrono/MinguoEra;

.field public static final enum ROC:Ljava/time/chrono/MinguoEra;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 71
    new-instance v0, Ljava/time/chrono/MinguoEra;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BEFORE_ROC"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/time/chrono/MinguoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/MinguoEra;->BEFORE_ROC:Ljava/time/chrono/MinguoEra;

    .line 76
    new-instance v0, Ljava/time/chrono/MinguoEra;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ROC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/time/chrono/MinguoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/MinguoEra;->ROC:Ljava/time/chrono/MinguoEra;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/time/chrono/MinguoEra;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/time/chrono/MinguoEra;->BEFORE_ROC:Ljava/time/chrono/MinguoEra;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/time/chrono/MinguoEra;->ROC:Ljava/time/chrono/MinguoEra;

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/chrono/MinguoEra;->$VALUES:[Ljava/time/chrono/MinguoEra;

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
    .line 65
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoEra;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Ljava/time/chrono/MinguoEra;
    .locals 6

    .prologue
    .line 90
    move v0, p0

    .local v0, "era":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 96
    new-instance v1, Ljava/time/DateTimeException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid era: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :pswitch_0
    sget-object v1, Ljava/time/chrono/MinguoEra;->BEFORE_ROC:Ljava/time/chrono/MinguoEra;

    move-object v0, v1

    .line 94
    .end local v0    # "era":I
    :goto_0
    return-object v0

    .restart local v0    # "era":I
    :pswitch_1
    sget-object v1, Ljava/time/chrono/MinguoEra;->ROC:Ljava/time/chrono/MinguoEra;

    move-object v0, v1

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/MinguoEra;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v2, v0

    invoke-interface {v2}, Ljava/io/DataInput;->readByte()B

    move-result v2

    move v1, v2

    .line 187
    .local v1, "eraValue":B
    move v2, v1

    invoke-static {v2}, Ljava/time/chrono/MinguoEra;->of(I)Ljava/time/chrono/MinguoEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/chrono/MinguoEra;
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/chrono/MinguoEra;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/MinguoEra;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/chrono/MinguoEra;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Ljava/time/chrono/MinguoEra;->$VALUES:[Ljava/time/chrono/MinguoEra;

    invoke-virtual {v0}, [Ljava/time/chrono/MinguoEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/chrono/MinguoEra;

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoEra;
    new-instance v1, Ljava/time/chrono/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x6

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/MinguoEra;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoEra;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/MinguoEra;->getValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/MinguoEra;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 7

    .prologue
    .line 134
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/MinguoEra;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v3, v2

    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne v3, v4, :cond_0

    .line 135
    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/chrono/MinguoEra;->getValue()I

    move-result v3

    move v1, v3

    .line 137
    .end local v1    # "this":Ljava/time/chrono/MinguoEra;
    :goto_0
    return v1

    .restart local v1    # "this":Ljava/time/chrono/MinguoEra;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/MinguoEra;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/chrono/MinguoEra;->getLong(Ljava/time/temporal/TemporalField;)J

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
    .line 173
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoEra;
    move-object v1, p1

    .local v1, "style":Ljava/time/format/TextStyle;
    move-object v2, p2

    .local v2, "locale":Ljava/util/Locale;
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

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

    .end local v0    # "this":Ljava/time/chrono/MinguoEra;
    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoEra;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 143
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/MinguoEra;->getValue()I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    .line 147
    .end local v0    # "this":Ljava/time/chrono/MinguoEra;
    :goto_0
    return-wide v0

    .line 144
    .restart local v0    # "this":Ljava/time/chrono/MinguoEra;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 145
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

    .line 147
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoEra;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/MinguoEra;->ordinal()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/MinguoEra;
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoEra;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 117
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 119
    .end local v0    # "this":Ljava/time/chrono/MinguoEra;
    :goto_1
    return v0

    .line 117
    .restart local v0    # "this":Ljava/time/chrono/MinguoEra;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 119
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
    .line 159
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoEra;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 160
    sget-object v2, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    .line 167
    .end local v0    # "this":Ljava/time/chrono/MinguoEra;
    :goto_0
    return-object v0

    .line 162
    .restart local v0    # "this":Ljava/time/chrono/MinguoEra;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    .line 163
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    .line 164
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 165
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 167
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
    .line 124
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoEra;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 125
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .line 129
    .end local v0    # "this":Ljava/time/chrono/MinguoEra;
    :goto_0
    return-object v0

    .line 126
    .restart local v0    # "this":Ljava/time/chrono/MinguoEra;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 127
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

    .line 129
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/MinguoEra;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/MinguoEra;->getValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 183
    return-void
.end method
