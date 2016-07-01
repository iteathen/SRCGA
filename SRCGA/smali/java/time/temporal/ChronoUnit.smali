.class public final enum Ljava/time/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "ChronoUnit.java"

# interfaces
.implements Ljava/time/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/ChronoUnit;",
        ">;",
        "Ljava/time/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/ChronoUnit;

.field public static final enum CENTURIES:Ljava/time/temporal/ChronoUnit;

.field public static final enum DAYS:Ljava/time/temporal/ChronoUnit;

.field public static final enum DECADES:Ljava/time/temporal/ChronoUnit;

.field public static final enum ERAS:Ljava/time/temporal/ChronoUnit;

.field public static final enum FOREVER:Ljava/time/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Ljava/time/temporal/ChronoUnit;

.field public static final enum HOURS:Ljava/time/temporal/ChronoUnit;

.field public static final enum MICROS:Ljava/time/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Ljava/time/temporal/ChronoUnit;

.field public static final enum MILLIS:Ljava/time/temporal/ChronoUnit;

.field public static final enum MINUTES:Ljava/time/temporal/ChronoUnit;

.field public static final enum MONTHS:Ljava/time/temporal/ChronoUnit;

.field public static final enum NANOS:Ljava/time/temporal/ChronoUnit;

.field public static final enum SECONDS:Ljava/time/temporal/ChronoUnit;

.field public static final enum WEEKS:Ljava/time/temporal/ChronoUnit;

.field public static final enum YEARS:Ljava/time/temporal/ChronoUnit;


# instance fields
.field private final duration:Ljava/time/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 59
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "NANOS"

    const/4 v4, 0x0

    const-string v5, "Nanos"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    .line 64
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "MICROS"

    const/4 v4, 0x1

    const-string v5, "Micros"

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    .line 69
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "MILLIS"

    const/4 v4, 0x2

    const-string v5, "Millis"

    const-wide/32 v6, 0xf4240

    invoke-static {v6, v7}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 75
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "SECONDS"

    const/4 v4, 0x3

    const-string v5, "Seconds"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    .line 80
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "MINUTES"

    const/4 v4, 0x4

    const-string v5, "Minutes"

    const-wide/16 v6, 0x3c

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    .line 85
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "HOURS"

    const/4 v4, 0x5

    const-string v5, "Hours"

    const-wide/16 v6, 0xe10

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    .line 90
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "HALF_DAYS"

    const/4 v4, 0x6

    const-string v5, "HalfDays"

    const-wide/32 v6, 0xa8c0

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    .line 101
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "DAYS"

    const/4 v4, 0x7

    const-string v5, "Days"

    const-wide/32 v6, 0x15180

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 108
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "WEEKS"

    const/16 v4, 0x8

    const-string v5, "Weeks"

    const-wide/32 v6, 0x93a80

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    .line 116
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "MONTHS"

    const/16 v4, 0x9

    const-string v5, "Months"

    const-wide/32 v6, 0x282072

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    .line 125
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "YEARS"

    const/16 v4, 0xa

    const-string v5, "Years"

    const-wide/32 v6, 0x1e18558

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    .line 133
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "DECADES"

    const/16 v4, 0xb

    const-string v5, "Decades"

    const-wide/32 v6, 0x12cf3570

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    .line 141
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "CENTURIES"

    const/16 v4, 0xc

    const-string v5, "Centuries"

    const-wide v6, 0xbc181660L

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    .line 149
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "MILLENNIA"

    const/16 v4, 0xd

    const-string v5, "Millennia"

    const-wide v6, 0x758f0dfc0L

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    .line 158
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "ERAS"

    const/16 v4, 0xe

    const-string v5, "Eras"

    const-wide v6, 0x701ce172277000L

    invoke-static {v6, v7}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    .line 166
    new-instance v1, Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const-string v3, "FOREVER"

    const/16 v4, 0xf

    const-string v5, "Forever"

    const-wide v6, 0x7fffffffffffffffL

    const-wide/32 v8, 0x3b9ac9ff

    invoke-static {v6, v7, v8, v9}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    .line 53
    const/16 v1, 0x10

    new-array v1, v1, [Ljava/time/temporal/ChronoUnit;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x0

    sget-object v4, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x1

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x4

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x5

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x6

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/4 v3, 0x7

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/16 v3, 0x8

    sget-object v4, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/16 v3, 0x9

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/16 v3, 0xa

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/16 v3, 0xb

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/16 v3, 0xc

    sget-object v4, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/16 v3, 0xd

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/16 v3, 0xe

    sget-object v4, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    const/16 v3, 0xf

    sget-object v4, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    sput-object v1, Ljava/time/temporal/ChronoUnit;->$VALUES:[Ljava/time/temporal/ChronoUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoUnit;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, p4

    .local v4, "estimatedDuration":Ljava/time/Duration;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    .line 173
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/time/temporal/ChronoUnit;->duration:Ljava/time/Duration;

    .line 174
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/ChronoUnit;
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/temporal/ChronoUnit;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/temporal/ChronoUnit;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ljava/time/temporal/ChronoUnit;->$VALUES:[Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0}, [Ljava/time/temporal/ChronoUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoUnit;
    move-object v1, p1

    .local v1, "dateTime":Ljava/time/temporal/Temporal;, "TR;"
    move-wide v2, p2

    .local v2, "periodToAdd":J
    move-object v4, v1

    move-wide v5, v2

    move-object v7, v0

    invoke-interface {v4, v5, v6, v7}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/temporal/ChronoUnit;
    return-object v0
.end method

.method public between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J
    .locals 6

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoUnit;
    move-object v1, p1

    .local v1, "temporal1":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "temporal2":Ljava/time/temporal/Temporal;
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    invoke-interface {v3, v4, v5}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljava/time/temporal/ChronoUnit;
    return-wide v0
.end method

.method public getDuration()Ljava/time/Duration;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoUnit;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/ChronoUnit;->duration:Ljava/time/Duration;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoUnit;
    return-object v0
.end method

.method public isDateBased()Z
    .locals 3

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoUnit;
    move-object v1, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    move-object v1, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoUnit;
    return v0

    .restart local v0    # "this":Ljava/time/temporal/ChronoUnit;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDurationEstimated()Z
    .locals 3

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoUnit;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->isDateBased()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoUnit;
    return v0

    .restart local v0    # "this":Ljava/time/temporal/ChronoUnit;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedBy(Ljava/time/temporal/Temporal;)Z
    .locals 9

    .prologue
    .line 228
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/ChronoUnit;
    move-object v2, p1

    .local v2, "temporal":Ljava/time/temporal/Temporal;
    move-object v5, v1

    sget-object v6, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v5, v6, :cond_0

    .line 229
    const/4 v5, 0x0

    move v1, v5

    .line 245
    .end local v1    # "this":Ljava/time/temporal/ChronoUnit;
    :goto_0
    return v1

    .line 231
    .restart local v1    # "this":Ljava/time/temporal/ChronoUnit;
    :cond_0
    move-object v5, v2

    instance-of v5, v5, Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v5, :cond_1

    .line 232
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/temporal/ChronoUnit;->isDateBased()Z

    move-result v5

    move v1, v5

    goto :goto_0

    .line 234
    :cond_1
    move-object v5, v2

    instance-of v5, v5, Ljava/time/chrono/ChronoLocalDateTime;

    if-nez v5, :cond_2

    move-object v5, v2

    instance-of v5, v5, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v5, :cond_3

    .line 235
    :cond_2
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 238
    :cond_3
    move-object v5, v2

    const-wide/16 v6, 0x1

    move-object v8, v1

    :try_start_0
    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 239
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 240
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 242
    .local v3, "ex":Ljava/lang/RuntimeException;
    move-object v5, v2

    const-wide/16 v6, -0x1

    move-object v8, v1

    :try_start_1
    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 243
    const/4 v5, 0x1

    move v1, v5

    goto :goto_0

    .line 244
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 245
    .local v4, "ex2":Ljava/lang/RuntimeException;
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0
.end method

.method public isTimeBased()Z
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoUnit;
    move-object v1, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoUnit;
    return v0

    .restart local v0    # "this":Ljava/time/temporal/ChronoUnit;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoUnit;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoUnit;
    return-object v0
.end method
