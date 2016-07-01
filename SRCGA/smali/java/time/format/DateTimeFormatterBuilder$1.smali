.class final Ljava/time/format/DateTimeFormatterBuilder$1;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/TemporalQuery",
        "<",
        "Ljava/time/ZoneId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$1;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$1;
    return-object v0
.end method

.method public queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$1;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v3, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/ZoneId;

    move-object v2, v3

    .line 123
    .local v2, "zone":Ljava/time/ZoneId;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Ljava/time/ZoneOffset;

    if-nez v3, :cond_0

    move-object v3, v2

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$1;
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$1;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
