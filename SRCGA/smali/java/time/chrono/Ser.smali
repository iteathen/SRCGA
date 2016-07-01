.class final Ljava/time/chrono/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final CHRONO_LOCALDATETIME_TYPE:B = 0xct

.field static final CHRONO_TYPE:B = 0xbt

.field static final CHRONO_ZONEDDATETIME_TYPE:B = 0xdt

.field static final HIJRAH_DATE_TYPE:B = 0x3t

.field static final HIJRAH_ERA_TYPE:B = 0x4t

.field static final JAPANESE_DATE_TYPE:B = 0x1t

.field static final JAPANESE_ERA_TYPE:B = 0x2t

.field static final MINGUO_DATE_TYPE:B = 0x5t

.field static final MINGUO_ERA_TYPE:B = 0x6t

.field static final THAIBUDDHIST_DATE_TYPE:B = 0x7t

.field static final THAIBUDDHIST_ERA_TYPE:B = 0x8t

.field private static final serialVersionUID:J = 0x6d0b833274ca0096L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/Ser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/Ser;
    move v1, p1

    .local v1, "type":B
    move-object v2, p2

    .local v2, "object":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object v3, v0

    move v4, v1

    iput-byte v4, v3, Ljava/time/chrono/Ser;->type:B

    .line 104
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method static read(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    invoke-interface {v2}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    move v1, v2

    .line 173
    .local v1, "type":B
    move v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Ljava/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "in":Ljava/io/ObjectInput;
    return-object v0
.end method

.method private static readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    move v0, p0

    .local v0, "type":B
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 190
    :pswitch_0
    new-instance v2, Ljava/io/StreamCorruptedException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Unknown serialized type"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :pswitch_1
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/JapaneseDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    .line 188
    .end local v0    # "type":B
    :goto_0
    return-object v0

    .line 179
    .restart local v0    # "type":B
    :pswitch_2
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/JapaneseEra;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseEra;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 180
    :pswitch_3
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/HijrahDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 181
    :pswitch_4
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/HijrahEra;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/HijrahEra;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 182
    :pswitch_5
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/MinguoDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 183
    :pswitch_6
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/MinguoEra;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/MinguoEra;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 184
    :pswitch_7
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/ThaiBuddhistDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 185
    :pswitch_8
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/ThaiBuddhistEra;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 186
    :pswitch_9
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/AbstractChronology;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 187
    :pswitch_a
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 188
    :pswitch_b
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/Ser;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/Ser;
    return-object v0
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    move v0, p0

    .local v0, "type":B
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "out":Ljava/io/ObjectOutput;
    move-object v3, v2

    move v4, v0

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 120
    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 155
    :pswitch_0
    new-instance v3, Ljava/io/InvalidClassException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Unknown serialized type"

    invoke-direct {v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :pswitch_1
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/JapaneseDate;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/JapaneseDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 123
    .line 157
    :goto_0
    return-void

    .line 125
    :pswitch_2
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/JapaneseEra;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/JapaneseEra;->writeExternal(Ljava/io/DataOutput;)V

    .line 126
    goto :goto_0

    .line 128
    :pswitch_3
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/HijrahDate;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/HijrahDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 129
    goto :goto_0

    .line 131
    :pswitch_4
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/HijrahEra;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/HijrahEra;->writeExternal(Ljava/io/DataOutput;)V

    .line 132
    goto :goto_0

    .line 134
    :pswitch_5
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/MinguoDate;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/MinguoDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 135
    goto :goto_0

    .line 137
    :pswitch_6
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/MinguoEra;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/MinguoEra;->writeExternal(Ljava/io/DataOutput;)V

    .line 138
    goto :goto_0

    .line 140
    :pswitch_7
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ThaiBuddhistDate;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/ThaiBuddhistDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 141
    goto :goto_0

    .line 143
    :pswitch_8
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ThaiBuddhistEra;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/ThaiBuddhistEra;->writeExternal(Ljava/io/DataOutput;)V

    .line 144
    goto :goto_0

    .line 146
    :pswitch_9
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/AbstractChronology;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronology;->writeExternal(Ljava/io/DataOutput;)V

    .line 147
    goto :goto_0

    .line 149
    :pswitch_a
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 150
    goto :goto_0

    .line 152
    :pswitch_b
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 153
    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/Ser;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    iput-byte v3, v2, Ljava/time/chrono/Ser;->type:B

    .line 168
    move-object v2, v0

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/chrono/Ser;->type:B

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    .line 169
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
    .line 115
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/Ser;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v0

    iget-byte v2, v2, Ljava/time/chrono/Ser;->type:B

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljava/time/chrono/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    .line 116
    return-void
.end method
