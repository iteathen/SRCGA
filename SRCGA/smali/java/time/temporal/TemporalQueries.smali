.class public final Ljava/time/temporal/TemporalQueries;
.super Ljava/lang/Object;
.source "TemporalQueries.java"


# static fields
.field static final CHRONO:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/chrono/AbstractChronology;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCAL_DATE:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCAL_TIME:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/LocalTime;",
            ">;"
        }
    .end annotation
.end field

.field static final OFFSET:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field static final PRECISION:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field static final ZONE:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field

.field static final ZONE_ID:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Ljava/time/temporal/TemporalQueries$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/temporal/TemporalQueries$1;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    .line 168
    new-instance v0, Ljava/time/temporal/TemporalQueries$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/temporal/TemporalQueries$2;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->CHRONO:Ljava/time/temporal/TemporalQuery;

    .line 211
    new-instance v0, Ljava/time/temporal/TemporalQueries$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/temporal/TemporalQueries$3;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->PRECISION:Ljava/time/temporal/TemporalQuery;

    .line 242
    new-instance v0, Ljava/time/temporal/TemporalQueries$4;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/temporal/TemporalQueries$4;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->ZONE:Ljava/time/temporal/TemporalQuery;

    .line 265
    new-instance v0, Ljava/time/temporal/TemporalQueries$5;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/temporal/TemporalQueries$5;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->OFFSET:Ljava/time/temporal/TemporalQuery;

    .line 290
    new-instance v0, Ljava/time/temporal/TemporalQueries$6;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/temporal/TemporalQueries$6;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_DATE:Ljava/time/temporal/TemporalQuery;

    .line 315
    new-instance v0, Ljava/time/temporal/TemporalQueries$7;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/temporal/TemporalQueries$7;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_TIME:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/TemporalQueries;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static final chronology()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/chrono/AbstractChronology;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, Ljava/time/temporal/TemporalQueries;->CHRONO:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final localDate()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_DATE:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final localTime()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/LocalTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    sget-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_TIME:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final offset()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    sget-object v0, Ljava/time/temporal/TemporalQueries;->OFFSET:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final precision()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    sget-object v0, Ljava/time/temporal/TemporalQueries;->PRECISION:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final zone()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    sget-object v0, Ljava/time/temporal/TemporalQueries;->ZONE:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final zoneId()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method
