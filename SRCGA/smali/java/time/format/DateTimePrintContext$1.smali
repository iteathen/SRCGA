.class final Ljava/time/format/DateTimePrintContext$1;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "DateTimePrintContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/time/format/DateTimePrintContext;->adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$effectiveChrono:Ljava/time/chrono/Chronology;

.field final synthetic val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

.field final synthetic val$effectiveZone:Ljava/time/ZoneId;

.field final synthetic val$temporal:Ljava/time/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/temporal/TemporalAccessor;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljava/time/chrono/Chronology;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljava/time/ZoneId;

    move-object v5, v0

    invoke-direct {v5}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext$1;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    move-wide v0, v2

    .line 183
    .end local v0    # "this":Ljava/time/format/DateTimePrintContext$1;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Ljava/time/format/DateTimePrintContext$1;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext$1;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    .line 169
    .end local v0    # "this":Ljava/time/format/DateTimePrintContext$1;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/format/DateTimePrintContext$1;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    goto :goto_0
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
    .line 188
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext$1;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 189
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljava/time/chrono/Chronology;

    move-object v0, v2

    .line 197
    .end local v0    # "this":Ljava/time/format/DateTimePrintContext$1;
    :goto_0
    return-object v0

    .line 191
    .restart local v0    # "this":Ljava/time/format/DateTimePrintContext$1;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 192
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljava/time/ZoneId;

    move-object v0, v2

    goto :goto_0

    .line 194
    :cond_1
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 195
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 197
    :cond_2
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext$1;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoLocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .line 176
    .end local v0    # "this":Ljava/time/format/DateTimePrintContext$1;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimePrintContext$1;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
