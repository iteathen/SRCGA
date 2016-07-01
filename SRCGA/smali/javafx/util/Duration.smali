.class public Ljavafx/util/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljavafx/util/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INDEFINITE:Ljavafx/util/Duration;

.field public static final ONE:Ljavafx/util/Duration;

.field public static final UNKNOWN:Ljavafx/util/Duration;

.field public static final ZERO:Ljavafx/util/Duration;


# instance fields
.field private final millis:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    new-instance v0, Ljavafx/util/Duration;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/util/Duration;-><init>(D)V

    sput-object v0, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    .line 49
    new-instance v0, Ljavafx/util/Duration;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Ljavafx/util/Duration;-><init>(D)V

    sput-object v0, Ljavafx/util/Duration;->ONE:Ljavafx/util/Duration;

    .line 54
    new-instance v0, Ljavafx/util/Duration;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v1, v2, v3}, Ljavafx/util/Duration;-><init>(D)V

    sput-object v0, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    .line 59
    new-instance v0, Ljavafx/util/Duration;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {v1, v2, v3}, Ljavafx/util/Duration;-><init>(D)V

    sput-object v0, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 7
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "millis"
        .end annotation
    .end param

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-wide v1, p1

    .local v1, "millis":D
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 189
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/util/Duration;->millis:D

    .line 190
    return-void
.end method

.method public static hours(D)Ljavafx/util/Duration;
    .locals 10

    .prologue
    .line 168
    move-wide v0, p0

    .local v0, "h":D
    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 169
    sget-object v2, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v0, v2

    .line 175
    .end local v0    # "h":D
    :goto_0
    return-object v0

    .line 170
    .restart local v0    # "h":D
    :cond_0
    move-wide v2, v0

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 171
    sget-object v2, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    move-object v0, v2

    goto :goto_0

    .line 172
    :cond_1
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    sget-object v2, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    move-object v0, v2

    goto :goto_0

    .line 175
    :cond_2
    new-instance v2, Ljavafx/util/Duration;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-wide v4, v0

    const-wide v6, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljavafx/util/Duration;-><init>(D)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static millis(D)Ljavafx/util/Duration;
    .locals 8

    .prologue
    .line 109
    move-wide v0, p0

    .local v0, "ms":D
    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 110
    sget-object v2, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v0, v2

    .line 118
    .end local v0    # "ms":D
    :goto_0
    return-object v0

    .line 111
    .restart local v0    # "ms":D
    :cond_0
    move-wide v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 112
    sget-object v2, Ljavafx/util/Duration;->ONE:Ljavafx/util/Duration;

    move-object v0, v2

    goto :goto_0

    .line 113
    :cond_1
    move-wide v2, v0

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 114
    sget-object v2, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    move-object v0, v2

    goto :goto_0

    .line 115
    :cond_2
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    sget-object v2, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    move-object v0, v2

    goto :goto_0

    .line 118
    :cond_3
    new-instance v2, Ljavafx/util/Duration;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-wide v4, v0

    invoke-direct {v3, v4, v5}, Ljavafx/util/Duration;-><init>(D)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static minutes(D)Ljavafx/util/Duration;
    .locals 10

    .prologue
    .line 149
    move-wide v0, p0

    .local v0, "m":D
    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 150
    sget-object v2, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v0, v2

    .line 156
    .end local v0    # "m":D
    :goto_0
    return-object v0

    .line 151
    .restart local v0    # "m":D
    :cond_0
    move-wide v2, v0

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 152
    sget-object v2, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    move-object v0, v2

    goto :goto_0

    .line 153
    :cond_1
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    sget-object v2, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    move-object v0, v2

    goto :goto_0

    .line 156
    :cond_2
    new-instance v2, Ljavafx/util/Duration;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-wide v4, v0

    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljavafx/util/Duration;-><init>(D)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static seconds(D)Ljavafx/util/Duration;
    .locals 10

    .prologue
    .line 130
    move-wide v0, p0

    .local v0, "s":D
    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 131
    sget-object v2, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v0, v2

    .line 137
    .end local v0    # "s":D
    :goto_0
    return-object v0

    .line 132
    .restart local v0    # "s":D
    :cond_0
    move-wide v2, v0

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 133
    sget-object v2, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    move-object v0, v2

    goto :goto_0

    .line 134
    :cond_1
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    sget-object v2, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    move-object v0, v2

    goto :goto_0

    .line 137
    :cond_2
    new-instance v2, Ljavafx/util/Duration;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-wide v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljavafx/util/Duration;-><init>(D)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/util/Duration;
    .locals 10

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "time":Ljava/lang/String;
    const/4 v6, -0x1

    move v2, v6

    .line 72
    .local v2, "index":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 73
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    .line 74
    .local v4, "c":C
    move v6, v4

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v4

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_1

    move v6, v4

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_1

    .line 75
    move v6, v3

    move v2, v6

    .line 80
    .end local v4    # "c":C
    :cond_0
    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 82
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "The time parameter must have a suffix of [ms|s|m|h]"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 72
    .restart local v4    # "c":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v4    # "c":C
    :cond_2
    move-object v6, v1

    const/4 v7, 0x0

    move v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-wide v3, v6

    .line 86
    .local v3, "value":D
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 87
    .local v5, "suffix":Ljava/lang/String;
    const-string v6, "ms"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    move-wide v6, v3

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v1, v6

    .line 94
    .end local v1    # "time":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 89
    .restart local v1    # "time":Ljava/lang/String;
    :cond_3
    const-string v6, "s"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 90
    move-wide v6, v3

    invoke-static {v6, v7}, Ljavafx/util/Duration;->seconds(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v1, v6

    goto :goto_1

    .line 91
    :cond_4
    const-string v6, "m"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 92
    move-wide v6, v3

    invoke-static {v6, v7}, Ljavafx/util/Duration;->minutes(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v1, v6

    goto :goto_1

    .line 93
    :cond_5
    const-string v6, "h"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 94
    move-wide v6, v3

    invoke-static {v6, v7}, Ljavafx/util/Duration;->hours(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v1, v6

    goto :goto_1

    .line 97
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "The time parameter must have a suffix of [ms|s|m|h]"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public add(Ljavafx/util/Duration;)Ljavafx/util/Duration;
    .locals 6

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    .local v1, "other":Ljavafx/util/Duration;
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/util/Duration;

    invoke-virtual {v2, v3}, Ljavafx/util/Duration;->compareTo(Ljavafx/util/Duration;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return v0
.end method

.method public compareTo(Ljavafx/util/Duration;)I
    .locals 6

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    .local v1, "d":Ljavafx/util/Duration;
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return v0
.end method

.method public divide(D)Ljavafx/util/Duration;
    .locals 9

    .prologue
    .line 300
    move-object v1, p0

    .local v1, "this":Ljavafx/util/Duration;
    move-wide v2, p1

    .local v2, "n":D
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    move-wide v6, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljavafx/util/Duration;
    return-object v1
.end method

.method public divide(Ljavafx/util/Duration;)Ljavafx/util/Duration;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    .local v1, "other":Ljavafx/util/Duration;
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v1

    instance-of v2, v2, Ljavafx/util/Duration;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    move-object v4, v1

    check-cast v4, Ljavafx/util/Duration;

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return v0

    .restart local v0    # "this":Ljavafx/util/Duration;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public greaterThan(Ljavafx/util/Duration;)Z
    .locals 6

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    .local v1, "other":Ljavafx/util/Duration;
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return v0

    .restart local v0    # "this":Ljavafx/util/Duration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public greaterThanOrEqualTo(Ljavafx/util/Duration;)Z
    .locals 6

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    .local v1, "other":Ljavafx/util/Duration;
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return v0

    .restart local v0    # "this":Ljavafx/util/Duration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 434
    move-object v1, p0

    .local v1, "this":Ljavafx/util/Duration;
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-wide v2, v4

    .line 435
    .local v2, "bits":J
    move-wide v4, v2

    move-wide v6, v2

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    .end local v1    # "this":Ljavafx/util/Duration;
    return v1
.end method

.method public isIndefinite()Z
    .locals 6

    .prologue
    .line 341
    move-object v1, p0

    .local v1, "this":Ljavafx/util/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/util/Duration;
    return v1

    .restart local v1    # "this":Ljavafx/util/Duration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 4

    .prologue
    .line 350
    move-object v1, p0

    .local v1, "this":Ljavafx/util/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    move v1, v2

    .end local v1    # "this":Ljavafx/util/Duration;
    return v1
.end method

.method public lessThan(Ljavafx/util/Duration;)Z
    .locals 6

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    .local v1, "other":Ljavafx/util/Duration;
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return v0

    .restart local v0    # "this":Ljavafx/util/Duration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lessThanOrEqualTo(Ljavafx/util/Duration;)Z
    .locals 6

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    .local v1, "other":Ljavafx/util/Duration;
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return v0

    .restart local v0    # "this":Ljavafx/util/Duration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public multiply(D)Ljavafx/util/Duration;
    .locals 9

    .prologue
    .line 286
    move-object v1, p0

    .local v1, "this":Ljavafx/util/Duration;
    move-wide v2, p1

    .local v2, "n":D
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    move-wide v6, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljavafx/util/Duration;
    return-object v1
.end method

.method public multiply(Ljavafx/util/Duration;)Ljavafx/util/Duration;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    .local v1, "other":Ljavafx/util/Duration;
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return-object v0
.end method

.method public negate()Ljavafx/util/Duration;
    .locals 4

    .prologue
    .line 332
    move-object v1, p0

    .local v1, "this":Ljavafx/util/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    neg-double v2, v2

    invoke-static {v2, v3}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljavafx/util/Duration;
    return-object v1
.end method

.method public subtract(Ljavafx/util/Duration;)Ljavafx/util/Duration;
    .locals 6

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, p1

    .local v1, "other":Ljavafx/util/Duration;
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/util/Duration;->millis:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/Duration;
    return-object v0
.end method

.method public toHours()D
    .locals 6

    .prologue
    .line 225
    move-object v1, p0

    .local v1, "this":Ljavafx/util/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/util/Duration;
    return-wide v1
.end method

.method public toMillis()D
    .locals 3

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/util/Duration;->millis:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/util/Duration;
    return-wide v0
.end method

.method public toMinutes()D
    .locals 6

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Ljavafx/util/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/util/Duration;
    return-wide v1
.end method

.method public toSeconds()D
    .locals 6

    .prologue
    .line 207
    move-object v1, p0

    .local v1, "this":Ljavafx/util/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/util/Duration;
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/util/Duration;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "INDEFINITE"

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/util/Duration;
    return-object v0

    .restart local v0    # "this":Ljavafx/util/Duration;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/util/Duration;->millis:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
