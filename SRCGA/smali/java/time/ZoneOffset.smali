.class public final Ljava/time/ZoneOffset;
.super Ljava/time/ZoneId;
.source "ZoneOffset.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/ZoneId;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/ZoneOffset;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Ljava/time/ZoneOffset;

.field private static final MAX_SECONDS:I = 0xfd20

.field public static final MIN:Ljava/time/ZoneOffset;

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field public static final UTC:Ljava/time/ZoneOffset;

.field private static final serialVersionUID:J = 0x20b8141d7a029c21L


# instance fields
.field private final transient id:Ljava/lang/String;

.field private final totalSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 96
    new-instance v0, Ljava/time/ZoneOffset$1;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/time/ZoneOffset$1;-><init>()V

    sput-object v0, Ljava/time/ZoneOffset;->FROM:Ljava/time/temporal/TemporalQuery;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 136
    const v0, -0xfd20

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->MIN:Ljava/time/ZoneOffset;

    .line 140
    const v0, 0xfd20

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->MAX:Ljava/time/ZoneOffset;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move v1, p1

    .local v1, "totalSeconds":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/ZoneId;-><init>()V

    .line 415
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljava/time/ZoneOffset;->totalSeconds:I

    .line 416
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/time/ZoneOffset;->buildId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    .line 417
    return-void
.end method

.method private static buildId(I)Ljava/lang/String;
    .locals 10

    .prologue
    .line 420
    move v0, p0

    .local v0, "totalSeconds":I
    move v6, v0

    if-nez v6, :cond_0

    .line 421
    const-string v6, "Z"

    move-object v0, v6

    .line 434
    .end local v0    # "totalSeconds":I
    .local v1, "absTotalSeconds":I
    .local v2, "buf":Ljava/lang/StringBuilder;
    .local v3, "absHours":I
    .local v4, "absMinutes":I
    .local v5, "absSeconds":I
    :goto_0
    return-object v0

    .line 423
    .end local v1    # "absTotalSeconds":I
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "absHours":I
    .end local v4    # "absMinutes":I
    .end local v5    # "absSeconds":I
    .restart local v0    # "totalSeconds":I
    :cond_0
    move v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v1, v6

    .line 424
    .restart local v1    # "absTotalSeconds":I
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 425
    .restart local v2    # "buf":Ljava/lang/StringBuilder;
    move v6, v1

    const/16 v7, 0xe10

    div-int/lit16 v6, v6, 0xe10

    move v3, v6

    .line 426
    .restart local v3    # "absHours":I
    move v6, v1

    const/16 v7, 0x3c

    div-int/lit8 v6, v6, 0x3c

    const/16 v7, 0x3c

    rem-int/lit8 v6, v6, 0x3c

    move v4, v6

    .line 427
    .restart local v4    # "absMinutes":I
    move-object v6, v2

    move v7, v0

    if-gez v7, :cond_2

    const-string v7, "-"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    const/16 v8, 0xa

    if-ge v7, v8, :cond_3

    const-string v7, "0"

    .line 428
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    const/16 v8, 0xa

    if-ge v7, v8, :cond_4

    const-string v7, ":0"

    .line 429
    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 430
    move v6, v1

    const/16 v7, 0x3c

    rem-int/lit8 v6, v6, 0x3c

    move v5, v6

    .line 431
    .restart local v5    # "absSeconds":I
    move v6, v5

    if-eqz v6, :cond_1

    .line 432
    move-object v6, v2

    move v7, v5

    const/16 v8, 0xa

    if-ge v7, v8, :cond_5

    const-string v7, ":0"

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 434
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 427
    .end local v5    # "absSeconds":I
    :cond_2
    const-string v7, "+"

    goto :goto_1

    :cond_3
    const-string v7, ""

    goto :goto_2

    .line 428
    :cond_4
    const-string v7, ":"

    goto :goto_3

    .line 432
    .restart local v5    # "absSeconds":I
    :cond_5
    const-string v7, ":"

    goto :goto_4
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;
    .locals 7

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZoneOffset;

    move-object v1, v2

    .line 321
    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 322
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain ZoneOffset from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 323
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object v0
.end method

.method public static of(Ljava/lang/String;)Ljava/time/ZoneOffset;
    .locals 11

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "offsetId":Ljava/lang/String;
    move-object v6, v0

    const-string v7, "offsetId"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 185
    sget-object v6, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v7, v0

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/time/ZoneOffset;

    move-object v1, v6

    .line 186
    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 187
    move-object v6, v1

    move-object v0, v6

    .line 230
    .end local v0    # "offsetId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 192
    .restart local v0    # "offsetId":Ljava/lang/String;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 221
    :pswitch_0
    new-instance v6, Ljava/time/DateTimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid ID for ZoneOffset, invalid format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 194
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 196
    :pswitch_2
    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v2, v6

    .line 197
    .local v2, "hours":I
    const/4 v6, 0x0

    move v3, v6

    .line 198
    .local v3, "minutes":I
    const/4 v6, 0x0

    move v4, v6

    .line 223
    .local v4, "seconds":I
    :goto_1
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 224
    .local v5, "first":C
    move v6, v5

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_1

    move v6, v5

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_1

    .line 225
    new-instance v6, Ljava/time/DateTimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 201
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    .end local v4    # "seconds":I
    .end local v5    # "first":C
    :pswitch_3
    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v2, v6

    .line 202
    .restart local v2    # "hours":I
    move-object v6, v0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v3, v6

    .line 203
    .restart local v3    # "minutes":I
    const/4 v6, 0x0

    move v4, v6

    .line 204
    .restart local v4    # "seconds":I
    goto :goto_1

    .line 206
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_4
    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v2, v6

    .line 207
    .restart local v2    # "hours":I
    move-object v6, v0

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v3, v6

    .line 208
    .restart local v3    # "minutes":I
    const/4 v6, 0x0

    move v4, v6

    .line 209
    .restart local v4    # "seconds":I
    goto :goto_1

    .line 211
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_5
    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v2, v6

    .line 212
    .restart local v2    # "hours":I
    move-object v6, v0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v3, v6

    .line 213
    .restart local v3    # "minutes":I
    move-object v6, v0

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v4, v6

    .line 214
    .restart local v4    # "seconds":I
    goto :goto_1

    .line 216
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_6
    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v2, v6

    .line 217
    .restart local v2    # "hours":I
    move-object v6, v0

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v3, v6

    .line 218
    .restart local v3    # "minutes":I
    move-object v6, v0

    const/4 v7, 0x7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v6

    move v4, v6

    .line 219
    .restart local v4    # "seconds":I
    goto/16 :goto_1

    .line 227
    .restart local v5    # "first":C
    :cond_1
    move v6, v5

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_2

    .line 228
    move v6, v2

    neg-int v6, v6

    move v7, v3

    neg-int v7, v7

    move v8, v4

    neg-int v8, v8

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 230
    :cond_2
    move v6, v2

    move v7, v3

    move v8, v4

    invoke-static {v6, v7, v8}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static ofHours(I)Ljava/time/ZoneOffset;
    .locals 4

    .prologue
    .line 263
    move v0, p0

    .local v0, "hours":I
    move v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "hours":I
    return-object v0
.end method

.method public static ofHoursMinutes(II)Ljava/time/ZoneOffset;
    .locals 5

    .prologue
    .line 280
    move v0, p0

    .local v0, "hours":I
    move v1, p1

    .local v1, "minutes":I
    move v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "hours":I
    return-object v0
.end method

.method public static ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;
    .locals 7

    .prologue
    .line 297
    move v0, p0

    .local v0, "hours":I
    move v1, p1

    .local v1, "minutes":I
    move v2, p2

    .local v2, "seconds":I
    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Ljava/time/ZoneOffset;->validate(III)V

    .line 298
    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Ljava/time/ZoneOffset;->totalSeconds(III)I

    move-result v4

    move v3, v4

    .line 299
    .local v3, "totalSeconds":I
    move v4, v3

    invoke-static {v4}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "hours":I
    return-object v0
.end method

.method public static ofTotalSeconds(I)Ljava/time/ZoneOffset;
    .locals 7

    .prologue
    .line 389
    move v0, p0

    .local v0, "totalSeconds":I
    move v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const v4, 0xfd20

    if-le v3, v4, :cond_0

    .line 390
    new-instance v3, Ljava/time/DateTimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 392
    :cond_0
    move v3, v0

    const/16 v4, 0x384

    rem-int/lit16 v3, v3, 0x384

    if-nez v3, :cond_2

    .line 393
    move v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, v3

    .line 394
    .local v1, "totalSecs":Ljava/lang/Integer;
    sget-object v3, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/ZoneOffset;

    move-object v2, v3

    .line 395
    .local v2, "result":Ljava/time/ZoneOffset;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 396
    new-instance v3, Ljava/time/ZoneOffset;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v0

    invoke-direct {v4, v5}, Ljava/time/ZoneOffset;-><init>(I)V

    move-object v2, v3

    .line 397
    sget-object v3, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 398
    sget-object v3, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/ZoneOffset;

    move-object v2, v3

    .line 399
    sget-object v3, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 401
    :cond_1
    move-object v3, v2

    move-object v0, v3

    .line 403
    .end local v0    # "totalSeconds":I
    .end local v1    # "totalSecs":Ljava/lang/Integer;
    .end local v2    # "result":Ljava/time/ZoneOffset;
    :goto_0
    return-object v0

    .restart local v0    # "totalSeconds":I
    :cond_2
    new-instance v3, Ljava/time/ZoneOffset;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v0

    invoke-direct {v4, v5}, Ljava/time/ZoneOffset;-><init>(I)V

    move-object v0, v3

    goto :goto_0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;IZ)I
    .locals 10

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "offsetId":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "precededByColon":Z
    move v5, v2

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_0

    .line 244
    new-instance v5, Ljava/time/DateTimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid ID for ZoneOffset, colon not found when expected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 246
    :cond_0
    move-object v5, v0

    move v6, v1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v3, v5

    .line 247
    .local v3, "ch1":C
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v4, v5

    .line 248
    .local v4, "ch2":C
    move v5, v3

    const/16 v6, 0x30

    if-lt v5, v6, :cond_1

    move v5, v3

    const/16 v6, 0x39

    if-gt v5, v6, :cond_1

    move v5, v4

    const/16 v6, 0x30

    if-lt v5, v6, :cond_1

    move v5, v4

    const/16 v6, 0x39

    if-le v5, v6, :cond_2

    .line 249
    :cond_1
    new-instance v5, Ljava/time/DateTimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid ID for ZoneOffset, non numeric characters found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 251
    :cond_2
    move v5, v3

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    const/16 v6, 0xa

    mul-int/lit8 v5, v5, 0xa

    move v6, v4

    const/16 v7, 0x30

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v5, v6

    move v0, v5

    .end local v0    # "offsetId":Ljava/lang/CharSequence;
    return v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v2, v0

    invoke-interface {v2}, Ljava/io/DataInput;->readByte()B

    move-result v2

    move v1, v2

    .line 758
    .local v1, "offsetByte":I
    move v2, v1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_0

    move-object v2, v0

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0

    .restart local v0    # "in":Ljava/io/DataInput;
    :cond_0
    move v2, v1

    const/16 v3, 0x384

    mul-int/lit16 v2, v2, 0x384

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static totalSeconds(III)I
    .locals 6

    .prologue
    .line 375
    move v0, p0

    .local v0, "hours":I
    move v1, p1

    .local v1, "minutes":I
    move v2, p2

    .local v2, "seconds":I
    move v3, v0

    const/16 v4, 0xe10

    mul-int/lit16 v3, v3, 0xe10

    move v4, v1

    const/16 v5, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v3, v4

    move v4, v2

    add-int/2addr v3, v4

    move v0, v3

    .end local v0    # "hours":I
    return v0
.end method

.method private static validate(III)V
    .locals 8

    .prologue
    .line 338
    move v0, p0

    .local v0, "hours":I
    move v1, p1

    .local v1, "minutes":I
    move v2, p2

    .local v2, "seconds":I
    move v3, v0

    const/16 v4, -0x12

    if-lt v3, v4, :cond_0

    move v3, v0

    const/16 v4, 0x12

    if-le v3, v4, :cond_1

    .line 339
    :cond_0
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Zone offset hours not in valid range: value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not in the range -18 to 18"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    :cond_1
    move v3, v0

    if-lez v3, :cond_3

    .line 343
    move v3, v1

    if-ltz v3, :cond_2

    move v3, v2

    if-gez v3, :cond_8

    .line 344
    :cond_2
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Zone offset minutes and seconds must be positive because hours is positive"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :cond_3
    move v3, v0

    if-gez v3, :cond_5

    .line 347
    move v3, v1

    if-gtz v3, :cond_4

    move v3, v2

    if-lez v3, :cond_8

    .line 348
    :cond_4
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Zone offset minutes and seconds must be negative because hours is negative"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    :cond_5
    move v3, v1

    if-lez v3, :cond_6

    move v3, v2

    if-ltz v3, :cond_7

    :cond_6
    move v3, v1

    if-gez v3, :cond_8

    move v3, v2

    if-lez v3, :cond_8

    .line 351
    :cond_7
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Zone offset minutes and seconds must have the same sign"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :cond_8
    move v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_9

    .line 354
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Zone offset minutes not in valid range: abs(value) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    .line 355
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not in the range 0 to 59"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_9
    move v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x3b

    if-le v3, v4, :cond_a

    .line 358
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Zone offset seconds not in valid range: abs(value) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    .line 359
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not in the range 0 to 59"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_a
    move v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_c

    move v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gtz v3, :cond_b

    move v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lez v3, :cond_c

    .line 362
    :cond_b
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    :cond_c
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x8

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZoneOffset;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    iget v4, v4, Ljava/time/ZoneOffset;->totalSeconds:I

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZoneOffset;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->compareTo(Ljava/time/ZoneOffset;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/ZoneOffset;
    return v0
.end method

.method public compareTo(Ljava/time/ZoneOffset;)I
    .locals 4

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "other":Ljava/time/ZoneOffset;
    move-object v2, v1

    iget v2, v2, Ljava/time/ZoneOffset;->totalSeconds:I

    move-object v3, v0

    iget v3, v3, Ljava/time/ZoneOffset;->totalSeconds:I

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Ljava/time/ZoneOffset;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 698
    const/4 v2, 0x1

    move v0, v2

    .line 703
    .end local v0    # "this":Ljava/time/ZoneOffset;
    :goto_0
    return v0

    .line 700
    .restart local v0    # "this":Ljava/time/ZoneOffset;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/ZoneOffset;

    if-eqz v2, :cond_2

    .line 701
    move-object v2, v0

    iget v2, v2, Ljava/time/ZoneOffset;->totalSeconds:I

    move-object v3, v1

    check-cast v3, Ljava/time/ZoneOffset;

    iget v3, v3, Ljava/time/ZoneOffset;->totalSeconds:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 703
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 8

    .prologue
    .line 567
    move-object v1, p0

    .local v1, "this":Ljava/time/ZoneOffset;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v3, v2

    sget-object v4, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne v3, v4, :cond_0

    .line 568
    move-object v3, v1

    iget v3, v3, Ljava/time/ZoneOffset;->totalSeconds:I

    move v1, v3

    .line 572
    .end local v1    # "this":Ljava/time/ZoneOffset;
    :goto_0
    return v1

    .line 569
    .restart local v1    # "this":Ljava/time/ZoneOffset;
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Ljava/time/temporal/ChronoField;

    if-eqz v3, :cond_1

    .line 570
    new-instance v3, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 572
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/ZoneOffset;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    move v1, v3

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZoneOffset;
    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 599
    move-object v2, v0

    iget v2, v2, Ljava/time/ZoneOffset;->totalSeconds:I

    int-to-long v2, v2

    move-wide v0, v2

    .line 603
    .end local v0    # "this":Ljava/time/ZoneOffset;
    :goto_0
    return-wide v0

    .line 600
    .restart local v0    # "this":Ljava/time/ZoneOffset;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 601
    new-instance v2, Ljava/time/DateTimeException;

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

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public getRules()Ljava/time/bp/zone/ZoneRules;
    .locals 2

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/bp/zone/ZoneRules;->of(Ljava/time/ZoneOffset;)Ljava/time/bp/zone/ZoneRules;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZoneOffset;
    return-object v0
.end method

.method public getTotalSeconds()I
    .locals 2

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, v0

    iget v1, v1, Ljava/time/ZoneOffset;->totalSeconds:I

    move v0, v1

    .end local v0    # "this":Ljava/time/ZoneOffset;
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, v0

    iget v1, v1, Ljava/time/ZoneOffset;->totalSeconds:I

    move v0, v1

    .end local v0    # "this":Ljava/time/ZoneOffset;
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 506
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 508
    .end local v0    # "this":Ljava/time/ZoneOffset;
    :goto_1
    return v0

    .line 506
    .restart local v0    # "this":Ljava/time/ZoneOffset;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 508
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
    .line 628
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 629
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 634
    .end local v0    # "this":Ljava/time/ZoneOffset;
    :goto_0
    return-object v0

    .line 630
    .restart local v0    # "this":Ljava/time/ZoneOffset;
    :cond_1
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    .line 631
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 632
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 634
    :cond_3
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
    .line 535
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 536
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .line 540
    .end local v0    # "this":Ljava/time/ZoneOffset;
    :goto_0
    return-object v0

    .line 537
    .restart local v0    # "this":Ljava/time/ZoneOffset;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 538
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

    .line 540
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZoneOffset;
    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 744
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 745
    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    move-object v0, p0

    .local v0, "this":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v4, v0

    iget v4, v4, Ljava/time/ZoneOffset;->totalSeconds:I

    move v2, v4

    .line 749
    .local v2, "offsetSecs":I
    move v4, v2

    const/16 v5, 0x384

    rem-int/lit16 v4, v4, 0x384

    if-nez v4, :cond_1

    move v4, v2

    const/16 v5, 0x384

    div-int/lit16 v4, v4, 0x384

    :goto_0
    move v3, v4

    .line 750
    .local v3, "offsetByte":I
    move-object v4, v1

    move v5, v3

    invoke-interface {v4, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 751
    move v4, v3

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_0

    .line 752
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 754
    :cond_0
    return-void

    .line 749
    .end local v3    # "offsetByte":I
    :cond_1
    const/16 v4, 0x7f

    goto :goto_0
.end method
