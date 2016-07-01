.class public final Ljava/time/bp/zone/ZoneOffsetTransitionRule;
.super Ljava/lang/Object;
.source "ZoneOffsetTransitionRule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5f9acf201199524bL


# instance fields
.field private final dom:B

.field private final dow:Ljava/time/DayOfWeek;

.field private final month:Ljava/time/Month;

.field private final offsetAfter:Ljava/time/ZoneOffset;

.field private final offsetBefore:Ljava/time/ZoneOffset;

.field private final standardOffset:Ljava/time/ZoneOffset;

.field private final time:Ljava/time/LocalTime;

.field private final timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final timeEndOfDay:Z


# direct methods
.method constructor <init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .locals 12

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, p1

    .local v1, "month":Ljava/time/Month;
    move v2, p2

    .local v2, "dayOfMonthIndicator":I
    move-object v3, p3

    .local v3, "dayOfWeek":Ljava/time/DayOfWeek;
    move-object/from16 v4, p4

    .local v4, "time":Ljava/time/LocalTime;
    move/from16 v5, p5

    .local v5, "timeEndOfDay":Z
    move-object/from16 v6, p6

    .local v6, "timeDefnition":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move-object/from16 v7, p7

    .local v7, "standardOffset":Ljava/time/ZoneOffset;
    move-object/from16 v8, p8

    .local v8, "offsetBefore":Ljava/time/ZoneOffset;
    move-object/from16 v9, p9

    .local v9, "offsetAfter":Ljava/time/ZoneOffset;
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 190
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    .line 191
    move-object v10, v0

    move v11, v2

    int-to-byte v11, v11

    iput-byte v11, v10, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    .line 192
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    .line 193
    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    .line 194
    move-object v10, v0

    move v11, v5

    iput-boolean v11, v10, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    .line 195
    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 196
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    .line 197
    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 198
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    .line 199
    return-void
.end method

.method public static of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    .locals 21

    .prologue
    .line 148
    move-object/from16 v0, p0

    .local v0, "month":Ljava/time/Month;
    move/from16 v1, p1

    .local v1, "dayOfMonthIndicator":I
    move-object/from16 v2, p2

    .local v2, "dayOfWeek":Ljava/time/DayOfWeek;
    move-object/from16 v3, p3

    .local v3, "time":Ljava/time/LocalTime;
    move/from16 v4, p4

    .local v4, "timeEndOfDay":Z
    move-object/from16 v5, p5

    .local v5, "timeDefnition":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move-object/from16 v6, p6

    .local v6, "standardOffset":Ljava/time/ZoneOffset;
    move-object/from16 v7, p7

    .local v7, "offsetBefore":Ljava/time/ZoneOffset;
    move-object/from16 v8, p8

    .local v8, "offsetAfter":Ljava/time/ZoneOffset;
    move-object v9, v0

    const-string v10, "month"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 149
    move-object v9, v3

    const-string v10, "time"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 150
    move-object v9, v5

    const-string v10, "timeDefnition"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 151
    move-object v9, v6

    const-string v10, "standardOffset"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 152
    move-object v9, v7

    const-string v10, "offsetBefore"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 153
    move-object v9, v8

    const-string v10, "offsetAfter"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 154
    move v9, v1

    const/16 v10, -0x1c

    if-lt v9, v10, :cond_0

    move v9, v1

    const/16 v10, 0x1f

    if-gt v9, v10, :cond_0

    move v9, v1

    if-nez v9, :cond_1

    .line 155
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    const-string v11, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 157
    :cond_1
    move v9, v4

    if-eqz v9, :cond_2

    move-object v9, v3

    sget-object v10, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {v9, v10}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 158
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    const-string v11, "Time must be midnight when end of day flag is true"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 160
    :cond_2
    new-instance v9, Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    move-object v11, v0

    move v12, v1

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v10 .. v19}, Ljava/time/bp/zone/ZoneOffsetTransitionRule;-><init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v0, v9

    .end local v0    # "month":Ljava/time/Month;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    move-object/from16 v3, p0

    .local v3, "in":Ljava/io/DataInput;
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Ljava/io/DataInput;->readInt()I

    move-result v18

    move/from16 v4, v18

    .line 259
    .local v4, "data":I
    move/from16 v18, v4

    const/16 v19, 0x1c

    ushr-int/lit8 v18, v18, 0x1c

    invoke-static/range {v18 .. v18}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v18

    move-object/from16 v5, v18

    .line 260
    .local v5, "month":Ljava/time/Month;
    move/from16 v18, v4

    const/high16 v19, 0xfc00000

    and-int v18, v18, v19

    const/16 v19, 0x16

    ushr-int/lit8 v18, v18, 0x16

    const/16 v19, 0x20

    add-int/lit8 v18, v18, -0x20

    move/from16 v6, v18

    .line 261
    .local v6, "dom":I
    move/from16 v18, v4

    const/high16 v19, 0x380000

    and-int v18, v18, v19

    const/16 v19, 0x13

    ushr-int/lit8 v18, v18, 0x13

    move/from16 v7, v18

    .line 262
    .local v7, "dowByte":I
    move/from16 v18, v7

    if-nez v18, :cond_0

    const/16 v18, 0x0

    :goto_0
    move-object/from16 v8, v18

    .line 263
    .local v8, "dow":Ljava/time/DayOfWeek;
    move/from16 v18, v4

    const v19, 0x7c000

    and-int v18, v18, v19

    const/16 v19, 0xe

    ushr-int/lit8 v18, v18, 0xe

    move/from16 v9, v18

    .line 264
    .local v9, "timeByte":I
    invoke-static {}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v18

    move/from16 v19, v4

    const/16 v20, 0x3000

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x3000

    move/from16 v19, v0

    const/16 v20, 0xc

    ushr-int/lit8 v19, v19, 0xc

    aget-object v18, v18, v19

    move-object/from16 v10, v18

    .line 265
    .local v10, "defn":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move/from16 v18, v4

    const/16 v19, 0xff0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff0

    move/from16 v18, v0

    const/16 v19, 0x4

    ushr-int/lit8 v18, v18, 0x4

    move/from16 v11, v18

    .line 266
    .local v11, "stdByte":I
    move/from16 v18, v4

    const/16 v19, 0xc

    and-int/lit8 v18, v18, 0xc

    const/16 v19, 0x2

    ushr-int/lit8 v18, v18, 0x2

    move/from16 v12, v18

    .line 267
    .local v12, "beforeByte":I
    move/from16 v18, v4

    const/16 v19, 0x3

    and-int/lit8 v18, v18, 0x3

    move/from16 v13, v18

    .line 268
    .local v13, "afterByte":I
    move/from16 v18, v9

    const/16 v19, 0x1f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Ljava/io/DataInput;->readInt()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v18

    :goto_1
    move-object/from16 v14, v18

    .line 269
    .local v14, "time":Ljava/time/LocalTime;
    move/from16 v18, v11

    const/16 v19, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Ljava/io/DataInput;->readInt()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v18

    :goto_2
    move-object/from16 v15, v18

    .line 270
    .local v15, "std":Ljava/time/ZoneOffset;
    move/from16 v18, v12

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Ljava/io/DataInput;->readInt()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v18

    :goto_3
    move-object/from16 v16, v18

    .line 271
    .local v16, "before":Ljava/time/ZoneOffset;
    move/from16 v18, v13

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Ljava/io/DataInput;->readInt()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v18

    :goto_4
    move-object/from16 v17, v18

    .line 272
    .local v17, "after":Ljava/time/ZoneOffset;
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v14

    move/from16 v22, v9

    const/16 v23, 0x18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v22, 0x1

    :goto_5
    move-object/from16 v23, v10

    move-object/from16 v24, v15

    move-object/from16 v25, v16

    move-object/from16 v26, v17

    invoke-static/range {v18 .. v26}, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-result-object v18

    move-object/from16 v3, v18

    .end local v3    # "in":Ljava/io/DataInput;
    return-object v3

    .line 262
    .end local v8    # "dow":Ljava/time/DayOfWeek;
    .end local v9    # "timeByte":I
    .end local v10    # "defn":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .end local v11    # "stdByte":I
    .end local v12    # "beforeByte":I
    .end local v13    # "afterByte":I
    .end local v14    # "time":Ljava/time/LocalTime;
    .end local v15    # "std":Ljava/time/ZoneOffset;
    .end local v16    # "before":Ljava/time/ZoneOffset;
    .end local v17    # "after":Ljava/time/ZoneOffset;
    .restart local v3    # "in":Ljava/io/DataInput;
    :cond_0
    move/from16 v18, v7

    invoke-static/range {v18 .. v18}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v18

    goto/16 :goto_0

    .line 268
    .restart local v8    # "dow":Ljava/time/DayOfWeek;
    .restart local v9    # "timeByte":I
    .restart local v10    # "defn":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .restart local v11    # "stdByte":I
    .restart local v12    # "beforeByte":I
    .restart local v13    # "afterByte":I
    :cond_1
    move/from16 v18, v9

    const/16 v19, 0x18

    rem-int/lit8 v18, v18, 0x18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v18

    goto :goto_1

    .line 269
    .restart local v14    # "time":Ljava/time/LocalTime;
    :cond_2
    move/from16 v18, v11

    const/16 v19, 0x80

    add-int/lit8 v18, v18, -0x80

    const/16 v19, 0x384

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x384

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v18

    goto :goto_2

    .line 270
    .restart local v15    # "std":Ljava/time/ZoneOffset;
    :cond_3
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v18

    move/from16 v19, v12

    const/16 v20, 0x708

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x708

    move/from16 v19, v0

    add-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v18

    goto :goto_3

    .line 271
    .restart local v16    # "before":Ljava/time/ZoneOffset;
    :cond_4
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v18

    move/from16 v19, v13

    const/16 v20, 0x708

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x708

    move/from16 v19, v0

    add-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v18

    goto :goto_4

    .line 272
    .restart local v17    # "after":Ljava/time/ZoneOffset;
    :cond_5
    const/16 v22, 0x0

    goto :goto_5
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    new-instance v1, Ljava/time/bp/zone/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/bp/zone/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return-object v0
.end method


# virtual methods
.method public createTransition(I)Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 12

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move v1, p1

    .local v1, "year":I
    move-object v5, v0

    iget-byte v5, v5, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v5, :cond_2

    .line 402
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move v9, v1

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/time/Month;->length(Z)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-byte v8, v8, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v5

    move-object v2, v5

    .line 403
    .local v2, "date":Ljava/time/LocalDate;
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v5, :cond_0

    .line 404
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-static {v6}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v5

    move-object v2, v5

    .line 412
    :cond_0
    :goto_0
    move-object v5, v0

    iget-boolean v5, v5, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v5, :cond_1

    .line 413
    move-object v5, v2

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v2, v5

    .line 415
    :cond_1
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-static {v5, v6}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v3, v5

    .line 416
    .local v3, "localDT":Ljava/time/LocalDateTime;
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v4, v5

    .line 417
    .local v4, "transition":Ljava/time/LocalDateTime;
    new-instance v5, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v4

    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-direct {v6, v7, v8, v9}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v0, v5

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return-object v0

    .line 407
    .end local v2    # "date":Ljava/time/LocalDate;
    .end local v3    # "localDT":Ljava/time/LocalDateTime;
    .end local v4    # "transition":Ljava/time/LocalDateTime;
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    :cond_2
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    move-object v7, v0

    iget-byte v7, v7, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-static {v5, v6, v7}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v5

    move-object v2, v5

    .line 408
    .restart local v2    # "date":Ljava/time/LocalDate;
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v5, :cond_0

    .line 409
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-static {v6}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v5

    move-object v2, v5

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, p1

    .local v1, "otherRule":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 432
    const/4 v3, 0x1

    move v0, v3

    .line 444
    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    :goto_0
    return v0

    .line 434
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    if-eqz v3, :cond_2

    .line 435
    move-object v3, v1

    check-cast v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-object v2, v3

    .line 436
    .local v2, "other":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    move-object v4, v2

    iget-byte v4, v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    .line 438
    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    move-object v4, v2

    iget-boolean v4, v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    .line 440
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 441
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    .line 442
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 444
    .end local v2    # "other":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getDayOfMonthIndicator()I
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, v0

    iget-byte v1, v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return-object v0
.end method

.method public getLocalTime()Ljava/time/LocalTime;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return-object v0
.end method

.method public getMonth()Ljava/time/Month;
    .locals 2

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return-object v0
.end method

.method public getOffsetAfter()Ljava/time/ZoneOffset;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return-object v0
.end method

.method public getOffsetBefore()Ljava/time/ZoneOffset;
    .locals 2

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return-object v0
.end method

.method public getStandardOffset()Ljava/time/ZoneOffset;
    .locals 2

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return-object v0
.end method

.method public getTimeDefinition()Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 2

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v2}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    move-object v3, v0

    iget-boolean v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v2, v3

    const/16 v3, 0xf

    shl-int/lit8 v2, v2, 0xf

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    .line 455
    invoke-virtual {v3}, Ljava/time/Month;->ordinal()I

    move-result v3

    const/16 v4, 0xb

    shl-int/lit8 v3, v3, 0xb

    add-int/2addr v2, v3

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    const/16 v4, 0x20

    add-int/lit8 v3, v3, 0x20

    const/4 v4, 0x5

    shl-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-nez v3, :cond_1

    const/4 v3, 0x7

    .line 456
    :goto_1
    const/4 v4, 0x2

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 457
    .local v1, "hash":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 458
    invoke-virtual {v3}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return v0

    .line 454
    .end local v1    # "hash":I
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 455
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    .line 456
    invoke-virtual {v3}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v3

    goto :goto_1
.end method

.method public isMidnightEndOfDay()Z
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v1, v0

    iget-boolean v1, v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 470
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "TransitionRule["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    .line 471
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->compareTo(Ljava/time/ZoneOffset;)I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "Gap "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 472
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 473
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v2, :cond_3

    .line 474
    move-object v2, v0

    iget-byte v2, v2, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 475
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v3}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on or before last day of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v3}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 484
    :goto_1
    move-object v2, v1

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-boolean v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v3, :cond_4

    const-string v3, "24:00"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", standard offset "

    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 488
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    return-object v0

    .line 471
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    :cond_0
    const-string v3, "Overlap "

    goto/16 :goto_0

    .line 476
    :cond_1
    move-object v2, v0

    iget-byte v2, v2, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v2, :cond_2

    .line 477
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v3}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on or before last day minus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    neg-int v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v3}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1

    .line 479
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v3}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on or after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v3}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto/16 :goto_1

    .line 482
    :cond_3
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v3}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto/16 :goto_1

    .line 484
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v3}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object/from16 v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v12, v0

    iget-boolean v12, v12, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v12, :cond_6

    const v12, 0x15180

    :goto_0
    move v2, v12

    .line 219
    .local v2, "timeSecs":I
    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v12}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v12

    move v3, v12

    .line 220
    .local v3, "stdOffset":I
    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v12}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v12

    move v13, v3

    sub-int/2addr v12, v13

    move v4, v12

    .line 221
    .local v4, "beforeDiff":I
    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v12}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v12

    move v13, v3

    sub-int/2addr v12, v13

    move v5, v12

    .line 222
    .local v5, "afterDiff":I
    move v12, v2

    const/16 v13, 0xe10

    rem-int/lit16 v12, v12, 0xe10

    if-nez v12, :cond_8

    move-object v12, v0

    iget-boolean v12, v12, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v12, :cond_7

    const/16 v12, 0x18

    :goto_1
    move v6, v12

    .line 223
    .local v6, "timeByte":I
    move v12, v3

    const/16 v13, 0x384

    rem-int/lit16 v12, v12, 0x384

    if-nez v12, :cond_9

    move v12, v3

    const/16 v13, 0x384

    div-int/lit16 v12, v12, 0x384

    const/16 v13, 0x80

    add-int/lit16 v12, v12, 0x80

    :goto_2
    move v7, v12

    .line 224
    .local v7, "stdOffsetByte":I
    move v12, v4

    if-eqz v12, :cond_0

    move v12, v4

    const/16 v13, 0x708

    if-eq v12, v13, :cond_0

    move v12, v4

    const/16 v13, 0xe10

    if-ne v12, v13, :cond_a

    :cond_0
    move v12, v4

    const/16 v13, 0x708

    div-int/lit16 v12, v12, 0x708

    :goto_3
    move v8, v12

    .line 225
    .local v8, "beforeByte":I
    move v12, v5

    if-eqz v12, :cond_1

    move v12, v5

    const/16 v13, 0x708

    if-eq v12, v13, :cond_1

    move v12, v5

    const/16 v13, 0xe10

    if-ne v12, v13, :cond_b

    :cond_1
    move v12, v5

    const/16 v13, 0x708

    div-int/lit16 v12, v12, 0x708

    :goto_4
    move v9, v12

    .line 226
    .local v9, "afterByte":I
    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-nez v12, :cond_c

    const/4 v12, 0x0

    :goto_5
    move v10, v12

    .line 227
    .local v10, "dowByte":I
    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v12}, Ljava/time/Month;->getValue()I

    move-result v12

    const/16 v13, 0x1c

    shl-int/lit8 v12, v12, 0x1c

    move-object v13, v0

    iget-byte v13, v13, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dom:B

    const/16 v14, 0x20

    add-int/lit8 v13, v13, 0x20

    const/16 v14, 0x16

    shl-int/lit8 v13, v13, 0x16

    add-int/2addr v12, v13

    move v13, v10

    const/16 v14, 0x13

    shl-int/lit8 v13, v13, 0x13

    add-int/2addr v12, v13

    move v13, v6

    const/16 v14, 0xe

    shl-int/lit8 v13, v13, 0xe

    add-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 231
    invoke-virtual {v13}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v13

    const/16 v14, 0xc

    shl-int/lit8 v13, v13, 0xc

    add-int/2addr v12, v13

    move v13, v7

    const/4 v14, 0x4

    shl-int/lit8 v13, v13, 0x4

    add-int/2addr v12, v13

    move v13, v8

    const/4 v14, 0x2

    shl-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    move v13, v9

    add-int/2addr v12, v13

    move v11, v12

    .line 235
    .local v11, "b":I
    move-object v12, v1

    move v13, v11

    invoke-interface {v12, v13}, Ljava/io/DataOutput;->writeInt(I)V

    .line 236
    move v12, v6

    const/16 v13, 0x1f

    if-ne v12, v13, :cond_2

    .line 237
    move-object v12, v1

    move v13, v2

    invoke-interface {v12, v13}, Ljava/io/DataOutput;->writeInt(I)V

    .line 239
    :cond_2
    move v12, v7

    const/16 v13, 0xff

    if-ne v12, v13, :cond_3

    .line 240
    move-object v12, v1

    move v13, v3

    invoke-interface {v12, v13}, Ljava/io/DataOutput;->writeInt(I)V

    .line 242
    :cond_3
    move v12, v8

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4

    .line 243
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v13}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/io/DataOutput;->writeInt(I)V

    .line 245
    :cond_4
    move v12, v9

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    .line 246
    move-object v12, v1

    move-object v13, v0

    iget-object v13, v13, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v13}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/io/DataOutput;->writeInt(I)V

    .line 248
    :cond_5
    return-void

    .line 218
    .end local v2    # "timeSecs":I
    .end local v3    # "stdOffset":I
    .end local v4    # "beforeDiff":I
    .end local v5    # "afterDiff":I
    .end local v6    # "timeByte":I
    .end local v7    # "stdOffsetByte":I
    .end local v8    # "beforeByte":I
    .end local v9    # "afterByte":I
    .end local v10    # "dowByte":I
    .end local v11    # "b":I
    :cond_6
    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v12}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v12

    goto/16 :goto_0

    .line 222
    .restart local v2    # "timeSecs":I
    .restart local v3    # "stdOffset":I
    .restart local v4    # "beforeDiff":I
    .restart local v5    # "afterDiff":I
    :cond_7
    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v12}, Ljava/time/LocalTime;->getHour()I

    move-result v12

    goto/16 :goto_1

    :cond_8
    const/16 v12, 0x1f

    goto/16 :goto_1

    .line 223
    .restart local v6    # "timeByte":I
    :cond_9
    const/16 v12, 0xff

    goto/16 :goto_2

    .line 224
    .restart local v7    # "stdOffsetByte":I
    :cond_a
    const/4 v12, 0x3

    goto/16 :goto_3

    .line 225
    .restart local v8    # "beforeByte":I
    :cond_b
    const/4 v12, 0x3

    goto/16 :goto_4

    .line 226
    .restart local v9    # "afterByte":I
    :cond_c
    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v12}, Ljava/time/DayOfWeek;->getValue()I

    move-result v12

    goto/16 :goto_5
.end method
