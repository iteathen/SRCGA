.class final Ljava/time/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final DURATION_TYPE:B = 0x1t

.field static final INSTANT_TYPE:B = 0x2t

.field static final LOCAL_DATE_TIME_TYPE:B = 0x4t

.field static final LOCAL_DATE_TYPE:B = 0x3t

.field static final LOCAL_TIME_TYPE:B = 0x5t

.field static final MONTH_DAY_TYPE:B = 0x40t

.field static final OFFSET_DATE_TIME_TYPE:B = 0x45t

.field static final OFFSET_TIME_TYPE:B = 0x42t

.field static final YEAR_MONTH_TYPE:B = 0x44t

.field static final YEAR_TYPE:B = 0x43t

.field static final ZONED_DATE_TIME_TYPE:B = 0x6t

.field static final ZONE_OFFSET_TYPE:B = 0x8t

.field static final ZONE_REGION_TYPE:B = 0x7t

.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljava/time/Ser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljava/time/Ser;
    move v1, p1

    .local v1, "type":B
    move-object v2, p2

    .local v2, "object":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 105
    move-object v3, v0

    move v4, v1

    iput-byte v4, v3, Ljava/time/Ser;->type:B

    .line 106
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/Ser;->object:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method static read(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v2, v0

    invoke-interface {v2}, Ljava/io/DataInput;->readByte()B

    move-result v2

    move v1, v2

    .line 179
    .local v1, "type":B
    move v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Ljava/time/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method private static readInternal(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    move v0, p0

    .local v0, "type":B
    move-object v1, p1

    .local v1, "in":Ljava/io/DataInput;
    move v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 198
    new-instance v2, Ljava/io/StreamCorruptedException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Unknown serialized type"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :sswitch_0
    move-object v2, v1

    invoke-static {v2}, Ljava/time/Duration;->readExternal(Ljava/io/DataInput;)Ljava/time/Duration;

    move-result-object v2

    move-object v0, v2

    .line 196
    .end local v0    # "type":B
    :goto_0
    return-object v0

    .line 185
    .restart local v0    # "type":B
    :sswitch_1
    move-object v2, v1

    invoke-static {v2}, Ljava/time/Instant;->readExternal(Ljava/io/DataInput;)Ljava/time/Instant;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 186
    :sswitch_2
    move-object v2, v1

    invoke-static {v2}, Ljava/time/LocalDate;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 187
    :sswitch_3
    move-object v2, v1

    invoke-static {v2}, Ljava/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 188
    :sswitch_4
    move-object v2, v1

    invoke-static {v2}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 189
    :sswitch_5
    move-object v2, v1

    invoke-static {v2}, Ljava/time/MonthDay;->readExternal(Ljava/io/DataInput;)Ljava/time/MonthDay;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 190
    :sswitch_6
    move-object v2, v1

    invoke-static {v2}, Ljava/time/OffsetDateTime;->readExternal(Ljava/io/DataInput;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 191
    :sswitch_7
    move-object v2, v1

    invoke-static {v2}, Ljava/time/OffsetTime;->readExternal(Ljava/io/DataInput;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 192
    :sswitch_8
    move-object v2, v1

    invoke-static {v2}, Ljava/time/Year;->readExternal(Ljava/io/DataInput;)Ljava/time/Year;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 193
    :sswitch_9
    move-object v2, v1

    invoke-static {v2}, Ljava/time/YearMonth;->readExternal(Ljava/io/DataInput;)Ljava/time/YearMonth;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 194
    :sswitch_a
    move-object v2, v1

    invoke-static {v2}, Ljava/time/ZonedDateTime;->readExternal(Ljava/io/DataInput;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 195
    :sswitch_b
    move-object v2, v1

    invoke-static {v2}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 196
    :sswitch_c
    move-object v2, v1

    invoke-static {v2}, Ljava/time/ZoneRegion;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneId;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_a
        0x7 -> :sswitch_c
        0x8 -> :sswitch_b
        0x40 -> :sswitch_5
        0x42 -> :sswitch_7
        0x43 -> :sswitch_8
        0x44 -> :sswitch_9
        0x45 -> :sswitch_6
    .end sparse-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljava/time/Ser;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Ser;->object:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Ser;
    return-object v0
.end method

.method static writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    move v0, p0

    .local v0, "type":B
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Ljava/io/DataOutput;
    move-object v3, v2

    move v4, v0

    invoke-interface {v3, v4}, Ljava/io/DataOutput;->writeByte(I)V

    .line 121
    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 162
    new-instance v3, Ljava/io/InvalidClassException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Unknown serialized type"

    invoke-direct {v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :sswitch_0
    move-object v3, v1

    check-cast v3, Ljava/time/Duration;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/Duration;->writeExternal(Ljava/io/DataOutput;)V

    .line 124
    .line 164
    :goto_0
    return-void

    .line 126
    :sswitch_1
    move-object v3, v1

    check-cast v3, Ljava/time/Instant;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/Instant;->writeExternal(Ljava/io/DataOutput;)V

    .line 127
    goto :goto_0

    .line 129
    :sswitch_2
    move-object v3, v1

    check-cast v3, Ljava/time/LocalDate;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 130
    goto :goto_0

    .line 132
    :sswitch_3
    move-object v3, v1

    check-cast v3, Ljava/time/LocalDateTime;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 133
    goto :goto_0

    .line 135
    :sswitch_4
    move-object v3, v1

    check-cast v3, Ljava/time/LocalTime;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 136
    goto :goto_0

    .line 138
    :sswitch_5
    move-object v3, v1

    check-cast v3, Ljava/time/MonthDay;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/MonthDay;->writeExternal(Ljava/io/DataOutput;)V

    .line 139
    goto :goto_0

    .line 141
    :sswitch_6
    move-object v3, v1

    check-cast v3, Ljava/time/OffsetDateTime;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/OffsetDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 142
    goto :goto_0

    .line 144
    :sswitch_7
    move-object v3, v1

    check-cast v3, Ljava/time/OffsetTime;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/OffsetTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 145
    goto :goto_0

    .line 147
    :sswitch_8
    move-object v3, v1

    check-cast v3, Ljava/time/YearMonth;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/YearMonth;->writeExternal(Ljava/io/DataOutput;)V

    .line 148
    goto :goto_0

    .line 150
    :sswitch_9
    move-object v3, v1

    check-cast v3, Ljava/time/Year;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/Year;->writeExternal(Ljava/io/DataOutput;)V

    .line 151
    goto :goto_0

    .line 153
    :sswitch_a
    move-object v3, v1

    check-cast v3, Ljava/time/ZoneRegion;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/ZoneRegion;->writeExternal(Ljava/io/DataOutput;)V

    .line 154
    goto :goto_0

    .line 156
    :sswitch_b
    move-object v3, v1

    check-cast v3, Ljava/time/ZoneOffset;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 157
    goto :goto_0

    .line 159
    :sswitch_c
    move-object v3, v1

    check-cast v3, Ljava/time/ZonedDateTime;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/ZonedDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 160
    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_c
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x40 -> :sswitch_5
        0x42 -> :sswitch_7
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x45 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljava/time/Ser;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    iput-byte v3, v2, Ljava/time/Ser;->type:B

    .line 174
    move-object v2, v0

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/Ser;->type:B

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/time/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Ljava/time/Ser;->object:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljava/time/Ser;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v0

    iget-byte v2, v2, Ljava/time/Ser;->type:B

    move-object v3, v0

    iget-object v3, v3, Ljava/time/Ser;->object:Ljava/lang/Object;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljava/time/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 117
    return-void
.end method
